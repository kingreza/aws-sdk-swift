// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

//MARK: Paginators

extension MigrationHubConfig {

    ///  This API permits filtering on the ControlId, HomeRegion, and RegionControlScope fields.
    public func describeHomeRegionControlsPaginator(_ input: DescribeHomeRegionControlsRequest, onPage: @escaping (DescribeHomeRegionControlsResult, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeHomeRegionControls, tokenKey: \DescribeHomeRegionControlsResult.nextToken, onPage: onPage)
    }

}

extension MigrationHubConfig.DescribeHomeRegionControlsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> MigrationHubConfig.DescribeHomeRegionControlsRequest {
        return .init(
            controlId: self.controlId, 
            homeRegion: self.homeRegion, 
            maxResults: self.maxResults, 
            nextToken: token, 
            target: self.target
        )

    }
}


