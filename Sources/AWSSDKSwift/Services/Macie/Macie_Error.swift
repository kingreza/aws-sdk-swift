// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for Macie
public enum MacieErrorType: AWSErrorType {
    case accessDeniedException(message: String?)
    case internalException(message: String?)
    case invalidInputException(message: String?)
    case limitExceededException(message: String?)
}

extension MacieErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "AccessDeniedException":
            self = .accessDeniedException(message: message)
        case "InternalException":
            self = .internalException(message: message)
        case "InvalidInputException":
            self = .invalidInputException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        default:
            return nil
        }
    }
}