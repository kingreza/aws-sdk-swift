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

@_exported import AWSSDKSwiftCore
import Foundation
import NIO

/**
Client object for interacting with AWS FMS service.

AWS Firewall Manager This is the AWS Firewall Manager API Reference. This guide is for developers who need detailed information about the AWS Firewall Manager API actions, data types, and errors. For detailed information about AWS Firewall Manager features, see the AWS Firewall Manager Developer Guide.
*/
public struct FMS {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the FMS client
    /// - parameters:
    ///     - accessKeyId: Public access key provided by AWS
    ///     - secretAccessKey: Private access key provided by AWS
    ///     - sessionToken: Token provided by STS.AssumeRole() which allows access to another AWS account
    ///     - region: Region of server you want to communicate with
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - middlewares: Array of middlewares to apply to requests and responses
    ///     - eventLoopGroupProvider: EventLoopGroup to use. Use `useAWSClientShared` if the client shall manage its own EventLoopGroup.
    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, sessionToken: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = [], eventLoopGroupProvider: AWSClient.EventLoopGroupProvider = .useAWSClientShared) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            amzTarget: "AWSFMS_20180101",
            service: "fms",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2018-01-01",
            endpoint: endpoint,
            serviceEndpoints: ["fips-ap-northeast-1": "fms-fips.ap-northeast-1.amazonaws.com", "fips-ap-northeast-2": "fms-fips.ap-northeast-2.amazonaws.com", "fips-ap-south-1": "fms-fips.ap-south-1.amazonaws.com", "fips-ap-southeast-1": "fms-fips.ap-southeast-1.amazonaws.com", "fips-ap-southeast-2": "fms-fips.ap-southeast-2.amazonaws.com", "fips-ca-central-1": "fms-fips.ca-central-1.amazonaws.com", "fips-eu-central-1": "fms-fips.eu-central-1.amazonaws.com", "fips-eu-west-1": "fms-fips.eu-west-1.amazonaws.com", "fips-eu-west-2": "fms-fips.eu-west-2.amazonaws.com", "fips-eu-west-3": "fms-fips.eu-west-3.amazonaws.com", "fips-sa-east-1": "fms-fips.sa-east-1.amazonaws.com", "fips-us-east-1": "fms-fips.us-east-1.amazonaws.com", "fips-us-east-2": "fms-fips.us-east-2.amazonaws.com", "fips-us-west-1": "fms-fips.us-west-1.amazonaws.com", "fips-us-west-2": "fms-fips.us-west-2.amazonaws.com"],
            middlewares: middlewares,
            possibleErrorTypes: [FMSErrorType.self],
            eventLoopGroupProvider: eventLoopGroupProvider
        )
    }
    
    //MARK: API Calls

    ///  Sets the AWS Firewall Manager administrator account. AWS Firewall Manager must be associated with the master account of your AWS organization or associated with a member account that has the appropriate permissions. If the account ID that you submit is not an AWS Organizations master account, AWS Firewall Manager will set the appropriate permissions for the given member account. The account that you associate with AWS Firewall Manager is called the AWS Firewall Manager administrator account. 
    @discardableResult public func associateAdminAccount(_ input: AssociateAdminAccountRequest) -> EventLoopFuture<Void> {
        return client.send(operation: "AssociateAdminAccount", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes an AWS Firewall Manager association with the IAM role and the Amazon Simple Notification Service (SNS) topic that is used to record AWS Firewall Manager SNS logs.
    @discardableResult public func deleteNotificationChannel(_ input: DeleteNotificationChannelRequest) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteNotificationChannel", path: "/", httpMethod: "POST", input: input)
    }

    ///  Permanently deletes an AWS Firewall Manager policy. 
    @discardableResult public func deletePolicy(_ input: DeletePolicyRequest) -> EventLoopFuture<Void> {
        return client.send(operation: "DeletePolicy", path: "/", httpMethod: "POST", input: input)
    }

    ///  Disassociates the account that has been set as the AWS Firewall Manager administrator account. To set a different account as the administrator account, you must submit an AssociateAdminAccount request.
    @discardableResult public func disassociateAdminAccount(_ input: DisassociateAdminAccountRequest) -> EventLoopFuture<Void> {
        return client.send(operation: "DisassociateAdminAccount", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the AWS Organizations master account that is associated with AWS Firewall Manager as the AWS Firewall Manager administrator.
    public func getAdminAccount(_ input: GetAdminAccountRequest) -> EventLoopFuture<GetAdminAccountResponse> {
        return client.send(operation: "GetAdminAccount", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns detailed compliance information about the specified member account. Details include resources that are in and out of compliance with the specified policy. Resources are considered noncompliant for AWS WAF and Shield Advanced policies if the specified policy has not been applied to them. Resources are considered noncompliant for security group policies if they are in scope of the policy, they violate one or more of the policy rules, and remediation is disabled or not possible. 
    public func getComplianceDetail(_ input: GetComplianceDetailRequest) -> EventLoopFuture<GetComplianceDetailResponse> {
        return client.send(operation: "GetComplianceDetail", path: "/", httpMethod: "POST", input: input)
    }

    ///  Information about the Amazon Simple Notification Service (SNS) topic that is used to record AWS Firewall Manager SNS logs.
    public func getNotificationChannel(_ input: GetNotificationChannelRequest) -> EventLoopFuture<GetNotificationChannelResponse> {
        return client.send(operation: "GetNotificationChannel", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about the specified AWS Firewall Manager policy.
    public func getPolicy(_ input: GetPolicyRequest) -> EventLoopFuture<GetPolicyResponse> {
        return client.send(operation: "GetPolicy", path: "/", httpMethod: "POST", input: input)
    }

    ///  If you created a Shield Advanced policy, returns policy-level attack summary information in the event of a potential DDoS attack. Other policy types are currently unsupported.
    public func getProtectionStatus(_ input: GetProtectionStatusRequest) -> EventLoopFuture<GetProtectionStatusResponse> {
        return client.send(operation: "GetProtectionStatus", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns an array of PolicyComplianceStatus objects in the response. Use PolicyComplianceStatus to get a summary of which member accounts are protected by the specified policy. 
    public func listComplianceStatus(_ input: ListComplianceStatusRequest) -> EventLoopFuture<ListComplianceStatusResponse> {
        return client.send(operation: "ListComplianceStatus", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a MemberAccounts object that lists the member accounts in the administrator's AWS organization. The ListMemberAccounts must be submitted by the account that is set as the AWS Firewall Manager administrator.
    public func listMemberAccounts(_ input: ListMemberAccountsRequest) -> EventLoopFuture<ListMemberAccountsResponse> {
        return client.send(operation: "ListMemberAccounts", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns an array of PolicySummary objects in the response.
    public func listPolicies(_ input: ListPoliciesRequest) -> EventLoopFuture<ListPoliciesResponse> {
        return client.send(operation: "ListPolicies", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves the list of tags for the specified AWS resource. 
    public func listTagsForResource(_ input: ListTagsForResourceRequest) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.send(operation: "ListTagsForResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Designates the IAM role and Amazon Simple Notification Service (SNS) topic that AWS Firewall Manager uses to record SNS logs.
    @discardableResult public func putNotificationChannel(_ input: PutNotificationChannelRequest) -> EventLoopFuture<Void> {
        return client.send(operation: "PutNotificationChannel", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates an AWS Firewall Manager policy. Firewall Manager provides the following types of policies:    A Shield Advanced policy, which applies Shield Advanced protection to specified accounts and resources   An AWS WAF policy, which contains a rule group and defines which resources are to be protected by that rule group   A security group policy, which manages VPC security groups across your AWS organization.    Each policy is specific to one of the three types. If you want to enforce more than one policy type across accounts, you can create multiple policies. You can create multiple policies for each type. You must be subscribed to Shield Advanced to create a Shield Advanced policy. For more information about subscribing to Shield Advanced, see CreateSubscription.
    public func putPolicy(_ input: PutPolicyRequest) -> EventLoopFuture<PutPolicyResponse> {
        return client.send(operation: "PutPolicy", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds one or more tags to an AWS resource.
    public func tagResource(_ input: TagResourceRequest) -> EventLoopFuture<TagResourceResponse> {
        return client.send(operation: "TagResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes one or more tags from an AWS resource.
    public func untagResource(_ input: UntagResourceRequest) -> EventLoopFuture<UntagResourceResponse> {
        return client.send(operation: "UntagResource", path: "/", httpMethod: "POST", input: input)
    }
}
