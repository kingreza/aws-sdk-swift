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

extension Pricing {

    ///  Returns the metadata for one service or a list of the metadata for all services. Use this without a service code to get the service codes for all services. Use it with a service code, such as AmazonEC2, to get information specific to that service, such as the attribute names available for that service. For example, some of the attribute names available for EC2 are volumeType, maxIopsVolume, operation, locationType, and instanceCapacity10xlarge.
    public func describeServicesPaginator(
        _ input: DescribeServicesRequest,
        onPage: @escaping (DescribeServicesResponse,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeServices, tokenKey: \DescribeServicesResponse.nextToken, onPage: onPage)
    }

    ///  Returns a list of attribute values. Attibutes are similar to the details in a Price List API offer file. For a list of available attributes, see Offer File Definitions in the AWS Billing and Cost Management User Guide.
    public func getAttributeValuesPaginator(
        _ input: GetAttributeValuesRequest,
        onPage: @escaping (GetAttributeValuesResponse,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: getAttributeValues, tokenKey: \GetAttributeValuesResponse.nextToken, onPage: onPage)
    }

    ///  Returns a list of all products that match the filter criteria.
    public func getProductsPaginator(
        _ input: GetProductsRequest,
        onPage: @escaping (GetProductsResponse,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: getProducts, tokenKey: \GetProductsResponse.nextToken, onPage: onPage)
    }

}

extension Pricing.DescribeServicesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Pricing.DescribeServicesRequest {
        return .init(
            formatVersion: self.formatVersion,
            maxResults: self.maxResults,
            nextToken: token,
            serviceCode: self.serviceCode
        )

    }
}

extension Pricing.GetAttributeValuesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Pricing.GetAttributeValuesRequest {
        return .init(
            attributeName: self.attributeName,
            maxResults: self.maxResults,
            nextToken: token,
            serviceCode: self.serviceCode
        )

    }
}

extension Pricing.GetProductsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Pricing.GetProductsRequest {
        return .init(
            filters: self.filters,
            formatVersion: self.formatVersion,
            maxResults: self.maxResults,
            nextToken: token,
            serviceCode: self.serviceCode
        )

    }
}


