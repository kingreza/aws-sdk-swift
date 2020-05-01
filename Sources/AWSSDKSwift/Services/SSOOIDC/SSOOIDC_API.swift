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
Client object for interacting with AWS SSOOIDC service.

AWS Single Sign-On (SSO) OpenID Connect (OIDC) is a web service that enables a client (such as AWS CLI or a native application) to register with AWS SSO. The service also enables the client to fetch the user’s access token upon successful authentication and authorization with AWS SSO. This service conforms with the OAuth 2.0 based implementation of the device authorization grant standard (https://tools.ietf.org/html/rfc8628). For general information about AWS SSO, see What is AWS Single Sign-On? in the AWS SSO User Guide. This API reference guide describes the AWS SSO OIDC operations that you can call programatically and includes detailed information on data types and errors.  AWS provides SDKs that consist of libraries and sample code for various programming languages and platforms such as Java, Ruby, .Net, iOS, and Android. The SDKs provide a convenient way to create programmatic access to AWS SSO and other AWS services. For more information about the AWS SDKs, including how to download and install them, see Tools for Amazon Web Services. 
*/
public struct SSOOIDC {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the SSOOIDC client
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
            service: "oidc",
            signingName: "awsssooidc",
            serviceProtocol: .restjson,
            apiVersion: "2019-06-10",
            endpoint: endpoint,
            serviceEndpoints: ["ap-southeast-1": "oidc.ap-southeast-1.amazonaws.com", "ap-southeast-2": "oidc.ap-southeast-2.amazonaws.com", "ca-central-1": "oidc.ca-central-1.amazonaws.com", "eu-central-1": "oidc.eu-central-1.amazonaws.com", "eu-west-1": "oidc.eu-west-1.amazonaws.com", "eu-west-2": "oidc.eu-west-2.amazonaws.com", "us-east-1": "oidc.us-east-1.amazonaws.com", "us-east-2": "oidc.us-east-2.amazonaws.com", "us-west-2": "oidc.us-west-2.amazonaws.com"],
            middlewares: middlewares,
            possibleErrorTypes: [SSOOIDCErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Creates and returns an access token for the authorized client. The access token issued will be used to fetch short-term credentials for the assigned roles in the AWS account.
    public func createToken(_ input: CreateTokenRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTokenResponse> {
        return client.send(operation: "CreateToken", path: "/token", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Registers a client with AWS SSO. This allows clients to initiate device authorization. The output should be persisted for reuse through many authentication requests.
    public func registerClient(_ input: RegisterClientRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RegisterClientResponse> {
        return client.send(operation: "RegisterClient", path: "/client/register", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Initiates device authorization by requesting a pair of verification codes from the authorization service.
    public func startDeviceAuthorization(_ input: StartDeviceAuthorizationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartDeviceAuthorizationResponse> {
        return client.send(operation: "StartDeviceAuthorization", path: "/device_authorization", httpMethod: "POST", input: input, on: eventLoop)
    }
}