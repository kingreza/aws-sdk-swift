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

extension DeviceFarm {

    ///  Gets the current status and future status of all offerings purchased by an AWS account. The response indicates how many offerings are currently available and the offerings that will be available in the next period. The API returns a NotEligible error if the user is not permitted to invoke the operation. If you must be able to invoke this operation, contact aws-devicefarm-support@amazon.com.
    public func getOfferingStatusPaginator(_ input: GetOfferingStatusRequest, onPage: @escaping (GetOfferingStatusResult, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: getOfferingStatus, tokenKey: \GetOfferingStatusResult.nextToken, onPage: onPage)
    }

    ///  Gets information about artifacts.
    public func listArtifactsPaginator(_ input: ListArtifactsRequest, onPage: @escaping (ListArtifactsResult, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listArtifacts, tokenKey: \ListArtifactsResult.nextToken, onPage: onPage)
    }

    ///  Gets information about device pools.
    public func listDevicePoolsPaginator(_ input: ListDevicePoolsRequest, onPage: @escaping (ListDevicePoolsResult, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listDevicePools, tokenKey: \ListDevicePoolsResult.nextToken, onPage: onPage)
    }

    ///  Gets information about unique device types.
    public func listDevicesPaginator(_ input: ListDevicesRequest, onPage: @escaping (ListDevicesResult, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listDevices, tokenKey: \ListDevicesResult.nextToken, onPage: onPage)
    }

    ///  Gets information about jobs for a given test run.
    public func listJobsPaginator(_ input: ListJobsRequest, onPage: @escaping (ListJobsResult, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listJobs, tokenKey: \ListJobsResult.nextToken, onPage: onPage)
    }

    ///  Returns a list of all historical purchases, renewals, and system renewal transactions for an AWS account. The list is paginated and ordered by a descending timestamp (most recent transactions are first). The API returns a NotEligible error if the user is not permitted to invoke the operation. If you must be able to invoke this operation, contact aws-devicefarm-support@amazon.com.
    public func listOfferingTransactionsPaginator(_ input: ListOfferingTransactionsRequest, onPage: @escaping (ListOfferingTransactionsResult, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listOfferingTransactions, tokenKey: \ListOfferingTransactionsResult.nextToken, onPage: onPage)
    }

    ///  Returns a list of products or offerings that the user can manage through the API. Each offering record indicates the recurring price per unit and the frequency for that offering. The API returns a NotEligible error if the user is not permitted to invoke the operation. If you must be able to invoke this operation, contact aws-devicefarm-support@amazon.com.
    public func listOfferingsPaginator(_ input: ListOfferingsRequest, onPage: @escaping (ListOfferingsResult, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listOfferings, tokenKey: \ListOfferingsResult.nextToken, onPage: onPage)
    }

    ///  Gets information about projects.
    public func listProjectsPaginator(_ input: ListProjectsRequest, onPage: @escaping (ListProjectsResult, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listProjects, tokenKey: \ListProjectsResult.nextToken, onPage: onPage)
    }

    ///  Gets information about runs, given an AWS Device Farm project ARN.
    public func listRunsPaginator(_ input: ListRunsRequest, onPage: @escaping (ListRunsResult, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listRuns, tokenKey: \ListRunsResult.nextToken, onPage: onPage)
    }

    ///  Gets information about samples, given an AWS Device Farm job ARN.
    public func listSamplesPaginator(_ input: ListSamplesRequest, onPage: @escaping (ListSamplesResult, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listSamples, tokenKey: \ListSamplesResult.nextToken, onPage: onPage)
    }

    ///  Gets information about test suites for a given job.
    public func listSuitesPaginator(_ input: ListSuitesRequest, onPage: @escaping (ListSuitesResult, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listSuites, tokenKey: \ListSuitesResult.nextToken, onPage: onPage)
    }

    ///  Gets a list of all Selenium testing projects in your account.
    public func listTestGridProjectsPaginator(_ input: ListTestGridProjectsRequest, onPage: @escaping (ListTestGridProjectsResult, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listTestGridProjects, tokenKey: \ListTestGridProjectsResult.nextToken, onPage: onPage)
    }

    ///  Returns a list of the actions taken in a TestGridSession.
    public func listTestGridSessionActionsPaginator(_ input: ListTestGridSessionActionsRequest, onPage: @escaping (ListTestGridSessionActionsResult, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listTestGridSessionActions, tokenKey: \ListTestGridSessionActionsResult.nextToken, onPage: onPage)
    }

    ///  Retrieves a list of artifacts created during the session.
    public func listTestGridSessionArtifactsPaginator(_ input: ListTestGridSessionArtifactsRequest, onPage: @escaping (ListTestGridSessionArtifactsResult, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listTestGridSessionArtifacts, tokenKey: \ListTestGridSessionArtifactsResult.nextToken, onPage: onPage)
    }

    ///  Retrieves a list of sessions for a TestGridProject.
    public func listTestGridSessionsPaginator(_ input: ListTestGridSessionsRequest, onPage: @escaping (ListTestGridSessionsResult, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listTestGridSessions, tokenKey: \ListTestGridSessionsResult.nextToken, onPage: onPage)
    }

    ///  Gets information about tests in a given test suite.
    public func listTestsPaginator(_ input: ListTestsRequest, onPage: @escaping (ListTestsResult, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listTests, tokenKey: \ListTestsResult.nextToken, onPage: onPage)
    }

    ///  Gets information about unique problems, such as exceptions or crashes. Unique problems are defined as a single instance of an error across a run, job, or suite. For example, if a call in your application consistently raises an exception (OutOfBoundsException in MyActivity.java:386), ListUniqueProblems returns a single entry instead of many individual entries for that exception.
    public func listUniqueProblemsPaginator(_ input: ListUniqueProblemsRequest, onPage: @escaping (ListUniqueProblemsResult, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listUniqueProblems, tokenKey: \ListUniqueProblemsResult.nextToken, onPage: onPage)
    }

    ///  Gets information about uploads, given an AWS Device Farm project ARN.
    public func listUploadsPaginator(_ input: ListUploadsRequest, onPage: @escaping (ListUploadsResult, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listUploads, tokenKey: \ListUploadsResult.nextToken, onPage: onPage)
    }

}

extension DeviceFarm.GetOfferingStatusRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DeviceFarm.GetOfferingStatusRequest {
        return .init(
            nextToken: token
        )

    }
}

extension DeviceFarm.ListArtifactsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DeviceFarm.ListArtifactsRequest {
        return .init(
            arn: self.arn, 
            nextToken: token, 
            type: self.type
        )

    }
}

extension DeviceFarm.ListDevicePoolsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DeviceFarm.ListDevicePoolsRequest {
        return .init(
            arn: self.arn, 
            nextToken: token, 
            type: self.type
        )

    }
}

extension DeviceFarm.ListDevicesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DeviceFarm.ListDevicesRequest {
        return .init(
            arn: self.arn, 
            filters: self.filters, 
            nextToken: token
        )

    }
}

extension DeviceFarm.ListJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DeviceFarm.ListJobsRequest {
        return .init(
            arn: self.arn, 
            nextToken: token
        )

    }
}

extension DeviceFarm.ListOfferingTransactionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DeviceFarm.ListOfferingTransactionsRequest {
        return .init(
            nextToken: token
        )

    }
}

extension DeviceFarm.ListOfferingsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DeviceFarm.ListOfferingsRequest {
        return .init(
            nextToken: token
        )

    }
}

extension DeviceFarm.ListProjectsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DeviceFarm.ListProjectsRequest {
        return .init(
            arn: self.arn, 
            nextToken: token
        )

    }
}

extension DeviceFarm.ListRunsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DeviceFarm.ListRunsRequest {
        return .init(
            arn: self.arn, 
            nextToken: token
        )

    }
}

extension DeviceFarm.ListSamplesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DeviceFarm.ListSamplesRequest {
        return .init(
            arn: self.arn, 
            nextToken: token
        )

    }
}

extension DeviceFarm.ListSuitesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DeviceFarm.ListSuitesRequest {
        return .init(
            arn: self.arn, 
            nextToken: token
        )

    }
}

extension DeviceFarm.ListTestGridProjectsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DeviceFarm.ListTestGridProjectsRequest {
        return .init(
            maxResult: self.maxResult, 
            nextToken: token
        )

    }
}

extension DeviceFarm.ListTestGridSessionActionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DeviceFarm.ListTestGridSessionActionsRequest {
        return .init(
            maxResult: self.maxResult, 
            nextToken: token, 
            sessionArn: self.sessionArn
        )

    }
}

extension DeviceFarm.ListTestGridSessionArtifactsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DeviceFarm.ListTestGridSessionArtifactsRequest {
        return .init(
            maxResult: self.maxResult, 
            nextToken: token, 
            sessionArn: self.sessionArn, 
            type: self.type
        )

    }
}

extension DeviceFarm.ListTestGridSessionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DeviceFarm.ListTestGridSessionsRequest {
        return .init(
            creationTimeAfter: self.creationTimeAfter, 
            creationTimeBefore: self.creationTimeBefore, 
            endTimeAfter: self.endTimeAfter, 
            endTimeBefore: self.endTimeBefore, 
            maxResult: self.maxResult, 
            nextToken: token, 
            projectArn: self.projectArn, 
            status: self.status
        )

    }
}

extension DeviceFarm.ListTestsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DeviceFarm.ListTestsRequest {
        return .init(
            arn: self.arn, 
            nextToken: token
        )

    }
}

extension DeviceFarm.ListUniqueProblemsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DeviceFarm.ListUniqueProblemsRequest {
        return .init(
            arn: self.arn, 
            nextToken: token
        )

    }
}

extension DeviceFarm.ListUploadsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> DeviceFarm.ListUploadsRequest {
        return .init(
            arn: self.arn, 
            nextToken: token, 
            type: self.type
        )

    }
}


