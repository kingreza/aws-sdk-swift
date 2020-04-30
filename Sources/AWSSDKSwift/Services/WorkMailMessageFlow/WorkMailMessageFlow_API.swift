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
Client object for interacting with AWS WorkMailMessageFlow service.

The WorkMail Message Flow API provides access to email messages as they are being sent and received by a WorkMail organization.
*/
public struct WorkMailMessageFlow {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the WorkMailMessageFlow client
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
            service: "workmailmessageflow",
            serviceProtocol: .restjson,
            apiVersion: "2019-05-01",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [WorkMailMessageFlowErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Retrieves the raw content of an in-transit email message, in MIME format. 
    public func getRawMessageContent(_ input: GetRawMessageContentRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetRawMessageContentResponse> {
        return client.send(operation: "GetRawMessageContent", path: "/messages/{messageId}", httpMethod: "GET", input: input, on: eventLoop)
    }
}
