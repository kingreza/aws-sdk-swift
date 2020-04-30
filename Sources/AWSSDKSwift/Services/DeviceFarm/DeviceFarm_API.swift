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
Client object for interacting with AWS DeviceFarm service.

Welcome to the AWS Device Farm API documentation, which contains APIs for:   Testing on desktop browsers  Device Farm makes it possible for you to test your web applications on desktop browsers using Selenium. The APIs for desktop browser testing contain TestGrid in their names. For more information, see Testing Web Applications on Selenium with Device Farm.   Testing on real mobile devices Device Farm makes it possible for you to test apps on physical phones, tablets, and other devices in the cloud. For more information, see the Device Farm Developer Guide.  
*/
public struct DeviceFarm {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the DeviceFarm client
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
            amzTarget: "DeviceFarm_20150623",
            service: "devicefarm",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2015-06-23",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [DeviceFarmErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Creates a device pool.
    public func createDevicePool(_ input: CreateDevicePoolRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDevicePoolResult> {
        return client.send(operation: "CreateDevicePool", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a profile that can be applied to one or more private fleet device instances.
    public func createInstanceProfile(_ input: CreateInstanceProfileRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateInstanceProfileResult> {
        return client.send(operation: "CreateInstanceProfile", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a network profile.
    public func createNetworkProfile(_ input: CreateNetworkProfileRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateNetworkProfileResult> {
        return client.send(operation: "CreateNetworkProfile", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a project.
    public func createProject(_ input: CreateProjectRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateProjectResult> {
        return client.send(operation: "CreateProject", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Specifies and starts a remote access session.
    public func createRemoteAccessSession(_ input: CreateRemoteAccessSessionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateRemoteAccessSessionResult> {
        return client.send(operation: "CreateRemoteAccessSession", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a Selenium testing project. Projects are used to track TestGridSession instances.
    public func createTestGridProject(_ input: CreateTestGridProjectRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTestGridProjectResult> {
        return client.send(operation: "CreateTestGridProject", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a signed, short-term URL that can be passed to a Selenium RemoteWebDriver constructor.
    public func createTestGridUrl(_ input: CreateTestGridUrlRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTestGridUrlResult> {
        return client.send(operation: "CreateTestGridUrl", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Uploads an app or test scripts.
    public func createUpload(_ input: CreateUploadRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateUploadResult> {
        return client.send(operation: "CreateUpload", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a configuration record in Device Farm for your Amazon Virtual Private Cloud (VPC) endpoint.
    public func createVPCEConfiguration(_ input: CreateVPCEConfigurationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateVPCEConfigurationResult> {
        return client.send(operation: "CreateVPCEConfiguration", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes a device pool given the pool ARN. Does not allow deletion of curated pools owned by the system.
    public func deleteDevicePool(_ input: DeleteDevicePoolRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDevicePoolResult> {
        return client.send(operation: "DeleteDevicePool", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes a profile that can be applied to one or more private device instances.
    public func deleteInstanceProfile(_ input: DeleteInstanceProfileRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteInstanceProfileResult> {
        return client.send(operation: "DeleteInstanceProfile", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes a network profile.
    public func deleteNetworkProfile(_ input: DeleteNetworkProfileRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteNetworkProfileResult> {
        return client.send(operation: "DeleteNetworkProfile", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes an AWS Device Farm project, given the project ARN.  Deleting this resource does not stop an in-progress run.
    public func deleteProject(_ input: DeleteProjectRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteProjectResult> {
        return client.send(operation: "DeleteProject", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes a completed remote access session and its results.
    public func deleteRemoteAccessSession(_ input: DeleteRemoteAccessSessionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteRemoteAccessSessionResult> {
        return client.send(operation: "DeleteRemoteAccessSession", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes the run, given the run ARN.  Deleting this resource does not stop an in-progress run.
    public func deleteRun(_ input: DeleteRunRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteRunResult> {
        return client.send(operation: "DeleteRun", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///   Deletes a Selenium testing project and all content generated under it.   You cannot undo this operation.   You cannot delete a project if it has active sessions. 
    public func deleteTestGridProject(_ input: DeleteTestGridProjectRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteTestGridProjectResult> {
        return client.send(operation: "DeleteTestGridProject", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes an upload given the upload ARN.
    public func deleteUpload(_ input: DeleteUploadRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteUploadResult> {
        return client.send(operation: "DeleteUpload", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes a configuration for your Amazon Virtual Private Cloud (VPC) endpoint.
    public func deleteVPCEConfiguration(_ input: DeleteVPCEConfigurationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteVPCEConfigurationResult> {
        return client.send(operation: "DeleteVPCEConfiguration", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns the number of unmetered iOS or unmetered Android devices that have been purchased by the account.
    public func getAccountSettings(_ input: GetAccountSettingsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetAccountSettingsResult> {
        return client.send(operation: "GetAccountSettings", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets information about a unique device type.
    public func getDevice(_ input: GetDeviceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDeviceResult> {
        return client.send(operation: "GetDevice", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns information about a device instance that belongs to a private device fleet.
    public func getDeviceInstance(_ input: GetDeviceInstanceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDeviceInstanceResult> {
        return client.send(operation: "GetDeviceInstance", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets information about a device pool.
    public func getDevicePool(_ input: GetDevicePoolRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDevicePoolResult> {
        return client.send(operation: "GetDevicePool", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets information about compatibility with a device pool.
    public func getDevicePoolCompatibility(_ input: GetDevicePoolCompatibilityRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDevicePoolCompatibilityResult> {
        return client.send(operation: "GetDevicePoolCompatibility", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns information about the specified instance profile.
    public func getInstanceProfile(_ input: GetInstanceProfileRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetInstanceProfileResult> {
        return client.send(operation: "GetInstanceProfile", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets information about a job.
    public func getJob(_ input: GetJobRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetJobResult> {
        return client.send(operation: "GetJob", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns information about a network profile.
    public func getNetworkProfile(_ input: GetNetworkProfileRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetNetworkProfileResult> {
        return client.send(operation: "GetNetworkProfile", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets the current status and future status of all offerings purchased by an AWS account. The response indicates how many offerings are currently available and the offerings that will be available in the next period. The API returns a NotEligible error if the user is not permitted to invoke the operation. If you must be able to invoke this operation, contact aws-devicefarm-support@amazon.com.
    public func getOfferingStatus(_ input: GetOfferingStatusRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetOfferingStatusResult> {
        return client.send(operation: "GetOfferingStatus", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets information about a project.
    public func getProject(_ input: GetProjectRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetProjectResult> {
        return client.send(operation: "GetProject", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns a link to a currently running remote access session.
    public func getRemoteAccessSession(_ input: GetRemoteAccessSessionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetRemoteAccessSessionResult> {
        return client.send(operation: "GetRemoteAccessSession", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets information about a run.
    public func getRun(_ input: GetRunRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetRunResult> {
        return client.send(operation: "GetRun", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets information about a suite.
    public func getSuite(_ input: GetSuiteRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetSuiteResult> {
        return client.send(operation: "GetSuite", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets information about a test.
    public func getTest(_ input: GetTestRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetTestResult> {
        return client.send(operation: "GetTest", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Retrieves information about a Selenium testing project.
    public func getTestGridProject(_ input: GetTestGridProjectRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetTestGridProjectResult> {
        return client.send(operation: "GetTestGridProject", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  A session is an instance of a browser created through a RemoteWebDriver with the URL from CreateTestGridUrlResult$url. You can use the following to look up sessions:   The session ARN (GetTestGridSessionRequest$sessionArn).   The project ARN and a session ID (GetTestGridSessionRequest$projectArn and GetTestGridSessionRequest$sessionId).   
    public func getTestGridSession(_ input: GetTestGridSessionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetTestGridSessionResult> {
        return client.send(operation: "GetTestGridSession", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets information about an upload.
    public func getUpload(_ input: GetUploadRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetUploadResult> {
        return client.send(operation: "GetUpload", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns information about the configuration settings for your Amazon Virtual Private Cloud (VPC) endpoint.
    public func getVPCEConfiguration(_ input: GetVPCEConfigurationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetVPCEConfigurationResult> {
        return client.send(operation: "GetVPCEConfiguration", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Installs an application to the device in a remote access session. For Android applications, the file must be in .apk format. For iOS applications, the file must be in .ipa format.
    public func installToRemoteAccessSession(_ input: InstallToRemoteAccessSessionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InstallToRemoteAccessSessionResult> {
        return client.send(operation: "InstallToRemoteAccessSession", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets information about artifacts.
    public func listArtifacts(_ input: ListArtifactsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListArtifactsResult> {
        return client.send(operation: "ListArtifacts", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns information about the private device instances associated with one or more AWS accounts.
    public func listDeviceInstances(_ input: ListDeviceInstancesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDeviceInstancesResult> {
        return client.send(operation: "ListDeviceInstances", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets information about device pools.
    public func listDevicePools(_ input: ListDevicePoolsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDevicePoolsResult> {
        return client.send(operation: "ListDevicePools", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets information about unique device types.
    public func listDevices(_ input: ListDevicesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDevicesResult> {
        return client.send(operation: "ListDevices", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns information about all the instance profiles in an AWS account.
    public func listInstanceProfiles(_ input: ListInstanceProfilesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListInstanceProfilesResult> {
        return client.send(operation: "ListInstanceProfiles", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets information about jobs for a given test run.
    public func listJobs(_ input: ListJobsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListJobsResult> {
        return client.send(operation: "ListJobs", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns the list of available network profiles.
    public func listNetworkProfiles(_ input: ListNetworkProfilesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListNetworkProfilesResult> {
        return client.send(operation: "ListNetworkProfiles", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns a list of offering promotions. Each offering promotion record contains the ID and description of the promotion. The API returns a NotEligible error if the caller is not permitted to invoke the operation. Contact aws-devicefarm-support@amazon.com if you must be able to invoke this operation.
    public func listOfferingPromotions(_ input: ListOfferingPromotionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListOfferingPromotionsResult> {
        return client.send(operation: "ListOfferingPromotions", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns a list of all historical purchases, renewals, and system renewal transactions for an AWS account. The list is paginated and ordered by a descending timestamp (most recent transactions are first). The API returns a NotEligible error if the user is not permitted to invoke the operation. If you must be able to invoke this operation, contact aws-devicefarm-support@amazon.com.
    public func listOfferingTransactions(_ input: ListOfferingTransactionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListOfferingTransactionsResult> {
        return client.send(operation: "ListOfferingTransactions", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns a list of products or offerings that the user can manage through the API. Each offering record indicates the recurring price per unit and the frequency for that offering. The API returns a NotEligible error if the user is not permitted to invoke the operation. If you must be able to invoke this operation, contact aws-devicefarm-support@amazon.com.
    public func listOfferings(_ input: ListOfferingsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListOfferingsResult> {
        return client.send(operation: "ListOfferings", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets information about projects.
    public func listProjects(_ input: ListProjectsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListProjectsResult> {
        return client.send(operation: "ListProjects", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns a list of all currently running remote access sessions.
    public func listRemoteAccessSessions(_ input: ListRemoteAccessSessionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListRemoteAccessSessionsResult> {
        return client.send(operation: "ListRemoteAccessSessions", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets information about runs, given an AWS Device Farm project ARN.
    public func listRuns(_ input: ListRunsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListRunsResult> {
        return client.send(operation: "ListRuns", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets information about samples, given an AWS Device Farm job ARN.
    public func listSamples(_ input: ListSamplesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListSamplesResult> {
        return client.send(operation: "ListSamples", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets information about test suites for a given job.
    public func listSuites(_ input: ListSuitesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListSuitesResult> {
        return client.send(operation: "ListSuites", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  List the tags for an AWS Device Farm resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.send(operation: "ListTagsForResource", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets a list of all Selenium testing projects in your account.
    public func listTestGridProjects(_ input: ListTestGridProjectsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTestGridProjectsResult> {
        return client.send(operation: "ListTestGridProjects", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns a list of the actions taken in a TestGridSession.
    public func listTestGridSessionActions(_ input: ListTestGridSessionActionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTestGridSessionActionsResult> {
        return client.send(operation: "ListTestGridSessionActions", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Retrieves a list of artifacts created during the session.
    public func listTestGridSessionArtifacts(_ input: ListTestGridSessionArtifactsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTestGridSessionArtifactsResult> {
        return client.send(operation: "ListTestGridSessionArtifacts", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Retrieves a list of sessions for a TestGridProject.
    public func listTestGridSessions(_ input: ListTestGridSessionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTestGridSessionsResult> {
        return client.send(operation: "ListTestGridSessions", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets information about tests in a given test suite.
    public func listTests(_ input: ListTestsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTestsResult> {
        return client.send(operation: "ListTests", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets information about unique problems, such as exceptions or crashes. Unique problems are defined as a single instance of an error across a run, job, or suite. For example, if a call in your application consistently raises an exception (OutOfBoundsException in MyActivity.java:386), ListUniqueProblems returns a single entry instead of many individual entries for that exception.
    public func listUniqueProblems(_ input: ListUniqueProblemsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListUniqueProblemsResult> {
        return client.send(operation: "ListUniqueProblems", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets information about uploads, given an AWS Device Farm project ARN.
    public func listUploads(_ input: ListUploadsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListUploadsResult> {
        return client.send(operation: "ListUploads", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns information about all Amazon Virtual Private Cloud (VPC) endpoint configurations in the AWS account.
    public func listVPCEConfigurations(_ input: ListVPCEConfigurationsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListVPCEConfigurationsResult> {
        return client.send(operation: "ListVPCEConfigurations", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Immediately purchases offerings for an AWS account. Offerings renew with the latest total purchased quantity for an offering, unless the renewal was overridden. The API returns a NotEligible error if the user is not permitted to invoke the operation. If you must be able to invoke this operation, contact aws-devicefarm-support@amazon.com.
    public func purchaseOffering(_ input: PurchaseOfferingRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PurchaseOfferingResult> {
        return client.send(operation: "PurchaseOffering", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Explicitly sets the quantity of devices to renew for an offering, starting from the effectiveDate of the next period. The API returns a NotEligible error if the user is not permitted to invoke the operation. If you must be able to invoke this operation, contact aws-devicefarm-support@amazon.com.
    public func renewOffering(_ input: RenewOfferingRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RenewOfferingResult> {
        return client.send(operation: "RenewOffering", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Schedules a run.
    public func scheduleRun(_ input: ScheduleRunRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ScheduleRunResult> {
        return client.send(operation: "ScheduleRun", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Initiates a stop request for the current job. AWS Device Farm immediately stops the job on the device where tests have not started. You are not billed for this device. On the device where tests have started, setup suite and teardown suite tests run to completion on the device. You are billed for setup, teardown, and any tests that were in progress or already completed.
    public func stopJob(_ input: StopJobRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopJobResult> {
        return client.send(operation: "StopJob", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Ends a specified remote access session.
    public func stopRemoteAccessSession(_ input: StopRemoteAccessSessionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopRemoteAccessSessionResult> {
        return client.send(operation: "StopRemoteAccessSession", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Initiates a stop request for the current test run. AWS Device Farm immediately stops the run on devices where tests have not started. You are not billed for these devices. On devices where tests have started executing, setup suite and teardown suite tests run to completion on those devices. You are billed for setup, teardown, and any tests that were in progress or already completed.
    public func stopRun(_ input: StopRunRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopRunResult> {
        return client.send(operation: "StopRun", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Associates the specified tags to a resource with the specified resourceArn. If existing tags on a resource are not specified in the request parameters, they are not changed. When a resource is deleted, the tags associated with that resource are also deleted.
    public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return client.send(operation: "TagResource", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes the specified tags from a resource.
    public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return client.send(operation: "UntagResource", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates information about a private device instance.
    public func updateDeviceInstance(_ input: UpdateDeviceInstanceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDeviceInstanceResult> {
        return client.send(operation: "UpdateDeviceInstance", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Modifies the name, description, and rules in a device pool given the attributes and the pool ARN. Rule updates are all-or-nothing, meaning they can only be updated as a whole (or not at all).
    public func updateDevicePool(_ input: UpdateDevicePoolRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDevicePoolResult> {
        return client.send(operation: "UpdateDevicePool", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates information about an existing private device instance profile.
    public func updateInstanceProfile(_ input: UpdateInstanceProfileRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateInstanceProfileResult> {
        return client.send(operation: "UpdateInstanceProfile", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates the network profile.
    public func updateNetworkProfile(_ input: UpdateNetworkProfileRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateNetworkProfileResult> {
        return client.send(operation: "UpdateNetworkProfile", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Modifies the specified project name, given the project ARN and a new name.
    public func updateProject(_ input: UpdateProjectRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateProjectResult> {
        return client.send(operation: "UpdateProject", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Change details of a project.
    public func updateTestGridProject(_ input: UpdateTestGridProjectRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateTestGridProjectResult> {
        return client.send(operation: "UpdateTestGridProject", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates an uploaded test spec.
    public func updateUpload(_ input: UpdateUploadRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateUploadResult> {
        return client.send(operation: "UpdateUpload", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates information about an Amazon Virtual Private Cloud (VPC) endpoint configuration.
    public func updateVPCEConfiguration(_ input: UpdateVPCEConfigurationRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateVPCEConfigurationResult> {
        return client.send(operation: "UpdateVPCEConfiguration", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }
}
