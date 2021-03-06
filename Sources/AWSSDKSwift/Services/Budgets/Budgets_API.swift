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

@_exported import AWSSDKSwiftCore
import NIO

/**
Client object for interacting with AWS Budgets service.

The AWS Budgets API enables you to use AWS Budgets to plan your service usage, service costs, and instance reservations. The API reference provides descriptions, syntax, and usage examples for each of the actions and data types for AWS Budgets.  Budgets provide you with a way to see the following information:   How close your plan is to your budgeted amount or to the free tier limits   Your usage-to-date, including how much you've used of your Reserved Instances (RIs)   Your current estimated charges from AWS, and how much your predicted usage will accrue in charges by the end of the month   How much of your budget has been used   AWS updates your budget status several times a day. Budgets track your unblended costs, subscriptions, refunds, and RIs. You can create the following types of budgets:    Cost budgets - Plan how much you want to spend on a service.    Usage budgets - Plan how much you want to use one or more services.    RI utilization budgets - Define a utilization threshold, and receive alerts when your RI usage falls below that threshold. This lets you see if your RIs are unused or under-utilized.    RI coverage budgets - Define a coverage threshold, and receive alerts when the number of your instance hours that are covered by RIs fall below that threshold. This lets you see how much of your instance usage is covered by a reservation.   Service Endpoint The AWS Budgets API provides the following endpoint:   https://budgets.amazonaws.com   For information about costs that are associated with the AWS Budgets API, see AWS Cost Management Pricing.
*/
public struct Budgets {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the Budgets client
    /// - parameters:
    ///     - accessKeyId: Public access key provided by AWS
    ///     - secretAccessKey: Private access key provided by AWS
    ///     - sessionToken: Token provided by STS.AssumeRole() which allows access to another AWS account
    ///     - region: Region of server you want to communicate with
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - middlewares: Array of middlewares to apply to requests and responses
    ///     - httpClientProvider: HTTPClient to use. Use `createNew` if the client should manage its own HTTPClient.
    public init(
        accessKeyId: String? = nil,
        secretAccessKey: String? = nil,
        sessionToken: String? = nil,
        region: AWSSDKSwiftCore.Region? = nil,
        endpoint: String? = nil,
        middlewares: [AWSServiceMiddleware] = [],
        httpClientProvider: AWSClient.HTTPClientProvider = .createNew
    ) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: nil,
            partition: region?.partition ?? .aws,
            amzTarget: "AWSBudgetServiceGateway",
            service: "budgets",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2016-10-20",
            endpoint: endpoint,
            serviceEndpoints: ["aws-global": "budgets.amazonaws.com"],
            partitionEndpoints: [.aws: (endpoint: "aws-global", region: .useast1)],
            middlewares: middlewares,
            possibleErrorTypes: [BudgetsErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Creates a budget and, if included, notifications and subscribers.   Only one of BudgetLimit or PlannedBudgetLimits can be present in the syntax at one time. Use the syntax that matches your case. The Request Syntax section shows the BudgetLimit syntax. For PlannedBudgetLimits, see the Examples section.  
    public func createBudget(_ input: CreateBudgetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBudgetResponse> {
        return client.send(operation: "CreateBudget", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a notification. You must create the budget before you create the associated notification.
    public func createNotification(_ input: CreateNotificationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateNotificationResponse> {
        return client.send(operation: "CreateNotification", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a subscriber. You must create the associated budget and notification before you create the subscriber.
    public func createSubscriber(_ input: CreateSubscriberRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSubscriberResponse> {
        return client.send(operation: "CreateSubscriber", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes a budget. You can delete your budget at any time.  Deleting a budget also deletes the notifications and subscribers that are associated with that budget. 
    public func deleteBudget(_ input: DeleteBudgetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteBudgetResponse> {
        return client.send(operation: "DeleteBudget", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes a notification.  Deleting a notification also deletes the subscribers that are associated with the notification. 
    public func deleteNotification(_ input: DeleteNotificationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteNotificationResponse> {
        return client.send(operation: "DeleteNotification", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes a subscriber.  Deleting the last subscriber to a notification also deletes the notification. 
    public func deleteSubscriber(_ input: DeleteSubscriberRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteSubscriberResponse> {
        return client.send(operation: "DeleteSubscriber", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes a budget.  The Request Syntax section shows the BudgetLimit syntax. For PlannedBudgetLimits, see the Examples section.  
    public func describeBudget(_ input: DescribeBudgetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBudgetResponse> {
        return client.send(operation: "DescribeBudget", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes the history for DAILY, MONTHLY, and QUARTERLY budgets. Budget history isn't available for ANNUAL budgets.
    public func describeBudgetPerformanceHistory(_ input: DescribeBudgetPerformanceHistoryRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBudgetPerformanceHistoryResponse> {
        return client.send(operation: "DescribeBudgetPerformanceHistory", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists the budgets that are associated with an account.  The Request Syntax section shows the BudgetLimit syntax. For PlannedBudgetLimits, see the Examples section.  
    public func describeBudgets(_ input: DescribeBudgetsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBudgetsResponse> {
        return client.send(operation: "DescribeBudgets", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists the notifications that are associated with a budget.
    public func describeNotificationsForBudget(_ input: DescribeNotificationsForBudgetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNotificationsForBudgetResponse> {
        return client.send(operation: "DescribeNotificationsForBudget", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists the subscribers that are associated with a notification.
    public func describeSubscribersForNotification(_ input: DescribeSubscribersForNotificationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSubscribersForNotificationResponse> {
        return client.send(operation: "DescribeSubscribersForNotification", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates a budget. You can change every part of a budget except for the budgetName and the calculatedSpend. When you modify a budget, the calculatedSpend drops to zero until AWS has new usage data to use for forecasting.  Only one of BudgetLimit or PlannedBudgetLimits can be present in the syntax at one time. Use the syntax that matches your case. The Request Syntax section shows the BudgetLimit syntax. For PlannedBudgetLimits, see the Examples section.  
    public func updateBudget(_ input: UpdateBudgetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateBudgetResponse> {
        return client.send(operation: "UpdateBudget", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates a notification.
    public func updateNotification(_ input: UpdateNotificationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateNotificationResponse> {
        return client.send(operation: "UpdateNotification", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates a subscriber.
    public func updateSubscriber(_ input: UpdateSubscriberRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateSubscriberResponse> {
        return client.send(operation: "UpdateSubscriber", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }
}
