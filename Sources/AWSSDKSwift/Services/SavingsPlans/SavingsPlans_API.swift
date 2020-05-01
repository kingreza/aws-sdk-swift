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
Client object for interacting with AWS SavingsPlans service.

Savings Plans are a pricing model that offer significant savings on AWS usage (for example, on Amazon EC2 instances). You commit to a consistent amount of usage, in USD per hour, for a term of 1 or 3 years, and receive a lower price for that usage. For more information, see the AWS Savings Plans User Guide.
*/
public struct SavingsPlans {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the SavingsPlans client
    /// - parameters:
    ///     - accessKeyId: Public access key provided by AWS
    ///     - secretAccessKey: Private access key provided by AWS
    ///     - sessionToken: Token provided by STS.AssumeRole() which allows access to another AWS account
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - middlewares: Array of middlewares to apply to requests and responses
    ///     - httpClientProvider: HTTPClient to use. Use `createNew` if the client should manage its own HTTPClient.
    public init(
        accessKeyId: String? = nil,
        secretAccessKey: String? = nil,
        sessionToken: String? = nil,
        endpoint: String? = nil,
        middlewares: [AWSServiceMiddleware] = [],
        httpClientProvider: AWSClient.HTTPClientProvider = .createNew
    ) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: nil,
            service: "savingsplans",
            serviceProtocol: .restjson,
            apiVersion: "2019-06-28",
            endpoint: endpoint,
            serviceEndpoints: ["aws-global": "savingsplans.amazonaws.com"],
            partitionEndpoint: "aws-global",
            middlewares: middlewares,
            possibleErrorTypes: [SavingsPlansErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Creates a Savings Plan.
    public func createSavingsPlan(_ input: CreateSavingsPlanRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSavingsPlanResponse> {
        return client.send(operation: "CreateSavingsPlan", path: "/CreateSavingsPlan", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes the specified Savings Plans rates.
    public func describeSavingsPlanRates(_ input: DescribeSavingsPlanRatesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSavingsPlanRatesResponse> {
        return client.send(operation: "DescribeSavingsPlanRates", path: "/DescribeSavingsPlanRates", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes the specified Savings Plans.
    public func describeSavingsPlans(_ input: DescribeSavingsPlansRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSavingsPlansResponse> {
        return client.send(operation: "DescribeSavingsPlans", path: "/DescribeSavingsPlans", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes the specified Savings Plans offering rates.
    public func describeSavingsPlansOfferingRates(_ input: DescribeSavingsPlansOfferingRatesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSavingsPlansOfferingRatesResponse> {
        return client.send(operation: "DescribeSavingsPlansOfferingRates", path: "/DescribeSavingsPlansOfferingRates", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes the specified Savings Plans offerings.
    public func describeSavingsPlansOfferings(_ input: DescribeSavingsPlansOfferingsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSavingsPlansOfferingsResponse> {
        return client.send(operation: "DescribeSavingsPlansOfferings", path: "/DescribeSavingsPlansOfferings", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists the tags for the specified resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.send(operation: "ListTagsForResource", path: "/ListTagsForResource", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Adds the specified tags to the specified resource.
    public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return client.send(operation: "TagResource", path: "/TagResource", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Removes the specified tags from the specified resource.
    public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return client.send(operation: "UntagResource", path: "/UntagResource", httpMethod: "POST", input: input, on: eventLoop)
    }
}