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

extension DirectoryService {

    ///  Provides information about any domain controllers in your directory.
    public func describeDomainControllersPaginator(
        _ input: DescribeDomainControllersRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DescribeDomainControllersResult,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeDomainControllers, tokenKey: \DescribeDomainControllersResult.nextToken, on: eventLoop, onPage: onPage)
    }

}

extension DirectoryService.DescribeDomainControllersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DirectoryService.DescribeDomainControllersRequest {
        return .init(
            directoryId: self.directoryId,
            domainControllerIds: self.domainControllerIds,
            limit: self.limit,
            nextToken: token
        )

    }
}


