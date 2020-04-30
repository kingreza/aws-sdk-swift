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
Client object for interacting with AWS ServiceDiscovery service.

AWS Cloud Map lets you configure public DNS, private DNS, or HTTP namespaces that your microservice applications run in. When an instance of the service becomes available, you can call the AWS Cloud Map API to register the instance with AWS Cloud Map. For public or private DNS namespaces, AWS Cloud Map automatically creates DNS records and an optional health check. Clients that submit public or private DNS queries, or HTTP requests, for the service receive an answer that contains up to eight healthy records. 
*/
public struct ServiceDiscovery {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the ServiceDiscovery client
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
            amzTarget: "Route53AutoNaming_v20170314",
            service: "servicediscovery",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2017-03-14",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [ServiceDiscoveryErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Creates an HTTP namespace. Service instances that you register using an HTTP namespace can be discovered using a DiscoverInstances request but can't be discovered using DNS.  For the current limit on the number of namespaces that you can create using the same AWS account, see AWS Cloud Map Limits in the AWS Cloud Map Developer Guide.
    public func createHttpNamespace(_ input: CreateHttpNamespaceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateHttpNamespaceResponse> {
        return client.send(operation: "CreateHttpNamespace", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a private namespace based on DNS, which will be visible only inside a specified Amazon VPC. The namespace defines your service naming scheme. For example, if you name your namespace example.com and name your service backend, the resulting DNS name for the service will be backend.example.com. For the current limit on the number of namespaces that you can create using the same AWS account, see AWS Cloud Map Limits in the AWS Cloud Map Developer Guide.
    public func createPrivateDnsNamespace(_ input: CreatePrivateDnsNamespaceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePrivateDnsNamespaceResponse> {
        return client.send(operation: "CreatePrivateDnsNamespace", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a public namespace based on DNS, which will be visible on the internet. The namespace defines your service naming scheme. For example, if you name your namespace example.com and name your service backend, the resulting DNS name for the service will be backend.example.com. For the current limit on the number of namespaces that you can create using the same AWS account, see AWS Cloud Map Limits in the AWS Cloud Map Developer Guide.
    public func createPublicDnsNamespace(_ input: CreatePublicDnsNamespaceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePublicDnsNamespaceResponse> {
        return client.send(operation: "CreatePublicDnsNamespace", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a service, which defines the configuration for the following entities:   For public and private DNS namespaces, one of the following combinations of DNS records in Amazon Route 53:   A   AAAA   A and AAAA   SRV   CNAME     Optionally, a health check   After you create the service, you can submit a RegisterInstance request, and AWS Cloud Map uses the values in the configuration to create the specified entities. For the current limit on the number of instances that you can register using the same namespace and using the same service, see AWS Cloud Map Limits in the AWS Cloud Map Developer Guide.
    public func createService(_ input: CreateServiceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateServiceResponse> {
        return client.send(operation: "CreateService", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes a namespace from the current account. If the namespace still contains one or more services, the request fails.
    public func deleteNamespace(_ input: DeleteNamespaceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteNamespaceResponse> {
        return client.send(operation: "DeleteNamespace", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes a specified service. If the service still contains one or more registered instances, the request fails.
    public func deleteService(_ input: DeleteServiceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteServiceResponse> {
        return client.send(operation: "DeleteService", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes the Amazon Route 53 DNS records and health check, if any, that AWS Cloud Map created for the specified instance.
    public func deregisterInstance(_ input: DeregisterInstanceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeregisterInstanceResponse> {
        return client.send(operation: "DeregisterInstance", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Discovers registered instances for a specified namespace and service.
    public func discoverInstances(_ input: DiscoverInstancesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DiscoverInstancesResponse> {
        return client.send(operation: "DiscoverInstances", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets information about a specified instance.
    public func getInstance(_ input: GetInstanceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetInstanceResponse> {
        return client.send(operation: "GetInstance", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets the current health status (Healthy, Unhealthy, or Unknown) of one or more instances that are associated with a specified service.  There is a brief delay between when you register an instance and when the health status for the instance is available.  
    public func getInstancesHealthStatus(_ input: GetInstancesHealthStatusRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetInstancesHealthStatusResponse> {
        return client.send(operation: "GetInstancesHealthStatus", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets information about a namespace.
    public func getNamespace(_ input: GetNamespaceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetNamespaceResponse> {
        return client.send(operation: "GetNamespace", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets information about any operation that returns an operation ID in the response, such as a CreateService request.  To get a list of operations that match specified criteria, see ListOperations. 
    public func getOperation(_ input: GetOperationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetOperationResponse> {
        return client.send(operation: "GetOperation", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets the settings for a specified service.
    public func getService(_ input: GetServiceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetServiceResponse> {
        return client.send(operation: "GetService", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists summary information about the instances that you registered by using a specified service.
    public func listInstances(_ input: ListInstancesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListInstancesResponse> {
        return client.send(operation: "ListInstances", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists summary information about the namespaces that were created by the current AWS account.
    public func listNamespaces(_ input: ListNamespacesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListNamespacesResponse> {
        return client.send(operation: "ListNamespaces", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists operations that match the criteria that you specify.
    public func listOperations(_ input: ListOperationsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListOperationsResponse> {
        return client.send(operation: "ListOperations", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists summary information for all the services that are associated with one or more specified namespaces.
    public func listServices(_ input: ListServicesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListServicesResponse> {
        return client.send(operation: "ListServices", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates or updates one or more records and, optionally, creates a health check based on the settings in a specified service. When you submit a RegisterInstance request, the following occurs:   For each DNS record that you define in the service that is specified by ServiceId, a record is created or updated in the hosted zone that is associated with the corresponding namespace.   If the service includes HealthCheckConfig, a health check is created based on the settings in the health check configuration.   The health check, if any, is associated with each of the new or updated records.    One RegisterInstance request must complete before you can submit another request and specify the same service ID and instance ID.  For more information, see CreateService. When AWS Cloud Map receives a DNS query for the specified DNS name, it returns the applicable value:    If the health check is healthy: returns all the records    If the health check is unhealthy: returns the applicable value for the last healthy instance    If you didn't specify a health check configuration: returns all the records   For the current limit on the number of instances that you can register using the same namespace and using the same service, see AWS Cloud Map Limits in the AWS Cloud Map Developer Guide.
    public func registerInstance(_ input: RegisterInstanceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RegisterInstanceResponse> {
        return client.send(operation: "RegisterInstance", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Submits a request to change the health status of a custom health check to healthy or unhealthy. You can use UpdateInstanceCustomHealthStatus to change the status only for custom health checks, which you define using HealthCheckCustomConfig when you create a service. You can't use it to change the status for Route 53 health checks, which you define using HealthCheckConfig. For more information, see HealthCheckCustomConfig.
    @discardableResult public func updateInstanceCustomHealthStatus(_ input: UpdateInstanceCustomHealthStatusRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "UpdateInstanceCustomHealthStatus", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Submits a request to perform the following operations:   Add or delete DnsRecords configurations   Update the TTL setting for existing DnsRecords configurations   Add, update, or delete HealthCheckConfig for a specified service   For public and private DNS namespaces, you must specify all DnsRecords configurations (and, optionally, HealthCheckConfig) that you want to appear in the updated service. Any current configurations that don't appear in an UpdateService request are deleted. When you update the TTL setting for a service, AWS Cloud Map also updates the corresponding settings in all the records and health checks that were created by using the specified service.
    public func updateService(_ input: UpdateServiceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateServiceResponse> {
        return client.send(operation: "UpdateService", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }
}
