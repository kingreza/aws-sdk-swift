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

/// Error enum for WorkSpaces
public enum WorkSpacesErrorType: AWSErrorType {
    case accessDeniedException(message: String?)
    case invalidParameterValuesException(message: String?)
    case invalidResourceStateException(message: String?)
    case operationInProgressException(message: String?)
    case operationNotSupportedException(message: String?)
    case resourceAlreadyExistsException(message: String?)
    case resourceAssociatedException(message: String?)
    case resourceCreationFailedException(message: String?)
    case resourceLimitExceededException(message: String?)
    case resourceNotFoundException(message: String?)
    case resourceUnavailableException(message: String?)
    case unsupportedNetworkConfigurationException(message: String?)
    case unsupportedWorkspaceConfigurationException(message: String?)
    case workspacesDefaultRoleNotFoundException(message: String?)
}

extension WorkSpacesErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "AccessDeniedException":
            self = .accessDeniedException(message: message)
        case "InvalidParameterValuesException":
            self = .invalidParameterValuesException(message: message)
        case "InvalidResourceStateException":
            self = .invalidResourceStateException(message: message)
        case "OperationInProgressException":
            self = .operationInProgressException(message: message)
        case "OperationNotSupportedException":
            self = .operationNotSupportedException(message: message)
        case "ResourceAlreadyExistsException":
            self = .resourceAlreadyExistsException(message: message)
        case "ResourceAssociatedException":
            self = .resourceAssociatedException(message: message)
        case "ResourceCreationFailedException":
            self = .resourceCreationFailedException(message: message)
        case "ResourceLimitExceededException":
            self = .resourceLimitExceededException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "ResourceUnavailableException":
            self = .resourceUnavailableException(message: message)
        case "UnsupportedNetworkConfigurationException":
            self = .unsupportedNetworkConfigurationException(message: message)
        case "UnsupportedWorkspaceConfigurationException":
            self = .unsupportedWorkspaceConfigurationException(message: message)
        case "WorkspacesDefaultRoleNotFoundException":
            self = .workspacesDefaultRoleNotFoundException(message: message)
        default:
            return nil
        }
    }
}

extension WorkSpacesErrorType : CustomStringConvertible {
    public var description : String {
        switch self {
        case .accessDeniedException(let message):
            return "AccessDeniedException: \(message ?? "")"
        case .invalidParameterValuesException(let message):
            return "InvalidParameterValuesException: \(message ?? "")"
        case .invalidResourceStateException(let message):
            return "InvalidResourceStateException: \(message ?? "")"
        case .operationInProgressException(let message):
            return "OperationInProgressException: \(message ?? "")"
        case .operationNotSupportedException(let message):
            return "OperationNotSupportedException: \(message ?? "")"
        case .resourceAlreadyExistsException(let message):
            return "ResourceAlreadyExistsException: \(message ?? "")"
        case .resourceAssociatedException(let message):
            return "ResourceAssociatedException: \(message ?? "")"
        case .resourceCreationFailedException(let message):
            return "ResourceCreationFailedException: \(message ?? "")"
        case .resourceLimitExceededException(let message):
            return "ResourceLimitExceededException: \(message ?? "")"
        case .resourceNotFoundException(let message):
            return "ResourceNotFoundException: \(message ?? "")"
        case .resourceUnavailableException(let message):
            return "ResourceUnavailableException: \(message ?? "")"
        case .unsupportedNetworkConfigurationException(let message):
            return "UnsupportedNetworkConfigurationException: \(message ?? "")"
        case .unsupportedWorkspaceConfigurationException(let message):
            return "UnsupportedWorkspaceConfigurationException: \(message ?? "")"
        case .workspacesDefaultRoleNotFoundException(let message):
            return "WorkspacesDefaultRoleNotFoundException: \(message ?? "")"
        }
    }
}
