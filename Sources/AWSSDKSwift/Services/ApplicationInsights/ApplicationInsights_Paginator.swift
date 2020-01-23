// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

//MARK: Paginators

extension ApplicationInsights {

    ///  Lists the IDs of the applications that you are monitoring. 
    public func listApplicationsPaginator(_ input: ListApplicationsRequest, onPage: @escaping (ListApplicationsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listApplications, tokenKey: \ListApplicationsResponse.nextToken, onPage: onPage)
    }

    ///  Lists the auto-grouped, standalone, and custom components of the application.
    public func listComponentsPaginator(_ input: ListComponentsRequest, onPage: @escaping (ListComponentsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listComponents, tokenKey: \ListComponentsResponse.nextToken, onPage: onPage)
    }

    ///  Lists the log pattern sets in the specific application.
    public func listLogPatternSetsPaginator(_ input: ListLogPatternSetsRequest, onPage: @escaping (ListLogPatternSetsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listLogPatternSets, tokenKey: \ListLogPatternSetsResponse.nextToken, onPage: onPage)
    }

    ///  Lists the log patterns in the specific log LogPatternSet.
    public func listLogPatternsPaginator(_ input: ListLogPatternsRequest, onPage: @escaping (ListLogPatternsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listLogPatterns, tokenKey: \ListLogPatternsResponse.nextToken, onPage: onPage)
    }

    ///  Lists the problems with your application.
    public func listProblemsPaginator(_ input: ListProblemsRequest, onPage: @escaping (ListProblemsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listProblems, tokenKey: \ListProblemsResponse.nextToken, onPage: onPage)
    }

}

extension ApplicationInsights.ListApplicationsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> ApplicationInsights.ListApplicationsRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension ApplicationInsights.ListComponentsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> ApplicationInsights.ListComponentsRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token, 
            resourceGroupName: self.resourceGroupName
        )

    }
}

extension ApplicationInsights.ListLogPatternSetsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> ApplicationInsights.ListLogPatternSetsRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token, 
            resourceGroupName: self.resourceGroupName
        )

    }
}

extension ApplicationInsights.ListLogPatternsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> ApplicationInsights.ListLogPatternsRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token, 
            patternSetName: self.patternSetName, 
            resourceGroupName: self.resourceGroupName
        )

    }
}

extension ApplicationInsights.ListProblemsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> ApplicationInsights.ListProblemsRequest {
        return .init(
            endTime: self.endTime, 
            maxResults: self.maxResults, 
            nextToken: token, 
            resourceGroupName: self.resourceGroupName, 
            startTime: self.startTime
        )

    }
}


