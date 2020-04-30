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

extension SWF {

    ///  Returns the history of the specified workflow execution. The results may be split into multiple pages. To retrieve subsequent pages, make the call again using the nextPageToken returned by the initial call.  This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.   Access Control  You can use IAM policies to control this action's access to Amazon SWF resources as follows:   Use a Resource element with the domain name to limit the action to only specified domains.   Use an Action element to allow or deny permission to call this action.   You cannot use an IAM policy to constrain this action's parameters.   If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's cause parameter is set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see Using IAM to Manage Access to Amazon SWF Workflows in the Amazon SWF Developer Guide.
    public func getWorkflowExecutionHistoryPaginator(
        _ input: GetWorkflowExecutionHistoryInput,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (History,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: getWorkflowExecutionHistory, tokenKey: \History.nextPageToken, on: eventLoop, onPage: onPage)
    }

    ///  Returns information about all activities registered in the specified domain that match the specified name and registration status. The result includes information like creation date, current status of the activity, etc. The results may be split into multiple pages. To retrieve subsequent pages, make the call again using the nextPageToken returned by the initial call.  Access Control  You can use IAM policies to control this action's access to Amazon SWF resources as follows:   Use a Resource element with the domain name to limit the action to only specified domains.   Use an Action element to allow or deny permission to call this action.   You cannot use an IAM policy to constrain this action's parameters.   If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's cause parameter is set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see Using IAM to Manage Access to Amazon SWF Workflows in the Amazon SWF Developer Guide.
    public func listActivityTypesPaginator(
        _ input: ListActivityTypesInput,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ActivityTypeInfos,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listActivityTypes, tokenKey: \ActivityTypeInfos.nextPageToken, on: eventLoop, onPage: onPage)
    }

    ///  Returns a list of closed workflow executions in the specified domain that meet the filtering criteria. The results may be split into multiple pages. To retrieve subsequent pages, make the call again using the nextPageToken returned by the initial call.  This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.   Access Control  You can use IAM policies to control this action's access to Amazon SWF resources as follows:   Use a Resource element with the domain name to limit the action to only specified domains.   Use an Action element to allow or deny permission to call this action.   Constrain the following parameters by using a Condition element with the appropriate keys.    tagFilter.tag: String constraint. The key is swf:tagFilter.tag.    typeFilter.name: String constraint. The key is swf:typeFilter.name.    typeFilter.version: String constraint. The key is swf:typeFilter.version.     If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's cause parameter is set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see Using IAM to Manage Access to Amazon SWF Workflows in the Amazon SWF Developer Guide.
    public func listClosedWorkflowExecutionsPaginator(
        _ input: ListClosedWorkflowExecutionsInput,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (WorkflowExecutionInfos,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listClosedWorkflowExecutions, tokenKey: \WorkflowExecutionInfos.nextPageToken, on: eventLoop, onPage: onPage)
    }

    ///  Returns the list of domains registered in the account. The results may be split into multiple pages. To retrieve subsequent pages, make the call again using the nextPageToken returned by the initial call.  This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.   Access Control  You can use IAM policies to control this action's access to Amazon SWF resources as follows:   Use a Resource element with the domain name to limit the action to only specified domains. The element must be set to arn:aws:swf::AccountID:domain/*, where AccountID is the account ID, with no dashes.   Use an Action element to allow or deny permission to call this action.   You cannot use an IAM policy to constrain this action's parameters.   If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's cause parameter is set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see Using IAM to Manage Access to Amazon SWF Workflows in the Amazon SWF Developer Guide.
    public func listDomainsPaginator(
        _ input: ListDomainsInput,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DomainInfos,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listDomains, tokenKey: \DomainInfos.nextPageToken, on: eventLoop, onPage: onPage)
    }

    ///  Returns a list of open workflow executions in the specified domain that meet the filtering criteria. The results may be split into multiple pages. To retrieve subsequent pages, make the call again using the nextPageToken returned by the initial call.  This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.   Access Control  You can use IAM policies to control this action's access to Amazon SWF resources as follows:   Use a Resource element with the domain name to limit the action to only specified domains.   Use an Action element to allow or deny permission to call this action.   Constrain the following parameters by using a Condition element with the appropriate keys.    tagFilter.tag: String constraint. The key is swf:tagFilter.tag.    typeFilter.name: String constraint. The key is swf:typeFilter.name.    typeFilter.version: String constraint. The key is swf:typeFilter.version.     If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's cause parameter is set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see Using IAM to Manage Access to Amazon SWF Workflows in the Amazon SWF Developer Guide.
    public func listOpenWorkflowExecutionsPaginator(
        _ input: ListOpenWorkflowExecutionsInput,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (WorkflowExecutionInfos,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listOpenWorkflowExecutions, tokenKey: \WorkflowExecutionInfos.nextPageToken, on: eventLoop, onPage: onPage)
    }

    ///  Returns information about workflow types in the specified domain. The results may be split into multiple pages that can be retrieved by making the call repeatedly.  Access Control  You can use IAM policies to control this action's access to Amazon SWF resources as follows:   Use a Resource element with the domain name to limit the action to only specified domains.   Use an Action element to allow or deny permission to call this action.   You cannot use an IAM policy to constrain this action's parameters.   If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's cause parameter is set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see Using IAM to Manage Access to Amazon SWF Workflows in the Amazon SWF Developer Guide.
    public func listWorkflowTypesPaginator(
        _ input: ListWorkflowTypesInput,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (WorkflowTypeInfos,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listWorkflowTypes, tokenKey: \WorkflowTypeInfos.nextPageToken, on: eventLoop, onPage: onPage)
    }

    ///  Used by deciders to get a DecisionTask from the specified decision taskList. A decision task may be returned for any open workflow execution that is using the specified task list. The task includes a paginated view of the history of the workflow execution. The decider should use the workflow type and the history to determine how to properly handle the task. This action initiates a long poll, where the service holds the HTTP connection open and responds as soon a task becomes available. If no decision task is available in the specified task list before the timeout of 60 seconds expires, an empty result is returned. An empty result, in this context, means that a DecisionTask is returned, but that the value of taskToken is an empty string.  Deciders should set their client side socket timeout to at least 70 seconds (10 seconds higher than the timeout).   Because the number of workflow history events for a single workflow execution might be very large, the result returned might be split up across a number of pages. To retrieve subsequent pages, make additional calls to PollForDecisionTask using the nextPageToken returned by the initial call. Note that you do not call GetWorkflowExecutionHistory with this nextPageToken. Instead, call PollForDecisionTask again.   Access Control  You can use IAM policies to control this action's access to Amazon SWF resources as follows:   Use a Resource element with the domain name to limit the action to only specified domains.   Use an Action element to allow or deny permission to call this action.   Constrain the taskList.name parameter by using a Condition element with the swf:taskList.name key to allow the action to access only certain task lists.   If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's cause parameter is set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see Using IAM to Manage Access to Amazon SWF Workflows in the Amazon SWF Developer Guide.
    public func pollForDecisionTaskPaginator(
        _ input: PollForDecisionTaskInput,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DecisionTask,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: pollForDecisionTask, tokenKey: \DecisionTask.nextPageToken, on: eventLoop, onPage: onPage)
    }

}

extension SWF.GetWorkflowExecutionHistoryInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SWF.GetWorkflowExecutionHistoryInput {
        return .init(
            domain: self.domain,
            execution: self.execution,
            maximumPageSize: self.maximumPageSize,
            nextPageToken: token,
            reverseOrder: self.reverseOrder
        )

    }
}

extension SWF.ListActivityTypesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SWF.ListActivityTypesInput {
        return .init(
            domain: self.domain,
            maximumPageSize: self.maximumPageSize,
            name: self.name,
            nextPageToken: token,
            registrationStatus: self.registrationStatus,
            reverseOrder: self.reverseOrder
        )

    }
}

extension SWF.ListClosedWorkflowExecutionsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SWF.ListClosedWorkflowExecutionsInput {
        return .init(
            closeStatusFilter: self.closeStatusFilter,
            closeTimeFilter: self.closeTimeFilter,
            domain: self.domain,
            executionFilter: self.executionFilter,
            maximumPageSize: self.maximumPageSize,
            nextPageToken: token,
            reverseOrder: self.reverseOrder,
            startTimeFilter: self.startTimeFilter,
            tagFilter: self.tagFilter,
            typeFilter: self.typeFilter
        )

    }
}

extension SWF.ListDomainsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SWF.ListDomainsInput {
        return .init(
            maximumPageSize: self.maximumPageSize,
            nextPageToken: token,
            registrationStatus: self.registrationStatus,
            reverseOrder: self.reverseOrder
        )

    }
}

extension SWF.ListOpenWorkflowExecutionsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SWF.ListOpenWorkflowExecutionsInput {
        return .init(
            domain: self.domain,
            executionFilter: self.executionFilter,
            maximumPageSize: self.maximumPageSize,
            nextPageToken: token,
            reverseOrder: self.reverseOrder,
            startTimeFilter: self.startTimeFilter,
            tagFilter: self.tagFilter,
            typeFilter: self.typeFilter
        )

    }
}

extension SWF.ListWorkflowTypesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SWF.ListWorkflowTypesInput {
        return .init(
            domain: self.domain,
            maximumPageSize: self.maximumPageSize,
            name: self.name,
            nextPageToken: token,
            registrationStatus: self.registrationStatus,
            reverseOrder: self.reverseOrder
        )

    }
}

extension SWF.PollForDecisionTaskInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SWF.PollForDecisionTaskInput {
        return .init(
            domain: self.domain,
            identity: self.identity,
            maximumPageSize: self.maximumPageSize,
            nextPageToken: token,
            reverseOrder: self.reverseOrder,
            taskList: self.taskList
        )

    }
}


