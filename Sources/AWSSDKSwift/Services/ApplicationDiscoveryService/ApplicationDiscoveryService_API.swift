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
Client object for interacting with AWS ApplicationDiscoveryService service.

AWS Application Discovery Service AWS Application Discovery Service helps you plan application migration projects. It automatically identifies servers, virtual machines (VMs), and network dependencies in your on-premises data centers. For more information, see the AWS Application Discovery Service FAQ. Application Discovery Service offers three ways of performing discovery and collecting data about your on-premises servers:    Agentless discovery is recommended for environments that use VMware vCenter Server. This mode doesn't require you to install an agent on each host. It does not work in non-VMware environments.   Agentless discovery gathers server information regardless of the operating systems, which minimizes the time required for initial on-premises infrastructure assessment.   Agentless discovery doesn't collect information about network dependencies, only agent-based discovery collects that information.        Agent-based discovery collects a richer set of data than agentless discovery by using the AWS Application Discovery Agent, which you install on one or more hosts in your data center.    The agent captures infrastructure and application information, including an inventory of running processes, system performance information, resource utilization, and network dependencies.   The information collected by agents is secured at rest and in transit to the Application Discovery Service database in the cloud.         AWS Partner Network (APN) solutions integrate with Application Discovery Service, enabling you to import details of your on-premises environment directly into Migration Hub without using the discovery connector or discovery agent.   Third-party application discovery tools can query AWS Application Discovery Service, and they can write to the Application Discovery Service database using the public API.   In this way, you can import data into Migration Hub and view it, so that you can associate applications with servers and track migrations.      Recommendations  We recommend that you use agent-based discovery for non-VMware environments, and whenever you want to collect information about network dependencies. You can run agent-based and agentless discovery simultaneously. Use agentless discovery to complete the initial infrastructure assessment quickly, and then install agents on select hosts to collect additional information.  Working With This Guide  This API reference provides descriptions, syntax, and usage examples for each of the actions and data types for Application Discovery Service. The topic for each action shows the API request parameters and the response. Alternatively, you can use one of the AWS SDKs to access an API that is tailored to the programming language or platform that you're using. For more information, see AWS SDKs.    Remember that you must set your Migration Hub home region before you call any of these APIs.   You must make API calls for write actions (create, notify, associate, disassociate, import, or put) while in your home region, or a HomeRegionNotSetException error is returned.   API calls for read actions (list, describe, stop, and delete) are permitted outside of your home region.   Although it is unlikely, the Migration Hub home region could change. If you call APIs outside the home region, an InvalidInputException is returned.   You must call GetHomeRegion to obtain the latest Migration Hub home region.    This guide is intended for use with the AWS Application Discovery Service User Guide.  All data is handled according to the AWS Privacy Policy. You can operate Application Discovery Service offline to inspect collected data before it is shared with the service. 
*/
public struct ApplicationDiscoveryService {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the ApplicationDiscoveryService client
    /// - parameters:
    ///     - accessKeyId: Public access key provided by AWS
    ///     - secretAccessKey: Private access key provided by AWS
    ///     - sessionToken: Token provided by STS.AssumeRole() which allows access to another AWS account
    ///     - region: Region of server you want to communicate with
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - middlewares: Array of middlewares to apply to requests and responses
    ///     - eventLoopGroupProvider: EventLoopGroup to use. Use `useAWSClientShared` if the client shall manage its own EventLoopGroup.
    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, sessionToken: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = [], eventLoopGroupProvider: AWSClient.EventLoopGroupProvider = .useAWSClientShared) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            amzTarget: "AWSPoseidonService_V2015_11_01",
            service: "discovery",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2015-11-01",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [ApplicationDiscoveryServiceErrorType.self],
            eventLoopGroupProvider: eventLoopGroupProvider
        )
    }
    
    //MARK: API Calls

    ///  Associates one or more configuration items with an application.
    public func associateConfigurationItemsToApplication(_ input: AssociateConfigurationItemsToApplicationRequest) -> EventLoopFuture<AssociateConfigurationItemsToApplicationResponse> {
        return client.send(operation: "AssociateConfigurationItemsToApplication", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes one or more import tasks, each identified by their import ID. Each import task has a number of records that can identify servers or applications.  AWS Application Discovery Service has built-in matching logic that will identify when discovered servers match existing entries that you've previously discovered, the information for the already-existing discovered server is updated. When you delete an import task that contains records that were used to match, the information in those matched records that comes from the deleted records will also be deleted.
    public func batchDeleteImportData(_ input: BatchDeleteImportDataRequest) -> EventLoopFuture<BatchDeleteImportDataResponse> {
        return client.send(operation: "BatchDeleteImportData", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates an application with the given name and description.
    public func createApplication(_ input: CreateApplicationRequest) -> EventLoopFuture<CreateApplicationResponse> {
        return client.send(operation: "CreateApplication", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates one or more tags for configuration items. Tags are metadata that help you categorize IT assets. This API accepts a list of multiple configuration items.
    public func createTags(_ input: CreateTagsRequest) -> EventLoopFuture<CreateTagsResponse> {
        return client.send(operation: "CreateTags", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a list of applications and their associations with configuration items.
    public func deleteApplications(_ input: DeleteApplicationsRequest) -> EventLoopFuture<DeleteApplicationsResponse> {
        return client.send(operation: "DeleteApplications", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the association between configuration items and one or more tags. This API accepts a list of multiple configuration items.
    public func deleteTags(_ input: DeleteTagsRequest) -> EventLoopFuture<DeleteTagsResponse> {
        return client.send(operation: "DeleteTags", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists agents or connectors as specified by ID or other filters. All agents/connectors associated with your user account can be listed if you call DescribeAgents as is without passing any parameters.
    public func describeAgents(_ input: DescribeAgentsRequest) -> EventLoopFuture<DescribeAgentsResponse> {
        return client.send(operation: "DescribeAgents", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves attributes for a list of configuration item IDs.  All of the supplied IDs must be for the same asset type from one of the following:   server   application   process   connection   Output fields are specific to the asset type specified. For example, the output for a server configuration item includes a list of attributes about the server, such as host name, operating system, number of network cards, etc. For a complete list of outputs for each asset type, see Using the DescribeConfigurations Action in the AWS Application Discovery Service User Guide. 
    public func describeConfigurations(_ input: DescribeConfigurationsRequest) -> EventLoopFuture<DescribeConfigurationsResponse> {
        return client.send(operation: "DescribeConfigurations", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists exports as specified by ID. All continuous exports associated with your user account can be listed if you call DescribeContinuousExports as is without passing any parameters.
    public func describeContinuousExports(_ input: DescribeContinuousExportsRequest) -> EventLoopFuture<DescribeContinuousExportsResponse> {
        return client.send(operation: "DescribeContinuousExports", path: "/", httpMethod: "POST", input: input)
    }

    ///   DescribeExportConfigurations is deprecated. Use DescribeImportTasks, instead.
    @available(*, deprecated, message:"DescribeExportConfigurations is deprecated.")
    public func describeExportConfigurations(_ input: DescribeExportConfigurationsRequest) -> EventLoopFuture<DescribeExportConfigurationsResponse> {
        return client.send(operation: "DescribeExportConfigurations", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieve status of one or more export tasks. You can retrieve the status of up to 100 export tasks.
    public func describeExportTasks(_ input: DescribeExportTasksRequest) -> EventLoopFuture<DescribeExportTasksResponse> {
        return client.send(operation: "DescribeExportTasks", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns an array of import tasks for your account, including status information, times, IDs, the Amazon S3 Object URL for the import file, and more.
    public func describeImportTasks(_ input: DescribeImportTasksRequest) -> EventLoopFuture<DescribeImportTasksResponse> {
        return client.send(operation: "DescribeImportTasks", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves a list of configuration items that have tags as specified by the key-value pairs, name and value, passed to the optional parameter filters. There are three valid tag filter names:   tagKey   tagValue   configurationId   Also, all configuration items associated with your user account that have tags can be listed if you call DescribeTags as is without passing any parameters.
    public func describeTags(_ input: DescribeTagsRequest) -> EventLoopFuture<DescribeTagsResponse> {
        return client.send(operation: "DescribeTags", path: "/", httpMethod: "POST", input: input)
    }

    ///  Disassociates one or more configuration items from an application.
    public func disassociateConfigurationItemsFromApplication(_ input: DisassociateConfigurationItemsFromApplicationRequest) -> EventLoopFuture<DisassociateConfigurationItemsFromApplicationResponse> {
        return client.send(operation: "DisassociateConfigurationItemsFromApplication", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deprecated. Use StartExportTask instead. Exports all discovered configuration data to an Amazon S3 bucket or an application that enables you to view and evaluate the data. Data includes tags and tag associations, processes, connections, servers, and system performance. This API returns an export ID that you can query using the DescribeExportConfigurations API. The system imposes a limit of two configuration exports in six hours.
    @available(*, deprecated, message:"ExportConfigurations is deprecated.")
    public func exportConfigurations() -> EventLoopFuture<ExportConfigurationsResponse> {
        return client.send(operation: "ExportConfigurations", path: "/", httpMethod: "POST")
    }

    ///  Retrieves a short summary of discovered assets. This API operation takes no request parameters and is called as is at the command prompt as shown in the example.
    public func getDiscoverySummary(_ input: GetDiscoverySummaryRequest) -> EventLoopFuture<GetDiscoverySummaryResponse> {
        return client.send(operation: "GetDiscoverySummary", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves a list of configuration items as specified by the value passed to the required parameter configurationType. Optional filtering may be applied to refine search results.
    public func listConfigurations(_ input: ListConfigurationsRequest) -> EventLoopFuture<ListConfigurationsResponse> {
        return client.send(operation: "ListConfigurations", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves a list of servers that are one network hop away from a specified server.
    public func listServerNeighbors(_ input: ListServerNeighborsRequest) -> EventLoopFuture<ListServerNeighborsResponse> {
        return client.send(operation: "ListServerNeighbors", path: "/", httpMethod: "POST", input: input)
    }

    ///  Start the continuous flow of agent's discovered data into Amazon Athena.
    public func startContinuousExport(_ input: StartContinuousExportRequest) -> EventLoopFuture<StartContinuousExportResponse> {
        return client.send(operation: "StartContinuousExport", path: "/", httpMethod: "POST", input: input)
    }

    ///  Instructs the specified agents or connectors to start collecting data.
    public func startDataCollectionByAgentIds(_ input: StartDataCollectionByAgentIdsRequest) -> EventLoopFuture<StartDataCollectionByAgentIdsResponse> {
        return client.send(operation: "StartDataCollectionByAgentIds", path: "/", httpMethod: "POST", input: input)
    }

    ///   Begins the export of discovered data to an S3 bucket.  If you specify agentIds in a filter, the task exports up to 72 hours of detailed data collected by the identified Application Discovery Agent, including network, process, and performance details. A time range for exported agent data may be set by using startTime and endTime. Export of detailed agent data is limited to five concurrently running exports.   If you do not include an agentIds filter, summary data is exported that includes both AWS Agentless Discovery Connector data and summary data from AWS Discovery Agents. Export of summary data is limited to two exports per day. 
    public func startExportTask(_ input: StartExportTaskRequest) -> EventLoopFuture<StartExportTaskResponse> {
        return client.send(operation: "StartExportTask", path: "/", httpMethod: "POST", input: input)
    }

    ///  Starts an import task, which allows you to import details of your on-premises environment directly into AWS Migration Hub without having to use the Application Discovery Service (ADS) tools such as the Discovery Connector or Discovery Agent. This gives you the option to perform migration assessment and planning directly from your imported data, including the ability to group your devices as applications and track their migration status. To start an import request, do this:   Download the specially formatted comma separated value (CSV) import template, which you can find here: https://s3-us-west-2.amazonaws.com/templates-7cffcf56-bd96-4b1c-b45b-a5b42f282e46/import_template.csv.   Fill out the template with your server and application data.   Upload your import file to an Amazon S3 bucket, and make a note of it's Object URL. Your import file must be in the CSV format.   Use the console or the StartImportTask command with the AWS CLI or one of the AWS SDKs to import the records from your file.   For more information, including step-by-step procedures, see Migration Hub Import in the AWS Application Discovery Service User Guide.  There are limits to the number of import tasks you can create (and delete) in an AWS account. For more information, see AWS Application Discovery Service Limits in the AWS Application Discovery Service User Guide. 
    public func startImportTask(_ input: StartImportTaskRequest) -> EventLoopFuture<StartImportTaskResponse> {
        return client.send(operation: "StartImportTask", path: "/", httpMethod: "POST", input: input)
    }

    ///  Stop the continuous flow of agent's discovered data into Amazon Athena.
    public func stopContinuousExport(_ input: StopContinuousExportRequest) -> EventLoopFuture<StopContinuousExportResponse> {
        return client.send(operation: "StopContinuousExport", path: "/", httpMethod: "POST", input: input)
    }

    ///  Instructs the specified agents or connectors to stop collecting data.
    public func stopDataCollectionByAgentIds(_ input: StopDataCollectionByAgentIdsRequest) -> EventLoopFuture<StopDataCollectionByAgentIdsResponse> {
        return client.send(operation: "StopDataCollectionByAgentIds", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates metadata about an application.
    public func updateApplication(_ input: UpdateApplicationRequest) -> EventLoopFuture<UpdateApplicationResponse> {
        return client.send(operation: "UpdateApplication", path: "/", httpMethod: "POST", input: input)
    }
}
