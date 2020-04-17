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

extension Athena {

    ///  Streams the results of a single query execution specified by QueryExecutionId from the Athena query results location in Amazon S3. For more information, see Query Results in the Amazon Athena User Guide. This request does not execute the query but returns results. Use StartQueryExecution to run a query. To stream query results successfully, the IAM principal with permission to call GetQueryResults also must have permissions to the Amazon S3 GetObject action for the Athena query results location.  IAM principals with permission to the Amazon S3 GetObject action for the query results location are able to retrieve query results from Amazon S3 even if permission to the GetQueryResults action is denied. To restrict user or role access, ensure that Amazon S3 permissions to the Athena query location are denied. 
    public func getQueryResultsPaginator(
        _ input: GetQueryResultsInput,
        onPage: @escaping (GetQueryResultsOutput,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: getQueryResults, tokenKey: \GetQueryResultsOutput.nextToken, onPage: onPage)
    }

    ///  Provides a list of available query IDs only for queries saved in the specified workgroup. Requires that you have access to the workgroup. If a workgroup is not specified, lists the saved queries for the primary workgroup. For code samples using the AWS SDK for Java, see Examples and Code Samples in the Amazon Athena User Guide.
    public func listNamedQueriesPaginator(
        _ input: ListNamedQueriesInput,
        onPage: @escaping (ListNamedQueriesOutput,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listNamedQueries, tokenKey: \ListNamedQueriesOutput.nextToken, onPage: onPage)
    }

    ///  Provides a list of available query execution IDs for the queries in the specified workgroup. If a workgroup is not specified, returns a list of query execution IDs for the primary workgroup. Requires you to have access to the workgroup in which the queries ran. For code samples using the AWS SDK for Java, see Examples and Code Samples in the Amazon Athena User Guide.
    public func listQueryExecutionsPaginator(
        _ input: ListQueryExecutionsInput,
        onPage: @escaping (ListQueryExecutionsOutput,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listQueryExecutions, tokenKey: \ListQueryExecutionsOutput.nextToken, onPage: onPage)
    }

    ///  Lists available workgroups for the account.
    public func listWorkGroupsPaginator(
        _ input: ListWorkGroupsInput,
        onPage: @escaping (ListWorkGroupsOutput,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listWorkGroups, tokenKey: \ListWorkGroupsOutput.nextToken, onPage: onPage)
    }

}

extension Athena.GetQueryResultsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Athena.GetQueryResultsInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            queryExecutionId: self.queryExecutionId
        )

    }
}

extension Athena.ListNamedQueriesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Athena.ListNamedQueriesInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            workGroup: self.workGroup
        )

    }
}

extension Athena.ListQueryExecutionsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Athena.ListQueryExecutionsInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            workGroup: self.workGroup
        )

    }
}

extension Athena.ListWorkGroupsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Athena.ListWorkGroupsInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}


