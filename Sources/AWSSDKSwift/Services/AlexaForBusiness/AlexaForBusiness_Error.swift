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

/// Error enum for AlexaForBusiness
public enum AlexaForBusinessErrorType: AWSErrorType {
    case alreadyExistsException(message: String?)
    case concurrentModificationException(message: String?)
    case deviceNotRegisteredException(message: String?)
    case invalidCertificateAuthorityException(message: String?)
    case invalidDeviceException(message: String?)
    case invalidSecretsManagerResourceException(message: String?)
    case invalidServiceLinkedRoleStateException(message: String?)
    case invalidUserStatusException(message: String?)
    case limitExceededException(message: String?)
    case nameInUseException(message: String?)
    case notFoundException(message: String?)
    case resourceAssociatedException(message: String?)
    case resourceInUseException(message: String?)
    case skillNotLinkedException(message: String?)
    case unauthorizedException(message: String?)
}

extension AlexaForBusinessErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "AlreadyExistsException":
            self = .alreadyExistsException(message: message)
        case "ConcurrentModificationException":
            self = .concurrentModificationException(message: message)
        case "DeviceNotRegisteredException":
            self = .deviceNotRegisteredException(message: message)
        case "InvalidCertificateAuthorityException":
            self = .invalidCertificateAuthorityException(message: message)
        case "InvalidDeviceException":
            self = .invalidDeviceException(message: message)
        case "InvalidSecretsManagerResourceException":
            self = .invalidSecretsManagerResourceException(message: message)
        case "InvalidServiceLinkedRoleStateException":
            self = .invalidServiceLinkedRoleStateException(message: message)
        case "InvalidUserStatusException":
            self = .invalidUserStatusException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "NameInUseException":
            self = .nameInUseException(message: message)
        case "NotFoundException":
            self = .notFoundException(message: message)
        case "ResourceAssociatedException":
            self = .resourceAssociatedException(message: message)
        case "ResourceInUseException":
            self = .resourceInUseException(message: message)
        case "SkillNotLinkedException":
            self = .skillNotLinkedException(message: message)
        case "UnauthorizedException":
            self = .unauthorizedException(message: message)
        default:
            return nil
        }
    }
}

extension AlexaForBusinessErrorType : CustomStringConvertible {
    public var description : String {
        switch self {
        case .alreadyExistsException(let message):
            return "AlreadyExistsException: \(message ?? "")"
        case .concurrentModificationException(let message):
            return "ConcurrentModificationException: \(message ?? "")"
        case .deviceNotRegisteredException(let message):
            return "DeviceNotRegisteredException: \(message ?? "")"
        case .invalidCertificateAuthorityException(let message):
            return "InvalidCertificateAuthorityException: \(message ?? "")"
        case .invalidDeviceException(let message):
            return "InvalidDeviceException: \(message ?? "")"
        case .invalidSecretsManagerResourceException(let message):
            return "InvalidSecretsManagerResourceException: \(message ?? "")"
        case .invalidServiceLinkedRoleStateException(let message):
            return "InvalidServiceLinkedRoleStateException: \(message ?? "")"
        case .invalidUserStatusException(let message):
            return "InvalidUserStatusException: \(message ?? "")"
        case .limitExceededException(let message):
            return "LimitExceededException: \(message ?? "")"
        case .nameInUseException(let message):
            return "NameInUseException: \(message ?? "")"
        case .notFoundException(let message):
            return "NotFoundException: \(message ?? "")"
        case .resourceAssociatedException(let message):
            return "ResourceAssociatedException: \(message ?? "")"
        case .resourceInUseException(let message):
            return "ResourceInUseException: \(message ?? "")"
        case .skillNotLinkedException(let message):
            return "SkillNotLinkedException: \(message ?? "")"
        case .unauthorizedException(let message):
            return "UnauthorizedException: \(message ?? "")"
        }
    }
}
