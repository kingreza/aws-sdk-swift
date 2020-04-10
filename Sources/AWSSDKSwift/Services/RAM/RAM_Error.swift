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

/// Error enum for RAM
public enum RAMErrorType: AWSErrorType {
    case idempotentParameterMismatchException(message: String?)
    case invalidClientTokenException(message: String?)
    case invalidMaxResultsException(message: String?)
    case invalidNextTokenException(message: String?)
    case invalidParameterException(message: String?)
    case invalidResourceTypeException(message: String?)
    case invalidStateTransitionException(message: String?)
    case malformedArnException(message: String?)
    case missingRequiredParameterException(message: String?)
    case operationNotPermittedException(message: String?)
    case resourceArnNotFoundException(message: String?)
    case resourceShareInvitationAlreadyAcceptedException(message: String?)
    case resourceShareInvitationAlreadyRejectedException(message: String?)
    case resourceShareInvitationArnNotFoundException(message: String?)
    case resourceShareInvitationExpiredException(message: String?)
    case resourceShareLimitExceededException(message: String?)
    case serverInternalException(message: String?)
    case serviceUnavailableException(message: String?)
    case tagLimitExceededException(message: String?)
    case tagPolicyViolationException(message: String?)
    case unknownResourceException(message: String?)
}

extension RAMErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "IdempotentParameterMismatchException":
            self = .idempotentParameterMismatchException(message: message)
        case "InvalidClientTokenException":
            self = .invalidClientTokenException(message: message)
        case "InvalidMaxResultsException":
            self = .invalidMaxResultsException(message: message)
        case "InvalidNextTokenException":
            self = .invalidNextTokenException(message: message)
        case "InvalidParameterException":
            self = .invalidParameterException(message: message)
        case "InvalidResourceTypeException":
            self = .invalidResourceTypeException(message: message)
        case "InvalidStateTransitionException":
            self = .invalidStateTransitionException(message: message)
        case "MalformedArnException":
            self = .malformedArnException(message: message)
        case "MissingRequiredParameterException":
            self = .missingRequiredParameterException(message: message)
        case "OperationNotPermittedException":
            self = .operationNotPermittedException(message: message)
        case "ResourceArnNotFoundException":
            self = .resourceArnNotFoundException(message: message)
        case "ResourceShareInvitationAlreadyAcceptedException":
            self = .resourceShareInvitationAlreadyAcceptedException(message: message)
        case "ResourceShareInvitationAlreadyRejectedException":
            self = .resourceShareInvitationAlreadyRejectedException(message: message)
        case "ResourceShareInvitationArnNotFoundException":
            self = .resourceShareInvitationArnNotFoundException(message: message)
        case "ResourceShareInvitationExpiredException":
            self = .resourceShareInvitationExpiredException(message: message)
        case "ResourceShareLimitExceededException":
            self = .resourceShareLimitExceededException(message: message)
        case "ServerInternalException":
            self = .serverInternalException(message: message)
        case "ServiceUnavailableException":
            self = .serviceUnavailableException(message: message)
        case "TagLimitExceededException":
            self = .tagLimitExceededException(message: message)
        case "TagPolicyViolationException":
            self = .tagPolicyViolationException(message: message)
        case "UnknownResourceException":
            self = .unknownResourceException(message: message)
        default:
            return nil
        }
    }
}

extension RAMErrorType : CustomStringConvertible {
    public var description : String {
        switch self {
        case .idempotentParameterMismatchException(let message):
            return "IdempotentParameterMismatchException: \(message ?? "")"
        case .invalidClientTokenException(let message):
            return "InvalidClientTokenException: \(message ?? "")"
        case .invalidMaxResultsException(let message):
            return "InvalidMaxResultsException: \(message ?? "")"
        case .invalidNextTokenException(let message):
            return "InvalidNextTokenException: \(message ?? "")"
        case .invalidParameterException(let message):
            return "InvalidParameterException: \(message ?? "")"
        case .invalidResourceTypeException(let message):
            return "InvalidResourceTypeException: \(message ?? "")"
        case .invalidStateTransitionException(let message):
            return "InvalidStateTransitionException: \(message ?? "")"
        case .malformedArnException(let message):
            return "MalformedArnException: \(message ?? "")"
        case .missingRequiredParameterException(let message):
            return "MissingRequiredParameterException: \(message ?? "")"
        case .operationNotPermittedException(let message):
            return "OperationNotPermittedException: \(message ?? "")"
        case .resourceArnNotFoundException(let message):
            return "ResourceArnNotFoundException: \(message ?? "")"
        case .resourceShareInvitationAlreadyAcceptedException(let message):
            return "ResourceShareInvitationAlreadyAcceptedException: \(message ?? "")"
        case .resourceShareInvitationAlreadyRejectedException(let message):
            return "ResourceShareInvitationAlreadyRejectedException: \(message ?? "")"
        case .resourceShareInvitationArnNotFoundException(let message):
            return "ResourceShareInvitationArnNotFoundException: \(message ?? "")"
        case .resourceShareInvitationExpiredException(let message):
            return "ResourceShareInvitationExpiredException: \(message ?? "")"
        case .resourceShareLimitExceededException(let message):
            return "ResourceShareLimitExceededException: \(message ?? "")"
        case .serverInternalException(let message):
            return "ServerInternalException: \(message ?? "")"
        case .serviceUnavailableException(let message):
            return "ServiceUnavailableException: \(message ?? "")"
        case .tagLimitExceededException(let message):
            return "TagLimitExceededException: \(message ?? "")"
        case .tagPolicyViolationException(let message):
            return "TagPolicyViolationException: \(message ?? "")"
        case .unknownResourceException(let message):
            return "UnknownResourceException: \(message ?? "")"
        }
    }
}
