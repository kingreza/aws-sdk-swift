// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

//MARK: Paginators

extension MachineLearning {

    ///  Returns a list of BatchPrediction operations that match the search criteria in the request.
    public func describeBatchPredictionsPaginator(_ input: DescribeBatchPredictionsInput, onPage: @escaping (DescribeBatchPredictionsOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeBatchPredictions, tokenKey: \DescribeBatchPredictionsOutput.nextToken, onPage: onPage)
    }

    ///  Returns a list of DataSource that match the search criteria in the request.
    public func describeDataSourcesPaginator(_ input: DescribeDataSourcesInput, onPage: @escaping (DescribeDataSourcesOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeDataSources, tokenKey: \DescribeDataSourcesOutput.nextToken, onPage: onPage)
    }

    ///  Returns a list of DescribeEvaluations that match the search criteria in the request.
    public func describeEvaluationsPaginator(_ input: DescribeEvaluationsInput, onPage: @escaping (DescribeEvaluationsOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeEvaluations, tokenKey: \DescribeEvaluationsOutput.nextToken, onPage: onPage)
    }

    ///  Returns a list of MLModel that match the search criteria in the request.
    public func describeMLModelsPaginator(_ input: DescribeMLModelsInput, onPage: @escaping (DescribeMLModelsOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeMLModels, tokenKey: \DescribeMLModelsOutput.nextToken, onPage: onPage)
    }

}

extension MachineLearning.DescribeBatchPredictionsInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> MachineLearning.DescribeBatchPredictionsInput {
        return .init(
            eq: self.eq, 
            filterVariable: self.filterVariable, 
            ge: self.ge, 
            gt: self.gt, 
            le: self.le, 
            limit: self.limit, 
            lt: self.lt, 
            ne: self.ne, 
            nextToken: token, 
            prefix: self.prefix, 
            sortOrder: self.sortOrder
        )

    }
}

extension MachineLearning.DescribeDataSourcesInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> MachineLearning.DescribeDataSourcesInput {
        return .init(
            eq: self.eq, 
            filterVariable: self.filterVariable, 
            ge: self.ge, 
            gt: self.gt, 
            le: self.le, 
            limit: self.limit, 
            lt: self.lt, 
            ne: self.ne, 
            nextToken: token, 
            prefix: self.prefix, 
            sortOrder: self.sortOrder
        )

    }
}

extension MachineLearning.DescribeEvaluationsInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> MachineLearning.DescribeEvaluationsInput {
        return .init(
            eq: self.eq, 
            filterVariable: self.filterVariable, 
            ge: self.ge, 
            gt: self.gt, 
            le: self.le, 
            limit: self.limit, 
            lt: self.lt, 
            ne: self.ne, 
            nextToken: token, 
            prefix: self.prefix, 
            sortOrder: self.sortOrder
        )

    }
}

extension MachineLearning.DescribeMLModelsInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> MachineLearning.DescribeMLModelsInput {
        return .init(
            eq: self.eq, 
            filterVariable: self.filterVariable, 
            ge: self.ge, 
            gt: self.gt, 
            le: self.le, 
            limit: self.limit, 
            lt: self.lt, 
            ne: self.ne, 
            nextToken: token, 
            prefix: self.prefix, 
            sortOrder: self.sortOrder
        )

    }
}


