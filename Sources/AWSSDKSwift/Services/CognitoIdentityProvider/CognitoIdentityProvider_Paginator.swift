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

import NIO

//MARK: Paginators

extension CognitoIdentityProvider {

    ///  Lists the groups that the user belongs to. Calling this action requires developer credentials.
    public func adminListGroupsForUserPaginator(
        _ input: AdminListGroupsForUserRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (AdminListGroupsForUserResponse,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: adminListGroupsForUser, tokenKey: \AdminListGroupsForUserResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Lists a history of user activity and any risks detected as part of Amazon Cognito advanced security.
    public func adminListUserAuthEventsPaginator(
        _ input: AdminListUserAuthEventsRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (AdminListUserAuthEventsResponse,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: adminListUserAuthEvents, tokenKey: \AdminListUserAuthEventsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Lists the groups associated with a user pool. Calling this action requires developer credentials.
    public func listGroupsPaginator(
        _ input: ListGroupsRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListGroupsResponse,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listGroups, tokenKey: \ListGroupsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Lists information about all identity providers for a user pool.
    public func listIdentityProvidersPaginator(
        _ input: ListIdentityProvidersRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListIdentityProvidersResponse,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listIdentityProviders, tokenKey: \ListIdentityProvidersResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Lists the resource servers for a user pool.
    public func listResourceServersPaginator(
        _ input: ListResourceServersRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListResourceServersResponse,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listResourceServers, tokenKey: \ListResourceServersResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Lists the clients that have been created for the specified user pool.
    public func listUserPoolClientsPaginator(
        _ input: ListUserPoolClientsRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListUserPoolClientsResponse,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listUserPoolClients, tokenKey: \ListUserPoolClientsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Lists the user pools associated with an AWS account.
    public func listUserPoolsPaginator(
        _ input: ListUserPoolsRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListUserPoolsResponse,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listUserPools, tokenKey: \ListUserPoolsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Lists the users in the Amazon Cognito user pool.
    public func listUsersPaginator(
        _ input: ListUsersRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListUsersResponse,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listUsers, tokenKey: \ListUsersResponse.paginationToken, on: eventLoop, onPage: onPage)
    }

    ///  Lists the users in the specified group. Calling this action requires developer credentials.
    public func listUsersInGroupPaginator(
        _ input: ListUsersInGroupRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListUsersInGroupResponse,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listUsersInGroup, tokenKey: \ListUsersInGroupResponse.nextToken, on: eventLoop, onPage: onPage)
    }

}

extension CognitoIdentityProvider.AdminListGroupsForUserRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CognitoIdentityProvider.AdminListGroupsForUserRequest {
        return .init(
            limit: self.limit,
            nextToken: token,
            username: self.username,
            userPoolId: self.userPoolId
        )

    }
}

extension CognitoIdentityProvider.AdminListUserAuthEventsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CognitoIdentityProvider.AdminListUserAuthEventsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            username: self.username,
            userPoolId: self.userPoolId
        )

    }
}

extension CognitoIdentityProvider.ListGroupsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CognitoIdentityProvider.ListGroupsRequest {
        return .init(
            limit: self.limit,
            nextToken: token,
            userPoolId: self.userPoolId
        )

    }
}

extension CognitoIdentityProvider.ListIdentityProvidersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CognitoIdentityProvider.ListIdentityProvidersRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            userPoolId: self.userPoolId
        )

    }
}

extension CognitoIdentityProvider.ListResourceServersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CognitoIdentityProvider.ListResourceServersRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            userPoolId: self.userPoolId
        )

    }
}

extension CognitoIdentityProvider.ListUserPoolClientsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CognitoIdentityProvider.ListUserPoolClientsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            userPoolId: self.userPoolId
        )

    }
}

extension CognitoIdentityProvider.ListUserPoolsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CognitoIdentityProvider.ListUserPoolsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension CognitoIdentityProvider.ListUsersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CognitoIdentityProvider.ListUsersRequest {
        return .init(
            attributesToGet: self.attributesToGet,
            filter: self.filter,
            limit: self.limit,
            paginationToken: token,
            userPoolId: self.userPoolId
        )

    }
}

extension CognitoIdentityProvider.ListUsersInGroupRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CognitoIdentityProvider.ListUsersInGroupRequest {
        return .init(
            groupName: self.groupName,
            limit: self.limit,
            nextToken: token,
            userPoolId: self.userPoolId
        )

    }
}

