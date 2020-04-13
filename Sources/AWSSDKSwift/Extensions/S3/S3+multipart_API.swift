//===----------------------------------------------------------------------===//
//
// This source file is part of the AWSSDKSwift open source project
//
// Copyright (c) 2017-2020 the AWSSDKSwift project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of AWSSDKSwift project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

//
//  Created by Adam Fowler, Jonathan McAllister on 2019/10/20.
//
//
import AWSSDKSwiftCore
import NIO
import struct Foundation.Data
import class Foundation.FileHandle
import class Foundation.FileManager
import struct Foundation.URL

//MARK: Multipart

public extension S3ErrorType {
    enum multipart : Error {
        case noUploadId
        case downloadEmpty(message: String)
        case failedToOpen(file: String)
        case failedToWrite(file: String)
        case failedToRead(file: String)
    }
}

public extension S3 {

    /// Multipart download of a file from S3.
    ///
    /// - parameters:
    ///     - input: The GetObjectRequest shape that contains the details of the object request.
    ///     - partSize: Size of each part to be downloaded
    ///     - on: an EventLoop to process each downloaded part on
    ///     - outputStream: Function to be called for each downloaded part. Called with data block and file size
    /// - returns: An EventLoopFuture that will receive the complete file size once the multipart download has finished.
    func multipartDownload(_ input: GetObjectRequest, partSize: Int = 5*1024*1024, on eventLoop: EventLoop, outputStream: @escaping (Data, Int64) -> EventLoopFuture<Void>) -> EventLoopFuture<Int64> {

        let promise = eventLoop.makePromise(of: Int64.self)

        // function downloading part of a file
        func multipartDownloadPart(fileSize: Int64, offset: Int64, prevPartSave: EventLoopFuture<Void>) {
            // have we downloaded everything
            guard fileSize > offset else {
                prevPartSave.whenSuccess {
                    return promise.succeed(fileSize)
                }
                prevPartSave.whenFailure { error in
                    return promise.fail(error)
                }
                return
            }

            let range = "bytes=\(offset)-\(offset + Int64(partSize - 1))"
            let getRequest = S3.GetObjectRequest(
                bucket: input.bucket,
                key: input.key,
                range: range,
                sSECustomerAlgorithm: input.sSECustomerAlgorithm,
                sSECustomerKey: input.sSECustomerKey,
                sSECustomerKeyMD5: input.sSECustomerKeyMD5,
                versionId: input.versionId
            )
            let future = getObject(getRequest).and(prevPartSave)
            future.whenSuccess { (output, _) in
                // should never happen
                guard let body = output.body else {
                    return promise.fail(S3ErrorType.multipart.downloadEmpty(message: "Body is unexpectedly nil"))
                }
                guard let length = output.contentLength, length > 0 else {
                    return promise.fail(S3ErrorType.multipart.downloadEmpty(message: "Content length is unexpectedly zero"))
                }

                let newOffset = offset + Int64(partSize)
                multipartDownloadPart(fileSize: fileSize, offset: newOffset, prevPartSave: outputStream(body, fileSize))
            }
            future.whenFailure { error in
                promise.fail(error)
            }
        }

        // get object size before downloading
        let headRequest = S3.HeadObjectRequest(
            bucket: input.bucket,
            ifMatch: input.ifMatch,
            ifModifiedSince: input.ifModifiedSince,
            ifNoneMatch: input.ifNoneMatch,
            ifUnmodifiedSince: input.ifUnmodifiedSince,
            key: input.key,
            requestPayer: input.requestPayer,
            sSECustomerAlgorithm: input.sSECustomerAlgorithm,
            sSECustomerKey: input.sSECustomerKey,
            sSECustomerKeyMD5: input.sSECustomerKeyMD5,
            versionId: input.versionId
        )
        let result = headObject(headRequest)
            .map { (object)->Void in
                guard let contentLength = object.contentLength else {
                    return promise.fail(S3ErrorType.multipart.downloadEmpty(message: "Content length is unexpectedly zero"))
                }
                // download file
                multipartDownloadPart(fileSize: contentLength, offset: 0, prevPartSave: eventLoop.makeSucceededFuture(()))
        }
        result.whenFailure { error in
            promise.fail(error)
        }
        return promise.futureResult
    }

    /// Multipart download of a file from S3.
    ///
    /// - parameters:
    ///     - input: The GetObjectRequest shape that contains the details of the object request.
    ///     - partSize: Size of each part to be downloaded
    ///     - filename: Filename to save download to
    ///     - on: EventLoop to process downloaded parts, if nil an eventLoop is taken from the clients eventLoopGroup
    ///     - progress: Callback that returns the progress of the download. It is called after each part is downloaded with a value between 0.0 and 1.0 indicating how far the download is complete (1.0 meaning finished).
    /// - returns: An EventLoopFuture that will receive the complete file size once the multipart download has finished.
    func multipartDownload(_ input: GetObjectRequest, partSize: Int = 5*1024*1024, filename: String, on eventLoop: EventLoop? = nil, progress: @escaping (Double) throws -> () = { _ in }) -> EventLoopFuture<Int64> {
        let eventLoop = eventLoop ?? self.client.eventLoopGroup.next()

        return eventLoop.submit {  () -> Foundation.FileHandle in
            FileManager.default.createFile(atPath: filename, contents: nil)
            return try FileHandle(forWritingTo: URL(fileURLWithPath: filename))
        }.flatMap { (fileHandle) -> EventLoopFuture<Int64> in
            var progressValue : Int64 = 0

            let download = self.multipartDownload(
                input,
                partSize: partSize,
                on: eventLoop) {  data, fileSize in
                    return eventLoop.submit {
                        fileHandle.write(data)
                        progressValue += Int64(data.count)
                        try progress(Double(progressValue) / Double(fileSize))
                    }
            }

            download.whenComplete { _ in
                fileHandle.closeFile()
            }
            return download
        }
    }

    /// Multipart upload of file to S3.
    ///
    /// - parameters:
    ///     - input: The CreateMultipartUploadRequest structure that contains the details about the upload
    ///     - on: an EventLoop to process each part to upload
    ///     - inputStream: The function supplying the data parts to the multipartUpload. Each parts must be at least 5MB in size expect the last one which has no size limit.
    /// - returns: An EventLoopFuture that will receive a CompleteMultipartUploadOutput once the multipart upload has finished.
    func multipartUpload(_ input: CreateMultipartUploadRequest, on eventLoop: EventLoop, inputStream: @escaping () -> EventLoopFuture<Data?>) -> EventLoopFuture<CompleteMultipartUploadOutput> {

        // initialize multipart upload
        let result = createMultipartUpload(input).flatMap { upload -> EventLoopFuture<CompleteMultipartUploadOutput> in
            guard let uploadId = upload.uploadId else {
                return eventLoop.makeFailedFuture(S3ErrorType.multipart.noUploadId)
            }
            // upload all the parts
            return self.multipartUploadParts(input, uploadId: uploadId, on: eventLoop, inputStream: inputStream)
                .flatMap { parts -> EventLoopFuture<CompleteMultipartUploadOutput> in
                    let request = S3.CompleteMultipartUploadRequest(
                        bucket: input.bucket,
                        key:input.key,
                        multipartUpload: S3.CompletedMultipartUpload(parts:parts),
                        requestPayer: input.requestPayer,
                        uploadId: uploadId
                    )
                    return self.completeMultipartUpload(request)
                }
                .flatMapErrorThrowing { error in
                    // if failure then abort the multipart upload
                    let request = S3.AbortMultipartUploadRequest(bucket: input.bucket, key: input.key, requestPayer: input.requestPayer, uploadId: uploadId)
                    _ = self.abortMultipartUpload(request)
                    throw error
            }
        }
        return result
    }

    /// Multipart upload of file to S3.
    ///
    /// - parameters:
    ///     - input: The CreateMultipartUploadRequest structure that contains the details about the upload
    ///     - partSize: Size of each part to upload. This has to be at least 5MB
    ///     - filename: Name of file to upload
    ///     - on: EventLoop to process parts for upload, if nil an eventLoop is taken from the clients eventLoopGroup
    ///     - progress: Callback that returns the progress of the upload. It is called after each part is uploaded with a value between 0.0 and 1.0 indicating how far the upload is complete (1.0 meaning finished).
    /// - returns: An EventLoopFuture that will receive a CompleteMultipartUploadOutput once the multipart upload has finished.
    func multipartUpload(_ input: CreateMultipartUploadRequest, partSize: Int = 5*1024*1024, filename: String, on eventLoop: EventLoop? = nil, progress: @escaping (Double) throws->() = { _ in }) -> EventLoopFuture<CompleteMultipartUploadOutput> {
        let eventLoop = eventLoop ?? self.client.eventLoopGroup.next()
        var fileSize : UInt64 = 0
        return eventLoop.submit {  () -> FileHandle in
            fileSize = try FileManager.default.attributesOfItem(atPath: filename)[.size] as? UInt64 ?? UInt64.max
            return try FileHandle(forReadingFrom: URL(fileURLWithPath: filename))
        }.flatMap { (fileHandle) -> EventLoopFuture<CompleteMultipartUploadOutput> in
            var progressAmount : Int64 = 0

            let upload = self.multipartUpload(
                input,
                on: eventLoop) {
                    return eventLoop.submit {
                        try progress(Double(progressAmount) / Double(fileSize))
                        let data = fileHandle.readData(ofLength: partSize)
                        progressAmount += Int64(data.count)
                        return data
                    }
            }

            upload.whenComplete { _ in
                fileHandle.closeFile()
            }
            return upload
        }
    }
}


extension S3 {
    /// used internally in multipartUpload, loads all the parts once the multipart upload has been initiated
    func multipartUploadParts(_ input: CreateMultipartUploadRequest, uploadId: String, on eventLoop: EventLoop, inputStream: @escaping () -> EventLoopFuture<Data?>) -> EventLoopFuture<[S3.CompletedPart]> {
        let promise = eventLoop.makePromise(of: [S3.CompletedPart].self)
        var completedParts: [S3.CompletedPart] = []

        // function uploading part of a file and queueing up upload of the next part
        func multipartUploadPart(partNumber: Int, uploadId: String, body: Data) {
            let request = S3.UploadPartRequest(
                body: .data(body),
                bucket: input.bucket,
                contentLength: Int64(body.count),
                key: input.key,
                partNumber: partNumber,
                requestPayer: input.requestPayer,
                sSECustomerAlgorithm: input.sSECustomerAlgorithm,
                sSECustomerKey: input.sSECustomerKey,
                sSECustomerKeyMD5: input.sSECustomerKeyMD5,
                uploadId: uploadId
            )
            // request upload future
            let uploadResult = self.uploadPart(request).map { output -> [S3.CompletedPart] in
                let part = S3.CompletedPart(eTag: output.eTag, partNumber: partNumber)
                completedParts.append(part)
                return completedParts
            }

            // load data EventLoopFuture
            let result = inputStream()
                .and(uploadResult)
                // upload data
                .map { (data, parts) -> Void in
                    guard let data = data, data.count > 0 else {
                        return promise.succeed(parts)
                    }
                    multipartUploadPart(partNumber: partNumber+1, uploadId: uploadId, body: data)
            }
            result.whenFailure { error in
                promise.fail(error)
            }
        }

        // read first block and initiate first upload with result
        let result = inputStream().map { (data) -> Void in
            guard let data = data, data.count > 0 else {
                return promise.succeed([])
            }
            // Multipart uploads part numbers start at 1 not 0
            multipartUploadPart(partNumber: 1, uploadId: uploadId, body: data)
        }
        result.whenFailure { error in
            promise.fail(error)
        }
        return promise.futureResult
    }
}
