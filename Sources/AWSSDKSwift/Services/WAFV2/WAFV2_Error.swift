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

/// Error enum for WAFV2
public enum WAFV2ErrorType: AWSErrorType {
    case wAFAssociatedItemException(message: String?)
    case wAFDuplicateItemException(message: String?)
    case wAFInternalErrorException(message: String?)
    case wAFInvalidOperationException(message: String?)
    case wAFInvalidParameterException(message: String?)
    case wAFInvalidPermissionPolicyException(message: String?)
    case wAFInvalidResourceException(message: String?)
    case wAFLimitsExceededException(message: String?)
    case wAFNonexistentItemException(message: String?)
    case wAFOptimisticLockException(message: String?)
    case wAFServiceLinkedRoleErrorException(message: String?)
    case wAFSubscriptionNotFoundException(message: String?)
    case wAFTagOperationException(message: String?)
    case wAFTagOperationInternalErrorException(message: String?)
    case wAFUnavailableEntityException(message: String?)
}

extension WAFV2ErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "WAFAssociatedItemException":
            self = .wAFAssociatedItemException(message: message)
        case "WAFDuplicateItemException":
            self = .wAFDuplicateItemException(message: message)
        case "WAFInternalErrorException":
            self = .wAFInternalErrorException(message: message)
        case "WAFInvalidOperationException":
            self = .wAFInvalidOperationException(message: message)
        case "WAFInvalidParameterException":
            self = .wAFInvalidParameterException(message: message)
        case "WAFInvalidPermissionPolicyException":
            self = .wAFInvalidPermissionPolicyException(message: message)
        case "WAFInvalidResourceException":
            self = .wAFInvalidResourceException(message: message)
        case "WAFLimitsExceededException":
            self = .wAFLimitsExceededException(message: message)
        case "WAFNonexistentItemException":
            self = .wAFNonexistentItemException(message: message)
        case "WAFOptimisticLockException":
            self = .wAFOptimisticLockException(message: message)
        case "WAFServiceLinkedRoleErrorException":
            self = .wAFServiceLinkedRoleErrorException(message: message)
        case "WAFSubscriptionNotFoundException":
            self = .wAFSubscriptionNotFoundException(message: message)
        case "WAFTagOperationException":
            self = .wAFTagOperationException(message: message)
        case "WAFTagOperationInternalErrorException":
            self = .wAFTagOperationInternalErrorException(message: message)
        case "WAFUnavailableEntityException":
            self = .wAFUnavailableEntityException(message: message)
        default:
            return nil
        }
    }
}

extension WAFV2ErrorType : CustomStringConvertible {
    public var description : String {
        switch self {
        case .wAFAssociatedItemException(let message):
            return "WAFAssociatedItemException: \(message ?? "")"
        case .wAFDuplicateItemException(let message):
            return "WAFDuplicateItemException: \(message ?? "")"
        case .wAFInternalErrorException(let message):
            return "WAFInternalErrorException: \(message ?? "")"
        case .wAFInvalidOperationException(let message):
            return "WAFInvalidOperationException: \(message ?? "")"
        case .wAFInvalidParameterException(let message):
            return "WAFInvalidParameterException: \(message ?? "")"
        case .wAFInvalidPermissionPolicyException(let message):
            return "WAFInvalidPermissionPolicyException: \(message ?? "")"
        case .wAFInvalidResourceException(let message):
            return "WAFInvalidResourceException: \(message ?? "")"
        case .wAFLimitsExceededException(let message):
            return "WAFLimitsExceededException: \(message ?? "")"
        case .wAFNonexistentItemException(let message):
            return "WAFNonexistentItemException: \(message ?? "")"
        case .wAFOptimisticLockException(let message):
            return "WAFOptimisticLockException: \(message ?? "")"
        case .wAFServiceLinkedRoleErrorException(let message):
            return "WAFServiceLinkedRoleErrorException: \(message ?? "")"
        case .wAFSubscriptionNotFoundException(let message):
            return "WAFSubscriptionNotFoundException: \(message ?? "")"
        case .wAFTagOperationException(let message):
            return "WAFTagOperationException: \(message ?? "")"
        case .wAFTagOperationInternalErrorException(let message):
            return "WAFTagOperationInternalErrorException: \(message ?? "")"
        case .wAFUnavailableEntityException(let message):
            return "WAFUnavailableEntityException: \(message ?? "")"
        }
    }
}
