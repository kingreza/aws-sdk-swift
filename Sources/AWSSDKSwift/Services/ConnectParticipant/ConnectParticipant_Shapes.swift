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

import AWSSDKSwiftCore
import Foundation

extension ConnectParticipant {
    //MARK: Enums

    public enum ChatItemType: String, CustomStringConvertible, Codable {
        case message = "MESSAGE"
        case event = "EVENT"
        case connectionAck = "CONNECTION_ACK"
        public var description: String { return self.rawValue }
    }

    public enum ConnectionType: String, CustomStringConvertible, Codable {
        case websocket = "WEBSOCKET"
        case connectionCredentials = "CONNECTION_CREDENTIALS"
        public var description: String { return self.rawValue }
    }

    public enum ParticipantRole: String, CustomStringConvertible, Codable {
        case agent = "AGENT"
        case customer = "CUSTOMER"
        case system = "SYSTEM"
        public var description: String { return self.rawValue }
    }

    public enum ScanDirection: String, CustomStringConvertible, Codable {
        case forward = "FORWARD"
        case backward = "BACKWARD"
        public var description: String { return self.rawValue }
    }

    public enum SortKey: String, CustomStringConvertible, Codable {
        case descending = "DESCENDING"
        case ascending = "ASCENDING"
        public var description: String { return self.rawValue }
    }

    //MARK: Shapes

    public struct ConnectionCredentials: AWSDecodableShape {

        /// The connection token.
        public let connectionToken: String?
        /// The expiration of the token. It's specified in ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For example, 2019-11-08T02:41:28.172Z.
        public let expiry: String?

        public init(connectionToken: String? = nil, expiry: String? = nil) {
            self.connectionToken = connectionToken
            self.expiry = expiry
        }

        private enum CodingKeys: String, CodingKey {
            case connectionToken = "ConnectionToken"
            case expiry = "Expiry"
        }
    }

    public struct CreateParticipantConnectionRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "participantToken", location: .header(locationName: "X-Amz-Bearer"))
        ]

        /// Participant Token as obtained from StartChatContact API response.
        public let participantToken: String
        /// Type of connection information required.
        public let `type`: [ConnectionType]

        public init(participantToken: String, type: [ConnectionType]) {
            self.participantToken = participantToken
            self.`type` = `type`
        }

        public func validate(name: String) throws {
            try validate(self.participantToken, name: "participantToken", parent: name, max: 1000)
            try validate(self.participantToken, name: "participantToken", parent: name, min: 1)
            try validate(self.`type`, name: "`type`", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case `type` = "Type"
        }
    }

    public struct CreateParticipantConnectionResponse: AWSDecodableShape {

        /// Creates the participant's connection credentials. The authentication token associated with the participant's connection.
        public let connectionCredentials: ConnectionCredentials?
        /// Creates the participant's websocket connection.
        public let websocket: Websocket?

        public init(connectionCredentials: ConnectionCredentials? = nil, websocket: Websocket? = nil) {
            self.connectionCredentials = connectionCredentials
            self.websocket = websocket
        }

        private enum CodingKeys: String, CodingKey {
            case connectionCredentials = "ConnectionCredentials"
            case websocket = "Websocket"
        }
    }

    public struct DisconnectParticipantRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "connectionToken", location: .header(locationName: "X-Amz-Bearer"))
        ]

        /// A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.
        public let clientToken: String?
        /// The authentication token associated with the participant's connection.
        public let connectionToken: String

        public init(clientToken: String? = DisconnectParticipantRequest.idempotencyToken(), connectionToken: String) {
            self.clientToken = clientToken
            self.connectionToken = connectionToken
        }

        public func validate(name: String) throws {
            try validate(self.clientToken, name: "clientToken", parent: name, max: 500)
            try validate(self.connectionToken, name: "connectionToken", parent: name, max: 1000)
            try validate(self.connectionToken, name: "connectionToken", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case clientToken = "ClientToken"
        }
    }

    public struct DisconnectParticipantResponse: AWSDecodableShape {


        public init() {
        }

    }

    public struct GetTranscriptRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "connectionToken", location: .header(locationName: "X-Amz-Bearer"))
        ]

        /// The authentication token associated with the participant's connection.
        public let connectionToken: String
        /// The contactId from the current contact chain for which transcript is needed.
        public let contactId: String?
        /// The maximum number of results to return in the page. Default: 10. 
        public let maxResults: Int?
        /// The pagination token. Use the value returned previously in the next subsequent request to retrieve the next set of results.
        public let nextToken: String?
        /// The direction from StartPosition from which to retrieve message. Default: BACKWARD when no StartPosition is provided, FORWARD with StartPosition. 
        public let scanDirection: ScanDirection?
        /// The sort order for the records. Default: DESCENDING.
        public let sortOrder: SortKey?
        /// A filtering option for where to start.
        public let startPosition: StartPosition?

        public init(connectionToken: String, contactId: String? = nil, maxResults: Int? = nil, nextToken: String? = nil, scanDirection: ScanDirection? = nil, sortOrder: SortKey? = nil, startPosition: StartPosition? = nil) {
            self.connectionToken = connectionToken
            self.contactId = contactId
            self.maxResults = maxResults
            self.nextToken = nextToken
            self.scanDirection = scanDirection
            self.sortOrder = sortOrder
            self.startPosition = startPosition
        }

        public func validate(name: String) throws {
            try validate(self.connectionToken, name: "connectionToken", parent: name, max: 1000)
            try validate(self.connectionToken, name: "connectionToken", parent: name, min: 1)
            try validate(self.contactId, name: "contactId", parent: name, max: 256)
            try validate(self.contactId, name: "contactId", parent: name, min: 1)
            try validate(self.maxResults, name: "maxResults", parent: name, max: 100)
            try validate(self.maxResults, name: "maxResults", parent: name, min: 0)
            try validate(self.nextToken, name: "nextToken", parent: name, max: 1000)
            try validate(self.nextToken, name: "nextToken", parent: name, min: 1)
            try self.startPosition?.validate(name: "\(name).startPosition")
        }

        private enum CodingKeys: String, CodingKey {
            case contactId = "ContactId"
            case maxResults = "MaxResults"
            case nextToken = "NextToken"
            case scanDirection = "ScanDirection"
            case sortOrder = "SortOrder"
            case startPosition = "StartPosition"
        }
    }

    public struct GetTranscriptResponse: AWSDecodableShape {

        /// The initial contact ID for the contact. 
        public let initialContactId: String?
        /// The pagination token. Use the value returned previously in the next subsequent request to retrieve the next set of results.
        public let nextToken: String?
        /// The list of messages in the session.
        public let transcript: [Item]?

        public init(initialContactId: String? = nil, nextToken: String? = nil, transcript: [Item]? = nil) {
            self.initialContactId = initialContactId
            self.nextToken = nextToken
            self.transcript = transcript
        }

        private enum CodingKeys: String, CodingKey {
            case initialContactId = "InitialContactId"
            case nextToken = "NextToken"
            case transcript = "Transcript"
        }
    }

    public struct Item: AWSDecodableShape {

        /// The time when the message or event was sent. It's specified in ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For example, 2019-11-08T02:41:28.172Z.
        public let absoluteTime: String?
        /// The content of the message or event.
        public let content: String?
        /// The type of content of the item.
        public let contentType: String?
        /// The chat display name of the sender.
        public let displayName: String?
        /// The ID of the item.
        public let id: String?
        /// The ID of the sender in the session.
        public let participantId: String?
        /// The role of the sender. For example, is it a customer, agent, or system.
        public let participantRole: ParticipantRole?
        /// Type of the item: message or event. 
        public let `type`: ChatItemType?

        public init(absoluteTime: String? = nil, content: String? = nil, contentType: String? = nil, displayName: String? = nil, id: String? = nil, participantId: String? = nil, participantRole: ParticipantRole? = nil, type: ChatItemType? = nil) {
            self.absoluteTime = absoluteTime
            self.content = content
            self.contentType = contentType
            self.displayName = displayName
            self.id = id
            self.participantId = participantId
            self.participantRole = participantRole
            self.`type` = `type`
        }

        private enum CodingKeys: String, CodingKey {
            case absoluteTime = "AbsoluteTime"
            case content = "Content"
            case contentType = "ContentType"
            case displayName = "DisplayName"
            case id = "Id"
            case participantId = "ParticipantId"
            case participantRole = "ParticipantRole"
            case `type` = "Type"
        }
    }

    public struct SendEventRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "connectionToken", location: .header(locationName: "X-Amz-Bearer"))
        ]

        /// A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.
        public let clientToken: String?
        /// The authentication token associated with the participant's connection.
        public let connectionToken: String
        /// The content of the event to be sent (for example, message text). This is not yet supported.
        public let content: String?
        /// The content type of the request. Supported types are:   application/vnd.amazonaws.connect.event.typing   application/vnd.amazonaws.connect.event.connection.acknowledged  
        public let contentType: String

        public init(clientToken: String? = SendEventRequest.idempotencyToken(), connectionToken: String, content: String? = nil, contentType: String) {
            self.clientToken = clientToken
            self.connectionToken = connectionToken
            self.content = content
            self.contentType = contentType
        }

        public func validate(name: String) throws {
            try validate(self.clientToken, name: "clientToken", parent: name, max: 500)
            try validate(self.connectionToken, name: "connectionToken", parent: name, max: 1000)
            try validate(self.connectionToken, name: "connectionToken", parent: name, min: 1)
            try validate(self.content, name: "content", parent: name, max: 1024)
            try validate(self.content, name: "content", parent: name, min: 1)
            try validate(self.contentType, name: "contentType", parent: name, max: 100)
            try validate(self.contentType, name: "contentType", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case clientToken = "ClientToken"
            case content = "Content"
            case contentType = "ContentType"
        }
    }

    public struct SendEventResponse: AWSDecodableShape {

        /// The time when the event was sent. It's specified in ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For example, 2019-11-08T02:41:28.172Z.
        public let absoluteTime: String?
        /// The ID of the response.
        public let id: String?

        public init(absoluteTime: String? = nil, id: String? = nil) {
            self.absoluteTime = absoluteTime
            self.id = id
        }

        private enum CodingKeys: String, CodingKey {
            case absoluteTime = "AbsoluteTime"
            case id = "Id"
        }
    }

    public struct SendMessageRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "connectionToken", location: .header(locationName: "X-Amz-Bearer"))
        ]

        /// A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.
        public let clientToken: String?
        /// The authentication token associated with the connection.
        public let connectionToken: String
        /// The content of the message.
        public let content: String
        /// The type of the content. Supported types are text/plain.
        public let contentType: String

        public init(clientToken: String? = SendMessageRequest.idempotencyToken(), connectionToken: String, content: String, contentType: String) {
            self.clientToken = clientToken
            self.connectionToken = connectionToken
            self.content = content
            self.contentType = contentType
        }

        public func validate(name: String) throws {
            try validate(self.clientToken, name: "clientToken", parent: name, max: 500)
            try validate(self.connectionToken, name: "connectionToken", parent: name, max: 1000)
            try validate(self.connectionToken, name: "connectionToken", parent: name, min: 1)
            try validate(self.content, name: "content", parent: name, max: 1024)
            try validate(self.content, name: "content", parent: name, min: 1)
            try validate(self.contentType, name: "contentType", parent: name, max: 100)
            try validate(self.contentType, name: "contentType", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case clientToken = "ClientToken"
            case content = "Content"
            case contentType = "ContentType"
        }
    }

    public struct SendMessageResponse: AWSDecodableShape {

        /// The time when the message was sent. It's specified in ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For example, 2019-11-08T02:41:28.172Z.
        public let absoluteTime: String?
        /// The ID of the message.
        public let id: String?

        public init(absoluteTime: String? = nil, id: String? = nil) {
            self.absoluteTime = absoluteTime
            self.id = id
        }

        private enum CodingKeys: String, CodingKey {
            case absoluteTime = "AbsoluteTime"
            case id = "Id"
        }
    }

    public struct StartPosition: AWSEncodableShape {

        /// The time in ISO format where to start. It's specified in ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For example, 2019-11-08T02:41:28.172Z.
        public let absoluteTime: String?
        /// The ID of the message or event where to start. 
        public let id: String?
        /// The start position of the most recent message where you want to start. 
        public let mostRecent: Int?

        public init(absoluteTime: String? = nil, id: String? = nil, mostRecent: Int? = nil) {
            self.absoluteTime = absoluteTime
            self.id = id
            self.mostRecent = mostRecent
        }

        public func validate(name: String) throws {
            try validate(self.absoluteTime, name: "absoluteTime", parent: name, max: 100)
            try validate(self.absoluteTime, name: "absoluteTime", parent: name, min: 1)
            try validate(self.id, name: "id", parent: name, max: 256)
            try validate(self.id, name: "id", parent: name, min: 1)
            try validate(self.mostRecent, name: "mostRecent", parent: name, max: 100)
            try validate(self.mostRecent, name: "mostRecent", parent: name, min: 0)
        }

        private enum CodingKeys: String, CodingKey {
            case absoluteTime = "AbsoluteTime"
            case id = "Id"
            case mostRecent = "MostRecent"
        }
    }

    public struct Websocket: AWSDecodableShape {

        /// The URL expiration timestamp in ISO date format. It's specified in ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For example, 2019-11-08T02:41:28.172Z.
        public let connectionExpiry: String?
        /// The URL of the websocket.
        public let url: String?

        public init(connectionExpiry: String? = nil, url: String? = nil) {
            self.connectionExpiry = connectionExpiry
            self.url = url
        }

        private enum CodingKeys: String, CodingKey {
            case connectionExpiry = "ConnectionExpiry"
            case url = "Url"
        }
    }
}
