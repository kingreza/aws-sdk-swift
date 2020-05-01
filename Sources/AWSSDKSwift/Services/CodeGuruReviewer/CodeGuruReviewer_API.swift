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
Client object for interacting with AWS CodeGuruReviewer service.

This section provides documentation for the Amazon CodeGuru Reviewer API operations.
*/
public struct CodeGuruReviewer {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the CodeGuruReviewer client
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
            service: "codeguru-reviewer",
            serviceProtocol: .restjson,
            apiVersion: "2019-09-19",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [CodeGuruReviewerErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Associates an AWS CodeCommit repository with Amazon CodeGuru Reviewer. When you associate an AWS CodeCommit repository with Amazon CodeGuru Reviewer, Amazon CodeGuru Reviewer will provide recommendations for each pull request. You can view recommendations in the AWS CodeCommit repository. You can associate a GitHub repository using the Amazon CodeGuru Reviewer console.
    public func associateRepository(_ input: AssociateRepositoryRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateRepositoryResponse> {
        return client.send(operation: "AssociateRepository", path: "/associations", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes a repository association.
    public func describeRepositoryAssociation(_ input: DescribeRepositoryAssociationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRepositoryAssociationResponse> {
        return client.send(operation: "DescribeRepositoryAssociation", path: "/associations/{AssociationArn}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Removes the association between Amazon CodeGuru Reviewer and a repository.
    public func disassociateRepository(_ input: DisassociateRepositoryRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateRepositoryResponse> {
        return client.send(operation: "DisassociateRepository", path: "/associations/{AssociationArn}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Lists repository associations. You can optionally filter on one or more of the following recommendation properties: provider types, states, names, and owners.
    public func listRepositoryAssociations(_ input: ListRepositoryAssociationsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListRepositoryAssociationsResponse> {
        return client.send(operation: "ListRepositoryAssociations", path: "/associations", httpMethod: "GET", input: input, on: eventLoop)
    }
}