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
import Foundation
import NIO

/**
Client object for interacting with AWS CloudSearch service.

Amazon CloudSearch Configuration Service You use the Amazon CloudSearch configuration service to create, configure, and manage search domains. Configuration service requests are submitted using the AWS Query protocol. AWS Query requests are HTTP or HTTPS requests submitted via HTTP GET or POST with a query parameter named Action. The endpoint for configuration service requests is region-specific: cloudsearch.region.amazonaws.com. For example, cloudsearch.us-east-1.amazonaws.com. For a current list of supported regions and endpoints, see Regions and Endpoints.
*/
public struct CloudSearch {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the CloudSearch client
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
            region: region,
            service: "cloudsearch",
            serviceProtocol: .query,
            apiVersion: "2013-01-01",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [CloudSearchErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Indexes the search suggestions. For more information, see Configuring Suggesters in the Amazon CloudSearch Developer Guide.
    public func buildSuggesters(_ input: BuildSuggestersRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BuildSuggestersResponse> {
        return client.send(operation: "BuildSuggesters", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a new search domain. For more information, see Creating a Search Domain in the Amazon CloudSearch Developer Guide.
    public func createDomain(_ input: CreateDomainRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDomainResponse> {
        return client.send(operation: "CreateDomain", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Configures an analysis scheme that can be applied to a text or text-array field to define language-specific text processing options. For more information, see Configuring Analysis Schemes in the Amazon CloudSearch Developer Guide.
    public func defineAnalysisScheme(_ input: DefineAnalysisSchemeRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DefineAnalysisSchemeResponse> {
        return client.send(operation: "DefineAnalysisScheme", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Configures an Expression for the search domain. Used to create new expressions and modify existing ones. If the expression exists, the new configuration replaces the old one. For more information, see Configuring Expressions in the Amazon CloudSearch Developer Guide.
    public func defineExpression(_ input: DefineExpressionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DefineExpressionResponse> {
        return client.send(operation: "DefineExpression", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Configures an IndexField for the search domain. Used to create new fields and modify existing ones. You must specify the name of the domain you are configuring and an index field configuration. The index field configuration specifies a unique name, the index field type, and the options you want to configure for the field. The options you can specify depend on the IndexFieldType. If the field exists, the new configuration replaces the old one. For more information, see Configuring Index Fields in the Amazon CloudSearch Developer Guide. 
    public func defineIndexField(_ input: DefineIndexFieldRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DefineIndexFieldResponse> {
        return client.send(operation: "DefineIndexField", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Configures a suggester for a domain. A suggester enables you to display possible matches before users finish typing their queries. When you configure a suggester, you must specify the name of the text field you want to search for possible matches and a unique name for the suggester. For more information, see Getting Search Suggestions in the Amazon CloudSearch Developer Guide.
    public func defineSuggester(_ input: DefineSuggesterRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DefineSuggesterResponse> {
        return client.send(operation: "DefineSuggester", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes an analysis scheme. For more information, see Configuring Analysis Schemes in the Amazon CloudSearch Developer Guide. 
    public func deleteAnalysisScheme(_ input: DeleteAnalysisSchemeRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAnalysisSchemeResponse> {
        return client.send(operation: "DeleteAnalysisScheme", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Permanently deletes a search domain and all of its data. Once a domain has been deleted, it cannot be recovered. For more information, see Deleting a Search Domain in the Amazon CloudSearch Developer Guide. 
    public func deleteDomain(_ input: DeleteDomainRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDomainResponse> {
        return client.send(operation: "DeleteDomain", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Removes an Expression from the search domain. For more information, see Configuring Expressions in the Amazon CloudSearch Developer Guide.
    public func deleteExpression(_ input: DeleteExpressionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteExpressionResponse> {
        return client.send(operation: "DeleteExpression", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Removes an IndexField from the search domain. For more information, see Configuring Index Fields in the Amazon CloudSearch Developer Guide.
    public func deleteIndexField(_ input: DeleteIndexFieldRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteIndexFieldResponse> {
        return client.send(operation: "DeleteIndexField", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes a suggester. For more information, see Getting Search Suggestions in the Amazon CloudSearch Developer Guide.
    public func deleteSuggester(_ input: DeleteSuggesterRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteSuggesterResponse> {
        return client.send(operation: "DeleteSuggester", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets the analysis schemes configured for a domain. An analysis scheme defines language-specific text processing options for a text field. Can be limited to specific analysis schemes by name. By default, shows all analysis schemes and includes any pending changes to the configuration. Set the Deployed option to true to show the active configuration and exclude pending changes. For more information, see Configuring Analysis Schemes in the Amazon CloudSearch Developer Guide.
    public func describeAnalysisSchemes(_ input: DescribeAnalysisSchemesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAnalysisSchemesResponse> {
        return client.send(operation: "DescribeAnalysisSchemes", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets the availability options configured for a domain. By default, shows the configuration with any pending changes. Set the Deployed option to true to show the active configuration and exclude pending changes. For more information, see Configuring Availability Options in the Amazon CloudSearch Developer Guide.
    public func describeAvailabilityOptions(_ input: DescribeAvailabilityOptionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAvailabilityOptionsResponse> {
        return client.send(operation: "DescribeAvailabilityOptions", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns the domain's endpoint options, specifically whether all requests to the domain must arrive over HTTPS. For more information, see Configuring Domain Endpoint Options in the Amazon CloudSearch Developer Guide.
    public func describeDomainEndpointOptions(_ input: DescribeDomainEndpointOptionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDomainEndpointOptionsResponse> {
        return client.send(operation: "DescribeDomainEndpointOptions", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets information about the search domains owned by this account. Can be limited to specific domains. Shows all domains by default. To get the number of searchable documents in a domain, use the console or submit a matchall request to your domain's search endpoint: q=matchall&amp;amp;q.parser=structured&amp;amp;size=0. For more information, see Getting Information about a Search Domain in the Amazon CloudSearch Developer Guide.
    public func describeDomains(_ input: DescribeDomainsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDomainsResponse> {
        return client.send(operation: "DescribeDomains", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets the expressions configured for the search domain. Can be limited to specific expressions by name. By default, shows all expressions and includes any pending changes to the configuration. Set the Deployed option to true to show the active configuration and exclude pending changes. For more information, see Configuring Expressions in the Amazon CloudSearch Developer Guide.
    public func describeExpressions(_ input: DescribeExpressionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeExpressionsResponse> {
        return client.send(operation: "DescribeExpressions", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets information about the index fields configured for the search domain. Can be limited to specific fields by name. By default, shows all fields and includes any pending changes to the configuration. Set the Deployed option to true to show the active configuration and exclude pending changes. For more information, see Getting Domain Information in the Amazon CloudSearch Developer Guide.
    public func describeIndexFields(_ input: DescribeIndexFieldsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIndexFieldsResponse> {
        return client.send(operation: "DescribeIndexFields", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets the scaling parameters configured for a domain. A domain's scaling parameters specify the desired search instance type and replication count. For more information, see Configuring Scaling Options in the Amazon CloudSearch Developer Guide.
    public func describeScalingParameters(_ input: DescribeScalingParametersRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeScalingParametersResponse> {
        return client.send(operation: "DescribeScalingParameters", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets information about the access policies that control access to the domain's document and search endpoints. By default, shows the configuration with any pending changes. Set the Deployed option to true to show the active configuration and exclude pending changes. For more information, see Configuring Access for a Search Domain in the Amazon CloudSearch Developer Guide.
    public func describeServiceAccessPolicies(_ input: DescribeServiceAccessPoliciesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeServiceAccessPoliciesResponse> {
        return client.send(operation: "DescribeServiceAccessPolicies", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets the suggesters configured for a domain. A suggester enables you to display possible matches before users finish typing their queries. Can be limited to specific suggesters by name. By default, shows all suggesters and includes any pending changes to the configuration. Set the Deployed option to true to show the active configuration and exclude pending changes. For more information, see Getting Search Suggestions in the Amazon CloudSearch Developer Guide.
    public func describeSuggesters(_ input: DescribeSuggestersRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSuggestersResponse> {
        return client.send(operation: "DescribeSuggesters", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Tells the search domain to start indexing its documents using the latest indexing options. This operation must be invoked to activate options whose OptionStatus is RequiresIndexDocuments.
    public func indexDocuments(_ input: IndexDocumentsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<IndexDocumentsResponse> {
        return client.send(operation: "IndexDocuments", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists all search domains owned by an account.
    public func listDomainNames(on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDomainNamesResponse> {
        return client.send(operation: "ListDomainNames", path: "/", httpMethod: "POST", on: eventLoop)
    }

    ///  Configures the availability options for a domain. Enabling the Multi-AZ option expands an Amazon CloudSearch domain to an additional Availability Zone in the same Region to increase fault tolerance in the event of a service disruption. Changes to the Multi-AZ option can take about half an hour to become active. For more information, see Configuring Availability Options in the Amazon CloudSearch Developer Guide.
    public func updateAvailabilityOptions(_ input: UpdateAvailabilityOptionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateAvailabilityOptionsResponse> {
        return client.send(operation: "UpdateAvailabilityOptions", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates the domain's endpoint options, specifically whether all requests to the domain must arrive over HTTPS. For more information, see Configuring Domain Endpoint Options in the Amazon CloudSearch Developer Guide.
    public func updateDomainEndpointOptions(_ input: UpdateDomainEndpointOptionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDomainEndpointOptionsResponse> {
        return client.send(operation: "UpdateDomainEndpointOptions", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Configures scaling parameters for a domain. A domain's scaling parameters specify the desired search instance type and replication count. Amazon CloudSearch will still automatically scale your domain based on the volume of data and traffic, but not below the desired instance type and replication count. If the Multi-AZ option is enabled, these values control the resources used per Availability Zone. For more information, see Configuring Scaling Options in the Amazon CloudSearch Developer Guide. 
    public func updateScalingParameters(_ input: UpdateScalingParametersRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateScalingParametersResponse> {
        return client.send(operation: "UpdateScalingParameters", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Configures the access rules that control access to the domain's document and search endpoints. For more information, see  Configuring Access for an Amazon CloudSearch Domain.
    public func updateServiceAccessPolicies(_ input: UpdateServiceAccessPoliciesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateServiceAccessPoliciesResponse> {
        return client.send(operation: "UpdateServiceAccessPolicies", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }
}
