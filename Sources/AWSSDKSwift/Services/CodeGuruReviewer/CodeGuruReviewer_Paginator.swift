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

extension CodeGuruReviewer {

    ///  Lists repository associations. You can optionally filter on one or more of the following recommendation properties: provider types, states, names, and owners.
    public func listRepositoryAssociationsPaginator(_ input: ListRepositoryAssociationsRequest, onPage: @escaping (ListRepositoryAssociationsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listRepositoryAssociations, tokenKey: \ListRepositoryAssociationsResponse.nextToken, onPage: onPage)
    }

}

extension CodeGuruReviewer.ListRepositoryAssociationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeGuruReviewer.ListRepositoryAssociationsRequest {
        return .init(
            maxResults: self.maxResults, 
            names: self.names, 
            nextToken: token, 
            owners: self.owners, 
            providerTypes: self.providerTypes, 
            states: self.states
        )

    }
}


