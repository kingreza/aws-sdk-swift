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

/// Error enum for Textract
public enum TextractErrorType: AWSErrorType {
    case accessDeniedException(message: String?)
    case badDocumentException(message: String?)
    case documentTooLargeException(message: String?)
    case humanLoopQuotaExceededException(message: String?)
    case idempotentParameterMismatchException(message: String?)
    case internalServerError(message: String?)
    case invalidJobIdException(message: String?)
    case invalidParameterException(message: String?)
    case invalidS3ObjectException(message: String?)
    case limitExceededException(message: String?)
    case provisionedThroughputExceededException(message: String?)
    case throttlingException(message: String?)
    case unsupportedDocumentException(message: String?)
}

extension TextractErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "AccessDeniedException":
            self = .accessDeniedException(message: message)
        case "BadDocumentException":
            self = .badDocumentException(message: message)
        case "DocumentTooLargeException":
            self = .documentTooLargeException(message: message)
        case "HumanLoopQuotaExceededException":
            self = .humanLoopQuotaExceededException(message: message)
        case "IdempotentParameterMismatchException":
            self = .idempotentParameterMismatchException(message: message)
        case "InternalServerError":
            self = .internalServerError(message: message)
        case "InvalidJobIdException":
            self = .invalidJobIdException(message: message)
        case "InvalidParameterException":
            self = .invalidParameterException(message: message)
        case "InvalidS3ObjectException":
            self = .invalidS3ObjectException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "ProvisionedThroughputExceededException":
            self = .provisionedThroughputExceededException(message: message)
        case "ThrottlingException":
            self = .throttlingException(message: message)
        case "UnsupportedDocumentException":
            self = .unsupportedDocumentException(message: message)
        default:
            return nil
        }
    }
}

extension TextractErrorType : CustomStringConvertible {
    public var description : String {
        switch self {
        case .accessDeniedException(let message):
            return "AccessDeniedException: \(message ?? "")"
        case .badDocumentException(let message):
            return "BadDocumentException: \(message ?? "")"
        case .documentTooLargeException(let message):
            return "DocumentTooLargeException: \(message ?? "")"
        case .humanLoopQuotaExceededException(let message):
            return "HumanLoopQuotaExceededException: \(message ?? "")"
        case .idempotentParameterMismatchException(let message):
            return "IdempotentParameterMismatchException: \(message ?? "")"
        case .internalServerError(let message):
            return "InternalServerError: \(message ?? "")"
        case .invalidJobIdException(let message):
            return "InvalidJobIdException: \(message ?? "")"
        case .invalidParameterException(let message):
            return "InvalidParameterException: \(message ?? "")"
        case .invalidS3ObjectException(let message):
            return "InvalidS3ObjectException: \(message ?? "")"
        case .limitExceededException(let message):
            return "LimitExceededException: \(message ?? "")"
        case .provisionedThroughputExceededException(let message):
            return "ProvisionedThroughputExceededException: \(message ?? "")"
        case .throttlingException(let message):
            return "ThrottlingException: \(message ?? "")"
        case .unsupportedDocumentException(let message):
            return "UnsupportedDocumentException: \(message ?? "")"
        }
    }
}
