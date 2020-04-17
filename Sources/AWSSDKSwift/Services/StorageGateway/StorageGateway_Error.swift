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

/// Error enum for StorageGateway
public enum StorageGatewayErrorType: AWSErrorType {
    case internalServerError(message: String?)
    case invalidGatewayRequestException(message: String?)
    case serviceUnavailableError(message: String?)
}

extension StorageGatewayErrorType {
    public init?(errorCode: String, message: String?) {
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "InternalServerError":
            self = .internalServerError(message: message)
        case "InvalidGatewayRequestException":
            self = .invalidGatewayRequestException(message: message)
        case "ServiceUnavailableError":
            self = .serviceUnavailableError(message: message)
        default:
            return nil
        }
    }
}

extension StorageGatewayErrorType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .internalServerError(let message):
            return "InternalServerError: \(message ?? "")"
        case .invalidGatewayRequestException(let message):
            return "InvalidGatewayRequestException: \(message ?? "")"
        case .serviceUnavailableError(let message):
            return "ServiceUnavailableError: \(message ?? "")"
        }
    }
}
