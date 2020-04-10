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

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore
import Foundation
import NIO

/**
Client object for interacting with AWS ImportExport service.

AWS Import/Export Service AWS Import/Export accelerates transferring large amounts of data between the AWS cloud and portable storage devices that you mail to us. AWS Import/Export transfers data directly onto and off of your storage devices using Amazon's high-speed internal network and bypassing the Internet. For large data sets, AWS Import/Export is often faster than Internet transfer and more cost effective than upgrading your connectivity.
*/
public struct ImportExport {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the ImportExport client
    /// - parameters:
    ///     - accessKeyId: Public access key provided by AWS
    ///     - secretAccessKey: Private access key provided by AWS
    ///     - sessionToken: Token provided by STS.AssumeRole() which allows access to another AWS account
    ///     - region: Region of server you want to communicate with
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - middlewares: Array of middlewares to apply to requests and responses
    ///     - eventLoopGroupProvider: EventLoopGroup to use. Use `useAWSClientShared` if the client shall manage its own EventLoopGroup.
    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, sessionToken: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = [], eventLoopGroupProvider: AWSClient.EventLoopGroupProvider = .useAWSClientShared) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            service: "importexport",
            serviceProtocol: ServiceProtocol(type: .query),
            apiVersion: "2010-06-01",
            endpoint: endpoint,
            serviceEndpoints: ["aws-global": "importexport.amazonaws.com"],
            partitionEndpoint: "aws-global",
            middlewares: middlewares,
            possibleErrorTypes: [ImportExportErrorType.self],
            eventLoopGroupProvider: eventLoopGroupProvider
        )
    }
    
    //MARK: API Calls

    ///  This operation cancels a specified job. Only the job owner can cancel it. The operation fails if the job has already started or is complete.
    public func cancelJob(_ input: CancelJobInput) -> EventLoopFuture<CancelJobOutput> {
        return client.send(operation: "CancelJob", path: "/?Operation=CancelJob", httpMethod: "POST", input: input)
    }

    ///  This operation initiates the process of scheduling an upload or download of your data. You include in the request a manifest that describes the data transfer specifics. The response to the request includes a job ID, which you can use in other operations, a signature that you use to identify your storage device, and the address where you should ship your storage device.
    public func createJob(_ input: CreateJobInput) -> EventLoopFuture<CreateJobOutput> {
        return client.send(operation: "CreateJob", path: "/?Operation=CreateJob", httpMethod: "POST", input: input)
    }

    ///  This operation generates a pre-paid UPS shipping label that you will use to ship your device to AWS for processing.
    public func getShippingLabel(_ input: GetShippingLabelInput) -> EventLoopFuture<GetShippingLabelOutput> {
        return client.send(operation: "GetShippingLabel", path: "/?Operation=GetShippingLabel", httpMethod: "POST", input: input)
    }

    ///  This operation returns information about a job, including where the job is in the processing pipeline, the status of the results, and the signature value associated with the job. You can only return information about jobs you own.
    public func getStatus(_ input: GetStatusInput) -> EventLoopFuture<GetStatusOutput> {
        return client.send(operation: "GetStatus", path: "/?Operation=GetStatus", httpMethod: "POST", input: input)
    }

    ///  This operation returns the jobs associated with the requester. AWS Import/Export lists the jobs in reverse chronological order based on the date of creation. For example if Job Test1 was created 2009Dec30 and Test2 was created 2010Feb05, the ListJobs operation would return Test2 followed by Test1.
    public func listJobs(_ input: ListJobsInput) -> EventLoopFuture<ListJobsOutput> {
        return client.send(operation: "ListJobs", path: "/?Operation=ListJobs", httpMethod: "POST", input: input)
    }

    ///  You use this operation to change the parameters specified in the original manifest file by supplying a new manifest file. The manifest file attached to this request replaces the original manifest file. You can only use the operation after a CreateJob request but before the data transfer starts and you can only use it on jobs you own.
    public func updateJob(_ input: UpdateJobInput) -> EventLoopFuture<UpdateJobOutput> {
        return client.send(operation: "UpdateJob", path: "/?Operation=UpdateJob", httpMethod: "POST", input: input)
    }
}
