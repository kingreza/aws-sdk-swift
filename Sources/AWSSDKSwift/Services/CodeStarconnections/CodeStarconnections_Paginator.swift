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

extension CodeStarconnections {

    ///  Lists the connections associated with your account.
    public func listConnectionsPaginator(
        _ input: ListConnectionsInput,
        onPage: @escaping (ListConnectionsOutput,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listConnections, tokenKey: \ListConnectionsOutput.nextToken, onPage: onPage)
    }

}

extension CodeStarconnections.ListConnectionsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CodeStarconnections.ListConnectionsInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            providerTypeFilter: self.providerTypeFilter
        )

    }
}


