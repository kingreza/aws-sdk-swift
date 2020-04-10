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

extension LexModelBuildingService {

    ///  Returns a list of aliases for a specified Amazon Lex bot. This operation requires permissions for the lex:GetBotAliases action.
    public func getBotAliasesPaginator(_ input: GetBotAliasesRequest, onPage: @escaping (GetBotAliasesResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: getBotAliases, tokenKey: \GetBotAliasesResponse.nextToken, onPage: onPage)
    }

    ///   Returns a list of all of the channels associated with the specified bot.  The GetBotChannelAssociations operation requires permissions for the lex:GetBotChannelAssociations action.
    public func getBotChannelAssociationsPaginator(_ input: GetBotChannelAssociationsRequest, onPage: @escaping (GetBotChannelAssociationsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: getBotChannelAssociations, tokenKey: \GetBotChannelAssociationsResponse.nextToken, onPage: onPage)
    }

    ///  Gets information about all of the versions of a bot. The GetBotVersions operation returns a BotMetadata object for each version of a bot. For example, if a bot has three numbered versions, the GetBotVersions operation returns four BotMetadata objects in the response, one for each numbered version and one for the $LATEST version.  The GetBotVersions operation always returns at least one version, the $LATEST version. This operation requires permissions for the lex:GetBotVersions action.
    public func getBotVersionsPaginator(_ input: GetBotVersionsRequest, onPage: @escaping (GetBotVersionsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: getBotVersions, tokenKey: \GetBotVersionsResponse.nextToken, onPage: onPage)
    }

    ///  Returns bot information as follows:    If you provide the nameContains field, the response includes information for the $LATEST version of all bots whose name contains the specified string.   If you don't specify the nameContains field, the operation returns information about the $LATEST version of all of your bots.   This operation requires permission for the lex:GetBots action.
    public func getBotsPaginator(_ input: GetBotsRequest, onPage: @escaping (GetBotsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: getBots, tokenKey: \GetBotsResponse.nextToken, onPage: onPage)
    }

    ///  Gets a list of built-in intents that meet the specified criteria. This operation requires permission for the lex:GetBuiltinIntents action.
    public func getBuiltinIntentsPaginator(_ input: GetBuiltinIntentsRequest, onPage: @escaping (GetBuiltinIntentsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: getBuiltinIntents, tokenKey: \GetBuiltinIntentsResponse.nextToken, onPage: onPage)
    }

    ///  Gets a list of built-in slot types that meet the specified criteria. For a list of built-in slot types, see Slot Type Reference in the Alexa Skills Kit. This operation requires permission for the lex:GetBuiltInSlotTypes action.
    public func getBuiltinSlotTypesPaginator(_ input: GetBuiltinSlotTypesRequest, onPage: @escaping (GetBuiltinSlotTypesResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: getBuiltinSlotTypes, tokenKey: \GetBuiltinSlotTypesResponse.nextToken, onPage: onPage)
    }

    ///  Gets information about all of the versions of an intent. The GetIntentVersions operation returns an IntentMetadata object for each version of an intent. For example, if an intent has three numbered versions, the GetIntentVersions operation returns four IntentMetadata objects in the response, one for each numbered version and one for the $LATEST version.  The GetIntentVersions operation always returns at least one version, the $LATEST version. This operation requires permissions for the lex:GetIntentVersions action.
    public func getIntentVersionsPaginator(_ input: GetIntentVersionsRequest, onPage: @escaping (GetIntentVersionsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: getIntentVersions, tokenKey: \GetIntentVersionsResponse.nextToken, onPage: onPage)
    }

    ///  Returns intent information as follows:    If you specify the nameContains field, returns the $LATEST version of all intents that contain the specified string.    If you don't specify the nameContains field, returns information about the $LATEST version of all intents.     The operation requires permission for the lex:GetIntents action. 
    public func getIntentsPaginator(_ input: GetIntentsRequest, onPage: @escaping (GetIntentsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: getIntents, tokenKey: \GetIntentsResponse.nextToken, onPage: onPage)
    }

    ///  Gets information about all versions of a slot type. The GetSlotTypeVersions operation returns a SlotTypeMetadata object for each version of a slot type. For example, if a slot type has three numbered versions, the GetSlotTypeVersions operation returns four SlotTypeMetadata objects in the response, one for each numbered version and one for the $LATEST version.  The GetSlotTypeVersions operation always returns at least one version, the $LATEST version. This operation requires permissions for the lex:GetSlotTypeVersions action.
    public func getSlotTypeVersionsPaginator(_ input: GetSlotTypeVersionsRequest, onPage: @escaping (GetSlotTypeVersionsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: getSlotTypeVersions, tokenKey: \GetSlotTypeVersionsResponse.nextToken, onPage: onPage)
    }

    ///  Returns slot type information as follows:    If you specify the nameContains field, returns the $LATEST version of all slot types that contain the specified string.    If you don't specify the nameContains field, returns information about the $LATEST version of all slot types.     The operation requires permission for the lex:GetSlotTypes action. 
    public func getSlotTypesPaginator(_ input: GetSlotTypesRequest, onPage: @escaping (GetSlotTypesResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: getSlotTypes, tokenKey: \GetSlotTypesResponse.nextToken, onPage: onPage)
    }

}

extension LexModelBuildingService.GetBotAliasesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> LexModelBuildingService.GetBotAliasesRequest {
        return .init(
            botName: self.botName, 
            maxResults: self.maxResults, 
            nameContains: self.nameContains, 
            nextToken: token
        )

    }
}

extension LexModelBuildingService.GetBotChannelAssociationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> LexModelBuildingService.GetBotChannelAssociationsRequest {
        return .init(
            botAlias: self.botAlias, 
            botName: self.botName, 
            maxResults: self.maxResults, 
            nameContains: self.nameContains, 
            nextToken: token
        )

    }
}

extension LexModelBuildingService.GetBotVersionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> LexModelBuildingService.GetBotVersionsRequest {
        return .init(
            maxResults: self.maxResults, 
            name: self.name, 
            nextToken: token
        )

    }
}

extension LexModelBuildingService.GetBotsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> LexModelBuildingService.GetBotsRequest {
        return .init(
            maxResults: self.maxResults, 
            nameContains: self.nameContains, 
            nextToken: token
        )

    }
}

extension LexModelBuildingService.GetBuiltinIntentsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> LexModelBuildingService.GetBuiltinIntentsRequest {
        return .init(
            locale: self.locale, 
            maxResults: self.maxResults, 
            nextToken: token, 
            signatureContains: self.signatureContains
        )

    }
}

extension LexModelBuildingService.GetBuiltinSlotTypesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> LexModelBuildingService.GetBuiltinSlotTypesRequest {
        return .init(
            locale: self.locale, 
            maxResults: self.maxResults, 
            nextToken: token, 
            signatureContains: self.signatureContains
        )

    }
}

extension LexModelBuildingService.GetIntentVersionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> LexModelBuildingService.GetIntentVersionsRequest {
        return .init(
            maxResults: self.maxResults, 
            name: self.name, 
            nextToken: token
        )

    }
}

extension LexModelBuildingService.GetIntentsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> LexModelBuildingService.GetIntentsRequest {
        return .init(
            maxResults: self.maxResults, 
            nameContains: self.nameContains, 
            nextToken: token
        )

    }
}

extension LexModelBuildingService.GetSlotTypeVersionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> LexModelBuildingService.GetSlotTypeVersionsRequest {
        return .init(
            maxResults: self.maxResults, 
            name: self.name, 
            nextToken: token
        )

    }
}

extension LexModelBuildingService.GetSlotTypesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> LexModelBuildingService.GetSlotTypesRequest {
        return .init(
            maxResults: self.maxResults, 
            nameContains: self.nameContains, 
            nextToken: token
        )

    }
}


