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

/// Error enum for GuardDuty
public enum GuardDutyErrorType: AWSErrorType {
    case badRequestException(message: String?)
    case internalServerErrorException(message: String?)
}

extension GuardDutyErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "BadRequestException":
            self = .badRequestException(message: message)
        case "InternalServerErrorException":
            self = .internalServerErrorException(message: message)
        default:
            return nil
        }
    }
}

extension GuardDutyErrorType : CustomStringConvertible {
    public var description : String {
        switch self {
        case .badRequestException(let message):
            return "BadRequestException: \(message ?? "")"
        case .internalServerErrorException(let message):
            return "InternalServerErrorException: \(message ?? "")"
        }
    }
}
