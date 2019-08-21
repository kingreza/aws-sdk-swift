// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for ConfigService
public enum ConfigServiceErrorType: AWSErrorType {
    case insufficientDeliveryPolicyException(message: String?)
    case insufficientPermissionsException(message: String?)
    case invalidConfigurationRecorderNameException(message: String?)
    case invalidDeliveryChannelNameException(message: String?)
    case invalidExpressionException(message: String?)
    case invalidLimitException(message: String?)
    case invalidNextTokenException(message: String?)
    case invalidParameterValueException(message: String?)
    case invalidRecordingGroupException(message: String?)
    case invalidResultTokenException(message: String?)
    case invalidRoleException(message: String?)
    case invalidS3KeyPrefixException(message: String?)
    case invalidSNSTopicARNException(message: String?)
    case invalidTimeRangeException(message: String?)
    case lastDeliveryChannelDeleteFailedException(message: String?)
    case limitExceededException(message: String?)
    case maxNumberOfConfigRulesExceededException(message: String?)
    case maxNumberOfConfigurationRecordersExceededException(message: String?)
    case maxNumberOfDeliveryChannelsExceededException(message: String?)
    case maxNumberOfOrganizationConfigRulesExceededException(message: String?)
    case maxNumberOfRetentionConfigurationsExceededException(message: String?)
    case noAvailableConfigurationRecorderException(message: String?)
    case noAvailableDeliveryChannelException(message: String?)
    case noAvailableOrganizationException(message: String?)
    case noRunningConfigurationRecorderException(message: String?)
    case noSuchBucketException(message: String?)
    case noSuchConfigRuleException(message: String?)
    case noSuchConfigurationAggregatorException(message: String?)
    case noSuchConfigurationRecorderException(message: String?)
    case noSuchDeliveryChannelException(message: String?)
    case noSuchOrganizationConfigRuleException(message: String?)
    case noSuchRemediationConfigurationException(message: String?)
    case noSuchRetentionConfigurationException(message: String?)
    case organizationAccessDeniedException(message: String?)
    case organizationAllFeaturesNotEnabledException(message: String?)
    case oversizedConfigurationItemException(message: String?)
    case remediationInProgressException(message: String?)
    case resourceInUseException(message: String?)
    case resourceNotDiscoveredException(message: String?)
    case resourceNotFoundException(message: String?)
    case tooManyTagsException(message: String?)
    case validationException(message: String?)
}

extension ConfigServiceErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "InsufficientDeliveryPolicyException":
            self = .insufficientDeliveryPolicyException(message: message)
        case "InsufficientPermissionsException":
            self = .insufficientPermissionsException(message: message)
        case "InvalidConfigurationRecorderNameException":
            self = .invalidConfigurationRecorderNameException(message: message)
        case "InvalidDeliveryChannelNameException":
            self = .invalidDeliveryChannelNameException(message: message)
        case "InvalidExpressionException":
            self = .invalidExpressionException(message: message)
        case "InvalidLimitException":
            self = .invalidLimitException(message: message)
        case "InvalidNextTokenException":
            self = .invalidNextTokenException(message: message)
        case "InvalidParameterValueException":
            self = .invalidParameterValueException(message: message)
        case "InvalidRecordingGroupException":
            self = .invalidRecordingGroupException(message: message)
        case "InvalidResultTokenException":
            self = .invalidResultTokenException(message: message)
        case "InvalidRoleException":
            self = .invalidRoleException(message: message)
        case "InvalidS3KeyPrefixException":
            self = .invalidS3KeyPrefixException(message: message)
        case "InvalidSNSTopicARNException":
            self = .invalidSNSTopicARNException(message: message)
        case "InvalidTimeRangeException":
            self = .invalidTimeRangeException(message: message)
        case "LastDeliveryChannelDeleteFailedException":
            self = .lastDeliveryChannelDeleteFailedException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "MaxNumberOfConfigRulesExceededException":
            self = .maxNumberOfConfigRulesExceededException(message: message)
        case "MaxNumberOfConfigurationRecordersExceededException":
            self = .maxNumberOfConfigurationRecordersExceededException(message: message)
        case "MaxNumberOfDeliveryChannelsExceededException":
            self = .maxNumberOfDeliveryChannelsExceededException(message: message)
        case "MaxNumberOfOrganizationConfigRulesExceededException":
            self = .maxNumberOfOrganizationConfigRulesExceededException(message: message)
        case "MaxNumberOfRetentionConfigurationsExceededException":
            self = .maxNumberOfRetentionConfigurationsExceededException(message: message)
        case "NoAvailableConfigurationRecorderException":
            self = .noAvailableConfigurationRecorderException(message: message)
        case "NoAvailableDeliveryChannelException":
            self = .noAvailableDeliveryChannelException(message: message)
        case "NoAvailableOrganizationException":
            self = .noAvailableOrganizationException(message: message)
        case "NoRunningConfigurationRecorderException":
            self = .noRunningConfigurationRecorderException(message: message)
        case "NoSuchBucketException":
            self = .noSuchBucketException(message: message)
        case "NoSuchConfigRuleException":
            self = .noSuchConfigRuleException(message: message)
        case "NoSuchConfigurationAggregatorException":
            self = .noSuchConfigurationAggregatorException(message: message)
        case "NoSuchConfigurationRecorderException":
            self = .noSuchConfigurationRecorderException(message: message)
        case "NoSuchDeliveryChannelException":
            self = .noSuchDeliveryChannelException(message: message)
        case "NoSuchOrganizationConfigRuleException":
            self = .noSuchOrganizationConfigRuleException(message: message)
        case "NoSuchRemediationConfigurationException":
            self = .noSuchRemediationConfigurationException(message: message)
        case "NoSuchRetentionConfigurationException":
            self = .noSuchRetentionConfigurationException(message: message)
        case "OrganizationAccessDeniedException":
            self = .organizationAccessDeniedException(message: message)
        case "OrganizationAllFeaturesNotEnabledException":
            self = .organizationAllFeaturesNotEnabledException(message: message)
        case "OversizedConfigurationItemException":
            self = .oversizedConfigurationItemException(message: message)
        case "RemediationInProgressException":
            self = .remediationInProgressException(message: message)
        case "ResourceInUseException":
            self = .resourceInUseException(message: message)
        case "ResourceNotDiscoveredException":
            self = .resourceNotDiscoveredException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "TooManyTagsException":
            self = .tooManyTagsException(message: message)
        case "ValidationException":
            self = .validationException(message: message)
        default:
            return nil
        }
    }
}