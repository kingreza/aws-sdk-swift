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
Client object for interacting with AWS MigrationHubConfig service.

The AWS Migration Hub home region APIs are available specifically for working with your Migration Hub home region. You can use these APIs to determine a home region, as well as to create and work with controls that describe the home region.   You must make API calls for write actions (create, notify, associate, disassociate, import, or put) while in your home region, or a HomeRegionNotSetException error is returned.   API calls for read actions (list, describe, stop, and delete) are permitted outside of your home region.   If you call a write API outside the home region, an InvalidInputException is returned.   You can call GetHomeRegion action to obtain the account's Migration Hub home region.   For specific API usage, see the sections that follow in this AWS Migration Hub Home Region API reference. 
*/
public struct MigrationHubConfig {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the MigrationHubConfig client
    /// - parameters:
    ///     - accessKeyId: Public access key provided by AWS
    ///     - secretAccessKey: Private access key provided by AWS
    ///     - sessionToken: Token provided by STS.AssumeRole() which allows access to another AWS account
    ///     - region: Region of server you want to communicate with
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - middlewares: Array of middlewares to apply to requests and responses
    ///     - httpClientProvider: HTTPClient to use. Use `createNew` if the client should manage its own HTTPClient.
    public init(
        accessKeyId: String? = nil,
        secretAccessKey: String? = nil,
        sessionToken: String? = nil,
        region: AWSSDKSwiftCore.Region? = nil,
        endpoint: String? = nil,
        middlewares: [AWSServiceMiddleware] = [],
        httpClientProvider: AWSClient.HTTPClientProvider = .createNew
    ) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            amzTarget: "AWSMigrationHubMultiAccountService",
            service: "migrationhub-config",
            signingName: "mgh",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2019-06-30",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [MigrationHubConfigErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  This API sets up the home region for the calling account only.
    public func createHomeRegionControl(_ input: CreateHomeRegionControlRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateHomeRegionControlResult> {
        return client.send(operation: "CreateHomeRegionControl", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  This API permits filtering on the ControlId and HomeRegion fields.
    public func describeHomeRegionControls(_ input: DescribeHomeRegionControlsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeHomeRegionControlsResult> {
        return client.send(operation: "DescribeHomeRegionControls", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns the calling account’s home region, if configured. This API is used by other AWS services to determine the regional endpoint for calling AWS Application Discovery Service and Migration Hub. You must call GetHomeRegion at least once before you call any other AWS Application Discovery Service and AWS Migration Hub APIs, to obtain the account's Migration Hub home region.
    public func getHomeRegion(_ input: GetHomeRegionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetHomeRegionResult> {
        return client.send(operation: "GetHomeRegion", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }
}