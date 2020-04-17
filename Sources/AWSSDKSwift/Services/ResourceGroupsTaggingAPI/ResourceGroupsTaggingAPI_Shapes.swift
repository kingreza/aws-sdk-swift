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

import AWSSDKSwiftCore
import Foundation

extension ResourceGroupsTaggingAPI {
    //MARK: Enums

    public enum ErrorCode: String, CustomStringConvertible, Codable {
        case internalserviceexception = "InternalServiceException"
        case invalidparameterexception = "InvalidParameterException"
        public var description: String { return self.rawValue }
    }

    public enum GroupByAttribute: String, CustomStringConvertible, Codable {
        case targetId = "TARGET_ID"
        case region = "REGION"
        case resourceType = "RESOURCE_TYPE"
        public var description: String { return self.rawValue }
    }

    public enum TargetIdType: String, CustomStringConvertible, Codable {
        case account = "ACCOUNT"
        case ou = "OU"
        case root = "ROOT"
        public var description: String { return self.rawValue }
    }

    //MARK: Shapes

    public struct ComplianceDetails: AWSDecodableShape {

        /// Whether a resource is compliant with the effective tag policy.
        public let complianceStatus: Bool?
        /// These are keys defined in the effective policy that are on the resource with either incorrect case treatment or noncompliant values. 
        public let keysWithNoncompliantValues: [String]?
        /// These tag keys on the resource are noncompliant with the effective tag policy.
        public let noncompliantKeys: [String]?

        public init(complianceStatus: Bool? = nil, keysWithNoncompliantValues: [String]? = nil, noncompliantKeys: [String]? = nil) {
            self.complianceStatus = complianceStatus
            self.keysWithNoncompliantValues = keysWithNoncompliantValues
            self.noncompliantKeys = noncompliantKeys
        }

        private enum CodingKeys: String, CodingKey {
            case complianceStatus = "ComplianceStatus"
            case keysWithNoncompliantValues = "KeysWithNoncompliantValues"
            case noncompliantKeys = "NoncompliantKeys"
        }
    }

    public struct DescribeReportCreationInput: AWSEncodableShape {


        public init() {
        }

    }

    public struct DescribeReportCreationOutput: AWSDecodableShape {

        /// Details of the common errors that all operations return.
        public let errorMessage: String?
        /// The path to the Amazon S3 bucket where the report was stored on creation.
        public let s3Location: String?
        /// Reports the status of the operation. The operation status can be one of the following:    RUNNING - Report creation is in progress.    SUCCEEDED - Report creation is complete. You can open the report from the Amazon S3 bucket that you specified when you ran StartReportCreation.    FAILED - Report creation timed out or the Amazon S3 bucket is not accessible.     NO REPORT - No report was generated in the last 90 days.  
        public let status: String?

        public init(errorMessage: String? = nil, s3Location: String? = nil, status: String? = nil) {
            self.errorMessage = errorMessage
            self.s3Location = s3Location
            self.status = status
        }

        private enum CodingKeys: String, CodingKey {
            case errorMessage = "ErrorMessage"
            case s3Location = "S3Location"
            case status = "Status"
        }
    }

    public struct FailureInfo: AWSDecodableShape {

        /// The code of the common error. Valid values include InternalServiceException, InvalidParameterException, and any valid error code returned by the AWS service that hosts the resource that you want to tag.
        public let errorCode: ErrorCode?
        /// The message of the common error.
        public let errorMessage: String?
        /// The HTTP status code of the common error.
        public let statusCode: Int?

        public init(errorCode: ErrorCode? = nil, errorMessage: String? = nil, statusCode: Int? = nil) {
            self.errorCode = errorCode
            self.errorMessage = errorMessage
            self.statusCode = statusCode
        }

        private enum CodingKeys: String, CodingKey {
            case errorCode = "ErrorCode"
            case errorMessage = "ErrorMessage"
            case statusCode = "StatusCode"
        }
    }

    public struct GetComplianceSummaryInput: AWSEncodableShape {

        /// A list of attributes to group the counts of noncompliant resources by. If supplied, the counts are sorted by those attributes.
        public let groupBy: [GroupByAttribute]?
        /// A limit that restricts the number of results that are returned per page.
        public let maxResults: Int?
        /// A string that indicates that additional data is available. Leave this value empty for your initial request. If the response includes a PaginationToken, use that string for this value to request an additional page of data.
        public let paginationToken: String?
        /// A list of Regions to limit the output by. If you use this parameter, the count of returned noncompliant resources includes only resources in the specified Regions.
        public let regionFilters: [String]?
        /// The constraints on the resources that you want returned. The format of each resource type is service[:resourceType]. For example, specifying a resource type of ec2 returns all Amazon EC2 resources (which includes EC2 instances). Specifying a resource type of ec2:instance returns only EC2 instances.  The string for each service name and resource type is the same as that embedded in a resource's Amazon Resource Name (ARN). Consult the AWS General Reference for the following:   For a list of service name strings, see AWS Service Namespaces.   For resource type strings, see Example ARNs.   For more information about ARNs, see Amazon Resource Names (ARNs) and AWS Service Namespaces.   You can specify multiple resource types by using an array. The array can include up to 100 items. Note that the length constraint requirement applies to each resource type filter. 
        public let resourceTypeFilters: [String]?
        /// A list of tag keys to limit the output by. If you use this parameter, the count of returned noncompliant resources includes only resources that have the specified tag keys.
        public let tagKeyFilters: [String]?
        /// The target identifiers (usually, specific account IDs) to limit the output by. If you use this parameter, the count of returned noncompliant resources includes only resources with the specified target IDs.
        public let targetIdFilters: [String]?

        public init(groupBy: [GroupByAttribute]? = nil, maxResults: Int? = nil, paginationToken: String? = nil, regionFilters: [String]? = nil, resourceTypeFilters: [String]? = nil, tagKeyFilters: [String]? = nil, targetIdFilters: [String]? = nil) {
            self.groupBy = groupBy
            self.maxResults = maxResults
            self.paginationToken = paginationToken
            self.regionFilters = regionFilters
            self.resourceTypeFilters = resourceTypeFilters
            self.tagKeyFilters = tagKeyFilters
            self.targetIdFilters = targetIdFilters
        }

        public func validate(name: String) throws {
            try validate(self.maxResults, name: "maxResults", parent: name, max: 1000)
            try validate(self.maxResults, name: "maxResults", parent: name, min: 1)
            try validate(self.paginationToken, name: "paginationToken", parent: name, max: 2048)
            try validate(self.paginationToken, name: "paginationToken", parent: name, min: 0)
            try validate(self.paginationToken, name: "paginationToken", parent: name, pattern: "[\\s\\S]*")
            try self.regionFilters?.forEach {
                try validate($0, name: "regionFilters[]", parent: name, max: 256)
                try validate($0, name: "regionFilters[]", parent: name, min: 1)
                try validate($0, name: "regionFilters[]", parent: name, pattern: "[\\s\\S]*")
            }
            try validate(self.regionFilters, name: "regionFilters", parent: name, max: 100)
            try validate(self.regionFilters, name: "regionFilters", parent: name, min: 1)
            try self.resourceTypeFilters?.forEach {
                try validate($0, name: "resourceTypeFilters[]", parent: name, max: 256)
                try validate($0, name: "resourceTypeFilters[]", parent: name, min: 0)
                try validate($0, name: "resourceTypeFilters[]", parent: name, pattern: "[\\s\\S]*")
            }
            try self.tagKeyFilters?.forEach {
                try validate($0, name: "tagKeyFilters[]", parent: name, max: 128)
                try validate($0, name: "tagKeyFilters[]", parent: name, min: 1)
                try validate($0, name: "tagKeyFilters[]", parent: name, pattern: "[\\s\\S]*")
            }
            try validate(self.tagKeyFilters, name: "tagKeyFilters", parent: name, max: 50)
            try validate(self.tagKeyFilters, name: "tagKeyFilters", parent: name, min: 1)
            try self.targetIdFilters?.forEach {
                try validate($0, name: "targetIdFilters[]", parent: name, max: 68)
                try validate($0, name: "targetIdFilters[]", parent: name, min: 6)
                try validate($0, name: "targetIdFilters[]", parent: name, pattern: "[\\s\\S]*")
            }
            try validate(self.targetIdFilters, name: "targetIdFilters", parent: name, max: 100)
            try validate(self.targetIdFilters, name: "targetIdFilters", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case groupBy = "GroupBy"
            case maxResults = "MaxResults"
            case paginationToken = "PaginationToken"
            case regionFilters = "RegionFilters"
            case resourceTypeFilters = "ResourceTypeFilters"
            case tagKeyFilters = "TagKeyFilters"
            case targetIdFilters = "TargetIdFilters"
        }
    }

    public struct GetComplianceSummaryOutput: AWSDecodableShape {

        /// A string that indicates that the response contains more data than can be returned in a single response. To receive additional data, specify this string for the PaginationToken value in a subsequent request.
        public let paginationToken: String?
        /// A table that shows counts of noncompliant resources.
        public let summaryList: [Summary]?

        public init(paginationToken: String? = nil, summaryList: [Summary]? = nil) {
            self.paginationToken = paginationToken
            self.summaryList = summaryList
        }

        private enum CodingKeys: String, CodingKey {
            case paginationToken = "PaginationToken"
            case summaryList = "SummaryList"
        }
    }

    public struct GetResourcesInput: AWSEncodableShape {

        /// Specifies whether to exclude resources that are compliant with the tag policy. Set this to true if you are interested in retrieving information on noncompliant resources only. You can use this parameter only if the IncludeComplianceDetails parameter is also set to true.
        public let excludeCompliantResources: Bool?
        /// Specifies whether to include details regarding the compliance with the effective tag policy. Set this to true to determine whether resources are compliant with the tag policy and to get details.
        public let includeComplianceDetails: Bool?
        /// A string that indicates that additional data is available. Leave this value empty for your initial request. If the response includes a PaginationToken, use that string for this value to request an additional page of data.
        public let paginationToken: String?
        /// A limit that restricts the number of resources returned by GetResources in paginated output. You can set ResourcesPerPage to a minimum of 1 item and the maximum of 100 items. 
        public let resourcesPerPage: Int?
        /// The constraints on the resources that you want returned. The format of each resource type is service[:resourceType]. For example, specifying a resource type of ec2 returns all Amazon EC2 resources (which includes EC2 instances). Specifying a resource type of ec2:instance returns only EC2 instances.  The string for each service name and resource type is the same as that embedded in a resource's Amazon Resource Name (ARN). Consult the AWS General Reference for the following:   For a list of service name strings, see AWS Service Namespaces.   For resource type strings, see Example ARNs.   For more information about ARNs, see Amazon Resource Names (ARNs) and AWS Service Namespaces.   You can specify multiple resource types by using an array. The array can include up to 100 items. Note that the length constraint requirement applies to each resource type filter. 
        public let resourceTypeFilters: [String]?
        /// A list of TagFilters (keys and values). Each TagFilter specified must contain a key with values as optional. A request can include up to 50 keys, and each key can include up to 20 values.  Note the following when deciding how to use TagFilters:   If you do specify a TagFilter, the response returns only those resources that are currently associated with the specified tag.    If you don't specify a TagFilter, the response includes all resources that were ever associated with tags. Resources that currently don't have associated tags are shown with an empty tag set, like this: "Tags": [].   If you specify more than one filter in a single request, the response returns only those resources that satisfy all specified filters.   If you specify a filter that contains more than one value for a key, the response returns resources that match any of the specified values for that key.   If you don't specify any values for a key, the response returns resources that are tagged with that key irrespective of the value. For example, for filters: filter1 = {key1, {value1}}, filter2 = {key2, {value2,value3,value4}} , filter3 = {key3}:   GetResources( {filter1} ) returns resources tagged with key1=value1   GetResources( {filter2} ) returns resources tagged with key2=value2 or key2=value3 or key2=value4   GetResources( {filter3} ) returns resources tagged with any tag containing key3 as its tag key, irrespective of its value   GetResources( {filter1,filter2,filter3} ) returns resources tagged with ( key1=value1) and ( key2=value2 or key2=value3 or key2=value4) and (key3, irrespective of the value)    
        public let tagFilters: [TagFilter]?
        /// AWS recommends using ResourcesPerPage instead of this parameter. A limit that restricts the number of tags (key and value pairs) returned by GetResources in paginated output. A resource with no tags is counted as having one tag (one key and value pair).  GetResources does not split a resource and its associated tags across pages. If the specified TagsPerPage would cause such a break, a PaginationToken is returned in place of the affected resource and its tags. Use that token in another request to get the remaining data. For example, if you specify a TagsPerPage of 100 and the account has 22 resources with 10 tags each (meaning that each resource has 10 key and value pairs), the output will consist of three pages. The first page displays the first 10 resources, each with its 10 tags. The second page displays the next 10 resources, each with its 10 tags. The third page displays the remaining 2 resources, each with its 10 tags. You can set TagsPerPage to a minimum of 100 items and the maximum of 500 items.
        public let tagsPerPage: Int?

        public init(excludeCompliantResources: Bool? = nil, includeComplianceDetails: Bool? = nil, paginationToken: String? = nil, resourcesPerPage: Int? = nil, resourceTypeFilters: [String]? = nil, tagFilters: [TagFilter]? = nil, tagsPerPage: Int? = nil) {
            self.excludeCompliantResources = excludeCompliantResources
            self.includeComplianceDetails = includeComplianceDetails
            self.paginationToken = paginationToken
            self.resourcesPerPage = resourcesPerPage
            self.resourceTypeFilters = resourceTypeFilters
            self.tagFilters = tagFilters
            self.tagsPerPage = tagsPerPage
        }

        public func validate(name: String) throws {
            try validate(self.paginationToken, name: "paginationToken", parent: name, max: 2048)
            try validate(self.paginationToken, name: "paginationToken", parent: name, min: 0)
            try validate(self.paginationToken, name: "paginationToken", parent: name, pattern: "[\\s\\S]*")
            try self.resourceTypeFilters?.forEach {
                try validate($0, name: "resourceTypeFilters[]", parent: name, max: 256)
                try validate($0, name: "resourceTypeFilters[]", parent: name, min: 0)
                try validate($0, name: "resourceTypeFilters[]", parent: name, pattern: "[\\s\\S]*")
            }
            try self.tagFilters?.forEach {
                try $0.validate(name: "\(name).tagFilters[]")
            }
            try validate(self.tagFilters, name: "tagFilters", parent: name, max: 50)
            try validate(self.tagFilters, name: "tagFilters", parent: name, min: 0)
        }

        private enum CodingKeys: String, CodingKey {
            case excludeCompliantResources = "ExcludeCompliantResources"
            case includeComplianceDetails = "IncludeComplianceDetails"
            case paginationToken = "PaginationToken"
            case resourcesPerPage = "ResourcesPerPage"
            case resourceTypeFilters = "ResourceTypeFilters"
            case tagFilters = "TagFilters"
            case tagsPerPage = "TagsPerPage"
        }
    }

    public struct GetResourcesOutput: AWSDecodableShape {

        /// A string that indicates that the response contains more data than can be returned in a single response. To receive additional data, specify this string for the PaginationToken value in a subsequent request.
        public let paginationToken: String?
        /// A list of resource ARNs and the tags (keys and values) associated with each.
        public let resourceTagMappingList: [ResourceTagMapping]?

        public init(paginationToken: String? = nil, resourceTagMappingList: [ResourceTagMapping]? = nil) {
            self.paginationToken = paginationToken
            self.resourceTagMappingList = resourceTagMappingList
        }

        private enum CodingKeys: String, CodingKey {
            case paginationToken = "PaginationToken"
            case resourceTagMappingList = "ResourceTagMappingList"
        }
    }

    public struct GetTagKeysInput: AWSEncodableShape {

        /// A string that indicates that additional data is available. Leave this value empty for your initial request. If the response includes a PaginationToken, use that string for this value to request an additional page of data.
        public let paginationToken: String?

        public init(paginationToken: String? = nil) {
            self.paginationToken = paginationToken
        }

        public func validate(name: String) throws {
            try validate(self.paginationToken, name: "paginationToken", parent: name, max: 2048)
            try validate(self.paginationToken, name: "paginationToken", parent: name, min: 0)
            try validate(self.paginationToken, name: "paginationToken", parent: name, pattern: "[\\s\\S]*")
        }

        private enum CodingKeys: String, CodingKey {
            case paginationToken = "PaginationToken"
        }
    }

    public struct GetTagKeysOutput: AWSDecodableShape {

        /// A string that indicates that the response contains more data than can be returned in a single response. To receive additional data, specify this string for the PaginationToken value in a subsequent request.
        public let paginationToken: String?
        /// A list of all tag keys in the AWS account.
        public let tagKeys: [String]?

        public init(paginationToken: String? = nil, tagKeys: [String]? = nil) {
            self.paginationToken = paginationToken
            self.tagKeys = tagKeys
        }

        private enum CodingKeys: String, CodingKey {
            case paginationToken = "PaginationToken"
            case tagKeys = "TagKeys"
        }
    }

    public struct GetTagValuesInput: AWSEncodableShape {

        /// The key for which you want to list all existing values in the specified Region for the AWS account.
        public let key: String
        /// A string that indicates that additional data is available. Leave this value empty for your initial request. If the response includes a PaginationToken, use that string for this value to request an additional page of data.
        public let paginationToken: String?

        public init(key: String, paginationToken: String? = nil) {
            self.key = key
            self.paginationToken = paginationToken
        }

        public func validate(name: String) throws {
            try validate(self.key, name: "key", parent: name, max: 128)
            try validate(self.key, name: "key", parent: name, min: 1)
            try validate(self.key, name: "key", parent: name, pattern: "[\\s\\S]*")
            try validate(self.paginationToken, name: "paginationToken", parent: name, max: 2048)
            try validate(self.paginationToken, name: "paginationToken", parent: name, min: 0)
            try validate(self.paginationToken, name: "paginationToken", parent: name, pattern: "[\\s\\S]*")
        }

        private enum CodingKeys: String, CodingKey {
            case key = "Key"
            case paginationToken = "PaginationToken"
        }
    }

    public struct GetTagValuesOutput: AWSDecodableShape {

        /// A string that indicates that the response contains more data than can be returned in a single response. To receive additional data, specify this string for the PaginationToken value in a subsequent request.
        public let paginationToken: String?
        /// A list of all tag values for the specified key in the AWS account.
        public let tagValues: [String]?

        public init(paginationToken: String? = nil, tagValues: [String]? = nil) {
            self.paginationToken = paginationToken
            self.tagValues = tagValues
        }

        private enum CodingKeys: String, CodingKey {
            case paginationToken = "PaginationToken"
            case tagValues = "TagValues"
        }
    }

    public struct ResourceTagMapping: AWSDecodableShape {

        /// Information that shows whether a resource is compliant with the effective tag policy, including details on any noncompliant tag keys.
        public let complianceDetails: ComplianceDetails?
        /// The ARN of the resource.
        public let resourceARN: String?
        /// The tags that have been applied to one or more AWS resources.
        public let tags: [Tag]?

        public init(complianceDetails: ComplianceDetails? = nil, resourceARN: String? = nil, tags: [Tag]? = nil) {
            self.complianceDetails = complianceDetails
            self.resourceARN = resourceARN
            self.tags = tags
        }

        private enum CodingKeys: String, CodingKey {
            case complianceDetails = "ComplianceDetails"
            case resourceARN = "ResourceARN"
            case tags = "Tags"
        }
    }

    public struct StartReportCreationInput: AWSEncodableShape {

        /// The name of the Amazon S3 bucket where the report will be stored; for example:  awsexamplebucket  For more information on S3 bucket requirements, including an example bucket policy, see the example S3 bucket policy on this page.
        public let s3Bucket: String

        public init(s3Bucket: String) {
            self.s3Bucket = s3Bucket
        }

        public func validate(name: String) throws {
            try validate(self.s3Bucket, name: "s3Bucket", parent: name, max: 63)
            try validate(self.s3Bucket, name: "s3Bucket", parent: name, min: 3)
            try validate(self.s3Bucket, name: "s3Bucket", parent: name, pattern: "[\\s\\S]*")
        }

        private enum CodingKeys: String, CodingKey {
            case s3Bucket = "S3Bucket"
        }
    }

    public struct StartReportCreationOutput: AWSDecodableShape {


        public init() {
        }

    }

    public struct Summary: AWSDecodableShape {

        /// The timestamp that shows when this summary was generated in this Region. 
        public let lastUpdated: String?
        /// The count of noncompliant resources.
        public let nonCompliantResources: Int64?
        /// The AWS Region that the summary applies to.
        public let region: String?
        /// The AWS resource type.
        public let resourceType: String?
        /// The account identifier or the root identifier of the organization. If you don't know the root ID, you can call the AWS Organizations ListRoots API.
        public let targetId: String?
        /// Whether the target is an account, an OU, or the organization root.
        public let targetIdType: TargetIdType?

        public init(lastUpdated: String? = nil, nonCompliantResources: Int64? = nil, region: String? = nil, resourceType: String? = nil, targetId: String? = nil, targetIdType: TargetIdType? = nil) {
            self.lastUpdated = lastUpdated
            self.nonCompliantResources = nonCompliantResources
            self.region = region
            self.resourceType = resourceType
            self.targetId = targetId
            self.targetIdType = targetIdType
        }

        private enum CodingKeys: String, CodingKey {
            case lastUpdated = "LastUpdated"
            case nonCompliantResources = "NonCompliantResources"
            case region = "Region"
            case resourceType = "ResourceType"
            case targetId = "TargetId"
            case targetIdType = "TargetIdType"
        }
    }

    public struct Tag: AWSDecodableShape {

        /// One part of a key-value pair that makes up a tag. A key is a general label that acts like a category for more specific tag values.
        public let key: String
        /// The optional part of a key-value pair that make up a tag. A value acts as a descriptor within a tag category (key).
        public let value: String

        public init(key: String, value: String) {
            self.key = key
            self.value = value
        }

        private enum CodingKeys: String, CodingKey {
            case key = "Key"
            case value = "Value"
        }
    }

    public struct TagFilter: AWSEncodableShape {

        /// One part of a key-value pair that makes up a tag. A key is a general label that acts like a category for more specific tag values.
        public let key: String?
        /// The optional part of a key-value pair that make up a tag. A value acts as a descriptor within a tag category (key).
        public let values: [String]?

        public init(key: String? = nil, values: [String]? = nil) {
            self.key = key
            self.values = values
        }

        public func validate(name: String) throws {
            try validate(self.key, name: "key", parent: name, max: 128)
            try validate(self.key, name: "key", parent: name, min: 1)
            try validate(self.key, name: "key", parent: name, pattern: "[\\s\\S]*")
            try self.values?.forEach {
                try validate($0, name: "values[]", parent: name, max: 256)
                try validate($0, name: "values[]", parent: name, min: 0)
                try validate($0, name: "values[]", parent: name, pattern: "[\\s\\S]*")
            }
            try validate(self.values, name: "values", parent: name, max: 20)
            try validate(self.values, name: "values", parent: name, min: 0)
        }

        private enum CodingKeys: String, CodingKey {
            case key = "Key"
            case values = "Values"
        }
    }

    public struct TagResourcesInput: AWSEncodableShape {

        /// A list of ARNs. An ARN (Amazon Resource Name) uniquely identifies a resource. You can specify a minimum of 1 and a maximum of 20 ARNs (resources) to tag. An ARN can be set to a maximum of 1600 characters. For more information, see Amazon Resource Names (ARNs) and AWS Service Namespaces in the AWS General Reference.
        public let resourceARNList: [String]
        /// The tags that you want to add to the specified resources. A tag consists of a key and a value that you define.
        public let tags: [String: String]

        public init(resourceARNList: [String], tags: [String: String]) {
            self.resourceARNList = resourceARNList
            self.tags = tags
        }

        public func validate(name: String) throws {
            try self.resourceARNList.forEach {
                try validate($0, name: "resourceARNList[]", parent: name, max: 1011)
                try validate($0, name: "resourceARNList[]", parent: name, min: 1)
                try validate($0, name: "resourceARNList[]", parent: name, pattern: "[\\s\\S]*")
            }
            try validate(self.resourceARNList, name: "resourceARNList", parent: name, max: 20)
            try validate(self.resourceARNList, name: "resourceARNList", parent: name, min: 1)
            try self.tags.forEach {
                try validate($0.key, name: "tags.key", parent: name, max: 128)
                try validate($0.key, name: "tags.key", parent: name, min: 1)
                try validate($0.key, name: "tags.key", parent: name, pattern: "[\\s\\S]*")
                try validate($0.value, name: "tags[\"\($0.key)\"]", parent: name, max: 256)
                try validate($0.value, name: "tags[\"\($0.key)\"]", parent: name, min: 0)
                try validate($0.value, name: "tags[\"\($0.key)\"]", parent: name, pattern: "[\\s\\S]*")
            }
        }

        private enum CodingKeys: String, CodingKey {
            case resourceARNList = "ResourceARNList"
            case tags = "Tags"
        }
    }

    public struct TagResourcesOutput: AWSDecodableShape {

        /// A map containing a key-value pair for each failed item that couldn't be tagged. The key is the ARN of the failed resource. The value is a FailureInfo object that contains an error code, a status code, and an error message. If there are no errors, the FailedResourcesMap is empty.
        public let failedResourcesMap: [String: FailureInfo]?

        public init(failedResourcesMap: [String: FailureInfo]? = nil) {
            self.failedResourcesMap = failedResourcesMap
        }

        private enum CodingKeys: String, CodingKey {
            case failedResourcesMap = "FailedResourcesMap"
        }
    }

    public struct UntagResourcesInput: AWSEncodableShape {

        /// A list of ARNs. An ARN (Amazon Resource Name) uniquely identifies a resource. You can specify a minimum of 1 and a maximum of 20 ARNs (resources) to untag. An ARN can be set to a maximum of 1600 characters. For more information, see Amazon Resource Names (ARNs) and AWS Service Namespaces in the AWS General Reference.
        public let resourceARNList: [String]
        /// A list of the tag keys that you want to remove from the specified resources.
        public let tagKeys: [String]

        public init(resourceARNList: [String], tagKeys: [String]) {
            self.resourceARNList = resourceARNList
            self.tagKeys = tagKeys
        }

        public func validate(name: String) throws {
            try self.resourceARNList.forEach {
                try validate($0, name: "resourceARNList[]", parent: name, max: 1011)
                try validate($0, name: "resourceARNList[]", parent: name, min: 1)
                try validate($0, name: "resourceARNList[]", parent: name, pattern: "[\\s\\S]*")
            }
            try validate(self.resourceARNList, name: "resourceARNList", parent: name, max: 20)
            try validate(self.resourceARNList, name: "resourceARNList", parent: name, min: 1)
            try self.tagKeys.forEach {
                try validate($0, name: "tagKeys[]", parent: name, max: 128)
                try validate($0, name: "tagKeys[]", parent: name, min: 1)
                try validate($0, name: "tagKeys[]", parent: name, pattern: "[\\s\\S]*")
            }
            try validate(self.tagKeys, name: "tagKeys", parent: name, max: 50)
            try validate(self.tagKeys, name: "tagKeys", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case resourceARNList = "ResourceARNList"
            case tagKeys = "TagKeys"
        }
    }

    public struct UntagResourcesOutput: AWSDecodableShape {

        /// Details of resources that could not be untagged. An error code, status code, and error message are returned for each failed item. 
        public let failedResourcesMap: [String: FailureInfo]?

        public init(failedResourcesMap: [String: FailureInfo]? = nil) {
            self.failedResourcesMap = failedResourcesMap
        }

        private enum CodingKeys: String, CodingKey {
            case failedResourcesMap = "FailedResourcesMap"
        }
    }
}
