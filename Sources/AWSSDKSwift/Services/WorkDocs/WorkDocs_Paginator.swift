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

extension WorkDocs {

    ///  Retrieves the document versions for the specified document. By default, only active versions are returned.
    public func describeDocumentVersionsPaginator(
        _ input: DescribeDocumentVersionsRequest,
        onPage: @escaping (DescribeDocumentVersionsResponse,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeDocumentVersions, tokenKey: \DescribeDocumentVersionsResponse.marker, onPage: onPage)
    }

    ///  Describes the contents of the specified folder, including its documents and subfolders. By default, Amazon WorkDocs returns the first 100 active document and folder metadata items. If there are more results, the response includes a marker that you can use to request the next set of results. You can also request initialized documents.
    public func describeFolderContentsPaginator(
        _ input: DescribeFolderContentsRequest,
        onPage: @escaping (DescribeFolderContentsResponse,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeFolderContents, tokenKey: \DescribeFolderContentsResponse.marker, onPage: onPage)
    }

    ///  Describes the specified users. You can describe all users or filter the results (for example, by status or organization). By default, Amazon WorkDocs returns the first 24 active or pending users. If there are more results, the response includes a marker that you can use to request the next set of results.
    public func describeUsersPaginator(
        _ input: DescribeUsersRequest,
        onPage: @escaping (DescribeUsersResponse,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeUsers, tokenKey: \DescribeUsersResponse.marker, onPage: onPage)
    }

}

extension WorkDocs.DescribeDocumentVersionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> WorkDocs.DescribeDocumentVersionsRequest {
        return .init(
            authenticationToken: self.authenticationToken,
            documentId: self.documentId,
            fields: self.fields,
            include: self.include,
            limit: self.limit,
            marker: token
        )

    }
}

extension WorkDocs.DescribeFolderContentsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> WorkDocs.DescribeFolderContentsRequest {
        return .init(
            authenticationToken: self.authenticationToken,
            folderId: self.folderId,
            include: self.include,
            limit: self.limit,
            marker: token,
            order: self.order,
            sort: self.sort,
            type: self.type
        )

    }
}

extension WorkDocs.DescribeUsersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> WorkDocs.DescribeUsersRequest {
        return .init(
            authenticationToken: self.authenticationToken,
            fields: self.fields,
            include: self.include,
            limit: self.limit,
            marker: token,
            order: self.order,
            organizationId: self.organizationId,
            query: self.query,
            sort: self.sort,
            userIds: self.userIds
        )

    }
}


