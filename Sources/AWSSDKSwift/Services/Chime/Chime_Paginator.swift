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

extension Chime {

    ///  Lists the Amazon Chime accounts under the administrator's AWS account. You can filter accounts by account name prefix. To find out which Amazon Chime account a user belongs to, you can filter by the user's email address, which returns one account result.
    public func listAccountsPaginator(_ input: ListAccountsRequest, onPage: @escaping (ListAccountsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listAccounts, tokenKey: \ListAccountsResponse.nextToken, onPage: onPage)
    }

    ///  Lists the attendees for the specified Amazon Chime SDK meeting. For more information about the Amazon Chime SDK, see Using the Amazon Chime SDK in the Amazon Chime Developer Guide.
    public func listAttendeesPaginator(_ input: ListAttendeesRequest, onPage: @escaping (ListAttendeesResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listAttendees, tokenKey: \ListAttendeesResponse.nextToken, onPage: onPage)
    }

    ///  Lists the bots associated with the administrator's Amazon Chime Enterprise account ID.
    public func listBotsPaginator(_ input: ListBotsRequest, onPage: @escaping (ListBotsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listBots, tokenKey: \ListBotsResponse.nextToken, onPage: onPage)
    }

    ///  Lists up to 100 active Amazon Chime SDK meetings. For more information about the Amazon Chime SDK, see Using the Amazon Chime SDK in the Amazon Chime Developer Guide.
    public func listMeetingsPaginator(_ input: ListMeetingsRequest, onPage: @escaping (ListMeetingsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listMeetings, tokenKey: \ListMeetingsResponse.nextToken, onPage: onPage)
    }

    ///  Lists the phone number orders for the administrator's Amazon Chime account.
    public func listPhoneNumberOrdersPaginator(_ input: ListPhoneNumberOrdersRequest, onPage: @escaping (ListPhoneNumberOrdersResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listPhoneNumberOrders, tokenKey: \ListPhoneNumberOrdersResponse.nextToken, onPage: onPage)
    }

    ///  Lists the phone numbers for the specified Amazon Chime account, Amazon Chime user, Amazon Chime Voice Connector, or Amazon Chime Voice Connector group.
    public func listPhoneNumbersPaginator(_ input: ListPhoneNumbersRequest, onPage: @escaping (ListPhoneNumbersResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listPhoneNumbers, tokenKey: \ListPhoneNumbersResponse.nextToken, onPage: onPage)
    }

    ///  Lists the membership details for the specified room in an Amazon Chime Enterprise account, such as the members' IDs, email addresses, and names.
    public func listRoomMembershipsPaginator(_ input: ListRoomMembershipsRequest, onPage: @escaping (ListRoomMembershipsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listRoomMemberships, tokenKey: \ListRoomMembershipsResponse.nextToken, onPage: onPage)
    }

    ///  Lists the room details for the specified Amazon Chime Enterprise account. Optionally, filter the results by a member ID (user ID or bot ID) to see a list of rooms that the member belongs to.
    public func listRoomsPaginator(_ input: ListRoomsRequest, onPage: @escaping (ListRoomsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listRooms, tokenKey: \ListRoomsResponse.nextToken, onPage: onPage)
    }

    ///  Lists the users that belong to the specified Amazon Chime account. You can specify an email address to list only the user that the email address belongs to.
    public func listUsersPaginator(_ input: ListUsersRequest, onPage: @escaping (ListUsersResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listUsers, tokenKey: \ListUsersResponse.nextToken, onPage: onPage)
    }

    ///  Lists the Amazon Chime Voice Connector groups for the administrator's AWS account.
    public func listVoiceConnectorGroupsPaginator(_ input: ListVoiceConnectorGroupsRequest, onPage: @escaping (ListVoiceConnectorGroupsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listVoiceConnectorGroups, tokenKey: \ListVoiceConnectorGroupsResponse.nextToken, onPage: onPage)
    }

    ///  Lists the Amazon Chime Voice Connectors for the administrator's AWS account.
    public func listVoiceConnectorsPaginator(_ input: ListVoiceConnectorsRequest, onPage: @escaping (ListVoiceConnectorsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listVoiceConnectors, tokenKey: \ListVoiceConnectorsResponse.nextToken, onPage: onPage)
    }

}

extension Chime.ListAccountsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Chime.ListAccountsRequest {
        return .init(
            maxResults: self.maxResults, 
            name: self.name, 
            nextToken: token, 
            userEmail: self.userEmail
        )

    }
}

extension Chime.ListAttendeesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Chime.ListAttendeesRequest {
        return .init(
            maxResults: self.maxResults, 
            meetingId: self.meetingId, 
            nextToken: token
        )

    }
}

extension Chime.ListBotsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Chime.ListBotsRequest {
        return .init(
            accountId: self.accountId, 
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension Chime.ListMeetingsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Chime.ListMeetingsRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension Chime.ListPhoneNumberOrdersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Chime.ListPhoneNumberOrdersRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension Chime.ListPhoneNumbersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Chime.ListPhoneNumbersRequest {
        return .init(
            filterName: self.filterName, 
            filterValue: self.filterValue, 
            maxResults: self.maxResults, 
            nextToken: token, 
            productType: self.productType, 
            status: self.status
        )

    }
}

extension Chime.ListRoomMembershipsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Chime.ListRoomMembershipsRequest {
        return .init(
            accountId: self.accountId, 
            maxResults: self.maxResults, 
            nextToken: token, 
            roomId: self.roomId
        )

    }
}

extension Chime.ListRoomsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Chime.ListRoomsRequest {
        return .init(
            accountId: self.accountId, 
            maxResults: self.maxResults, 
            memberId: self.memberId, 
            nextToken: token
        )

    }
}

extension Chime.ListUsersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Chime.ListUsersRequest {
        return .init(
            accountId: self.accountId, 
            maxResults: self.maxResults, 
            nextToken: token, 
            userEmail: self.userEmail, 
            userType: self.userType
        )

    }
}

extension Chime.ListVoiceConnectorGroupsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Chime.ListVoiceConnectorGroupsRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension Chime.ListVoiceConnectorsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Chime.ListVoiceConnectorsRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}


