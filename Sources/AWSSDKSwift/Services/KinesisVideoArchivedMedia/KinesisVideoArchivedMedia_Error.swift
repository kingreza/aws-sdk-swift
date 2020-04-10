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

import AWSSDKSwiftCore

/// Error enum for KinesisVideoArchivedMedia
public enum KinesisVideoArchivedMediaErrorType: AWSErrorType {
    case clientLimitExceededException(message: String?)
    case invalidArgumentException(message: String?)
    case invalidCodecPrivateDataException(message: String?)
    case missingCodecPrivateDataException(message: String?)
    case noDataRetentionException(message: String?)
    case notAuthorizedException(message: String?)
    case resourceNotFoundException(message: String?)
    case unsupportedStreamMediaTypeException(message: String?)
}

extension KinesisVideoArchivedMediaErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "ClientLimitExceededException":
            self = .clientLimitExceededException(message: message)
        case "InvalidArgumentException":
            self = .invalidArgumentException(message: message)
        case "InvalidCodecPrivateDataException":
            self = .invalidCodecPrivateDataException(message: message)
        case "MissingCodecPrivateDataException":
            self = .missingCodecPrivateDataException(message: message)
        case "NoDataRetentionException":
            self = .noDataRetentionException(message: message)
        case "NotAuthorizedException":
            self = .notAuthorizedException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "UnsupportedStreamMediaTypeException":
            self = .unsupportedStreamMediaTypeException(message: message)
        default:
            return nil
        }
    }
}

extension KinesisVideoArchivedMediaErrorType : CustomStringConvertible {
    public var description : String {
        switch self {
        case .clientLimitExceededException(let message):
            return "ClientLimitExceededException: \(message ?? "")"
        case .invalidArgumentException(let message):
            return "InvalidArgumentException: \(message ?? "")"
        case .invalidCodecPrivateDataException(let message):
            return "InvalidCodecPrivateDataException: \(message ?? "")"
        case .missingCodecPrivateDataException(let message):
            return "MissingCodecPrivateDataException: \(message ?? "")"
        case .noDataRetentionException(let message):
            return "NoDataRetentionException: \(message ?? "")"
        case .notAuthorizedException(let message):
            return "NotAuthorizedException: \(message ?? "")"
        case .resourceNotFoundException(let message):
            return "ResourceNotFoundException: \(message ?? "")"
        case .unsupportedStreamMediaTypeException(let message):
            return "UnsupportedStreamMediaTypeException: \(message ?? "")"
        }
    }
}
