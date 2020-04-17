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

/// Error enum for CodeBuild
public enum CodeBuildErrorType: AWSErrorType {
    case accountLimitExceededException(message: String?)
    case invalidInputException(message: String?)
    case oAuthProviderException(message: String?)
    case resourceAlreadyExistsException(message: String?)
    case resourceNotFoundException(message: String?)
}

extension CodeBuildErrorType {
    public init?(errorCode: String, message: String?) {
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "AccountLimitExceededException":
            self = .accountLimitExceededException(message: message)
        case "InvalidInputException":
            self = .invalidInputException(message: message)
        case "OAuthProviderException":
            self = .oAuthProviderException(message: message)
        case "ResourceAlreadyExistsException":
            self = .resourceAlreadyExistsException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        default:
            return nil
        }
    }
}

extension CodeBuildErrorType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .accountLimitExceededException(let message):
            return "AccountLimitExceededException: \(message ?? "")"
        case .invalidInputException(let message):
            return "InvalidInputException: \(message ?? "")"
        case .oAuthProviderException(let message):
            return "OAuthProviderException: \(message ?? "")"
        case .resourceAlreadyExistsException(let message):
            return "ResourceAlreadyExistsException: \(message ?? "")"
        case .resourceNotFoundException(let message):
            return "ResourceNotFoundException: \(message ?? "")"
        }
    }
}
