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

import Foundation
import AWSSDKSwiftCore

extension CloudHSMV2 {
    //MARK: Enums

    public enum BackupPolicy: String, CustomStringConvertible, Codable {
        case `default` = "DEFAULT"
        public var description: String { return self.rawValue }
    }

    public enum BackupState: String, CustomStringConvertible, Codable {
        case createInProgress = "CREATE_IN_PROGRESS"
        case ready = "READY"
        case deleted = "DELETED"
        case pendingDeletion = "PENDING_DELETION"
        public var description: String { return self.rawValue }
    }

    public enum ClusterState: String, CustomStringConvertible, Codable {
        case createInProgress = "CREATE_IN_PROGRESS"
        case uninitialized = "UNINITIALIZED"
        case initializeInProgress = "INITIALIZE_IN_PROGRESS"
        case initialized = "INITIALIZED"
        case active = "ACTIVE"
        case updateInProgress = "UPDATE_IN_PROGRESS"
        case deleteInProgress = "DELETE_IN_PROGRESS"
        case deleted = "DELETED"
        case degraded = "DEGRADED"
        public var description: String { return self.rawValue }
    }

    public enum HsmState: String, CustomStringConvertible, Codable {
        case createInProgress = "CREATE_IN_PROGRESS"
        case active = "ACTIVE"
        case degraded = "DEGRADED"
        case deleteInProgress = "DELETE_IN_PROGRESS"
        case deleted = "DELETED"
        public var description: String { return self.rawValue }
    }

    //MARK: Shapes

    public struct Backup: AWSShape {

        /// The identifier (ID) of the backup.
        public let backupId: String
        /// The state of the backup.
        public let backupState: BackupState?
        /// The identifier (ID) of the cluster that was backed up.
        public let clusterId: String?
        /// The date and time when the backup was copied from a source backup.
        public let copyTimestamp: TimeStamp?
        /// The date and time when the backup was created.
        public let createTimestamp: TimeStamp?
        /// The date and time when the backup will be permanently deleted.
        public let deleteTimestamp: TimeStamp?
        /// The identifier (ID) of the source backup from which the new backup was copied.
        public let sourceBackup: String?
        /// The identifier (ID) of the cluster containing the source backup from which the new backup was copied. .
        public let sourceCluster: String?
        /// The AWS region that contains the source backup from which the new backup was copied.
        public let sourceRegion: String?
        public let tagList: [Tag]?

        public init(backupId: String, backupState: BackupState? = nil, clusterId: String? = nil, copyTimestamp: TimeStamp? = nil, createTimestamp: TimeStamp? = nil, deleteTimestamp: TimeStamp? = nil, sourceBackup: String? = nil, sourceCluster: String? = nil, sourceRegion: String? = nil, tagList: [Tag]? = nil) {
            self.backupId = backupId
            self.backupState = backupState
            self.clusterId = clusterId
            self.copyTimestamp = copyTimestamp
            self.createTimestamp = createTimestamp
            self.deleteTimestamp = deleteTimestamp
            self.sourceBackup = sourceBackup
            self.sourceCluster = sourceCluster
            self.sourceRegion = sourceRegion
            self.tagList = tagList
        }

        private enum CodingKeys: String, CodingKey {
            case backupId = "BackupId"
            case backupState = "BackupState"
            case clusterId = "ClusterId"
            case copyTimestamp = "CopyTimestamp"
            case createTimestamp = "CreateTimestamp"
            case deleteTimestamp = "DeleteTimestamp"
            case sourceBackup = "SourceBackup"
            case sourceCluster = "SourceCluster"
            case sourceRegion = "SourceRegion"
            case tagList = "TagList"
        }
    }

    public struct Certificates: AWSShape {

        /// The HSM hardware certificate issued (signed) by AWS CloudHSM.
        public let awsHardwareCertificate: String?
        /// The cluster certificate issued (signed) by the issuing certificate authority (CA) of the cluster's owner.
        public let clusterCertificate: String?
        /// The cluster's certificate signing request (CSR). The CSR exists only when the cluster's state is UNINITIALIZED.
        public let clusterCsr: String?
        /// The HSM certificate issued (signed) by the HSM hardware.
        public let hsmCertificate: String?
        /// The HSM hardware certificate issued (signed) by the hardware manufacturer.
        public let manufacturerHardwareCertificate: String?

        public init(awsHardwareCertificate: String? = nil, clusterCertificate: String? = nil, clusterCsr: String? = nil, hsmCertificate: String? = nil, manufacturerHardwareCertificate: String? = nil) {
            self.awsHardwareCertificate = awsHardwareCertificate
            self.clusterCertificate = clusterCertificate
            self.clusterCsr = clusterCsr
            self.hsmCertificate = hsmCertificate
            self.manufacturerHardwareCertificate = manufacturerHardwareCertificate
        }

        private enum CodingKeys: String, CodingKey {
            case awsHardwareCertificate = "AwsHardwareCertificate"
            case clusterCertificate = "ClusterCertificate"
            case clusterCsr = "ClusterCsr"
            case hsmCertificate = "HsmCertificate"
            case manufacturerHardwareCertificate = "ManufacturerHardwareCertificate"
        }
    }

    public struct Cluster: AWSShape {

        /// The cluster's backup policy.
        public let backupPolicy: BackupPolicy?
        /// Contains one or more certificates or a certificate signing request (CSR).
        public let certificates: Certificates?
        /// The cluster's identifier (ID).
        public let clusterId: String?
        /// The date and time when the cluster was created.
        public let createTimestamp: TimeStamp?
        /// Contains information about the HSMs in the cluster.
        public let hsms: [Hsm]?
        /// The type of HSM that the cluster contains.
        public let hsmType: String?
        /// The default password for the cluster's Pre-Crypto Officer (PRECO) user.
        public let preCoPassword: String?
        /// The identifier (ID) of the cluster's security group.
        public let securityGroup: String?
        /// The identifier (ID) of the backup used to create the cluster. This value exists only when the cluster was created from a backup.
        public let sourceBackupId: String?
        /// The cluster's state.
        public let state: ClusterState?
        /// A description of the cluster's state.
        public let stateMessage: String?
        /// A map from availability zone to the cluster’s subnet in that availability zone.
        public let subnetMapping: [String: String]?
        public let tagList: [Tag]?
        /// The identifier (ID) of the virtual private cloud (VPC) that contains the cluster.
        public let vpcId: String?

        public init(backupPolicy: BackupPolicy? = nil, certificates: Certificates? = nil, clusterId: String? = nil, createTimestamp: TimeStamp? = nil, hsms: [Hsm]? = nil, hsmType: String? = nil, preCoPassword: String? = nil, securityGroup: String? = nil, sourceBackupId: String? = nil, state: ClusterState? = nil, stateMessage: String? = nil, subnetMapping: [String: String]? = nil, tagList: [Tag]? = nil, vpcId: String? = nil) {
            self.backupPolicy = backupPolicy
            self.certificates = certificates
            self.clusterId = clusterId
            self.createTimestamp = createTimestamp
            self.hsms = hsms
            self.hsmType = hsmType
            self.preCoPassword = preCoPassword
            self.securityGroup = securityGroup
            self.sourceBackupId = sourceBackupId
            self.state = state
            self.stateMessage = stateMessage
            self.subnetMapping = subnetMapping
            self.tagList = tagList
            self.vpcId = vpcId
        }

        private enum CodingKeys: String, CodingKey {
            case backupPolicy = "BackupPolicy"
            case certificates = "Certificates"
            case clusterId = "ClusterId"
            case createTimestamp = "CreateTimestamp"
            case hsms = "Hsms"
            case hsmType = "HsmType"
            case preCoPassword = "PreCoPassword"
            case securityGroup = "SecurityGroup"
            case sourceBackupId = "SourceBackupId"
            case state = "State"
            case stateMessage = "StateMessage"
            case subnetMapping = "SubnetMapping"
            case tagList = "TagList"
            case vpcId = "VpcId"
        }
    }

    public struct CopyBackupToRegionRequest: AWSShape {

        /// The ID of the backup that will be copied to the destination region. 
        public let backupId: String
        /// The AWS region that will contain your copied CloudHSM cluster backup.
        public let destinationRegion: String
        public let tagList: [Tag]?

        public init(backupId: String, destinationRegion: String, tagList: [Tag]? = nil) {
            self.backupId = backupId
            self.destinationRegion = destinationRegion
            self.tagList = tagList
        }

        public func validate(name: String) throws {
            try validate(self.backupId, name:"backupId", parent: name, pattern: "backup-[2-7a-zA-Z]{11,16}")
            try validate(self.destinationRegion, name:"destinationRegion", parent: name, pattern: "[a-z]{2}(-(gov))?-(east|west|north|south|central){1,2}-\\d")
            try self.tagList?.forEach {
                try $0.validate(name: "\(name).tagList[]")
            }
            try validate(self.tagList, name:"tagList", parent: name, max: 50)
            try validate(self.tagList, name:"tagList", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case backupId = "BackupId"
            case destinationRegion = "DestinationRegion"
            case tagList = "TagList"
        }
    }

    public struct CopyBackupToRegionResponse: AWSShape {

        /// Information on the backup that will be copied to the destination region, including CreateTimestamp, SourceBackup, SourceCluster, and Source Region. CreateTimestamp of the destination backup will be the same as that of the source backup. You will need to use the sourceBackupID returned in this operation to use the DescribeBackups operation on the backup that will be copied to the destination region.
        public let destinationBackup: DestinationBackup?

        public init(destinationBackup: DestinationBackup? = nil) {
            self.destinationBackup = destinationBackup
        }

        private enum CodingKeys: String, CodingKey {
            case destinationBackup = "DestinationBackup"
        }
    }

    public struct CreateClusterRequest: AWSShape {

        /// The type of HSM to use in the cluster. Currently the only allowed value is hsm1.medium.
        public let hsmType: String
        /// The identifier (ID) of the cluster backup to restore. Use this value to restore the cluster from a backup instead of creating a new cluster. To find the backup ID, use DescribeBackups.
        public let sourceBackupId: String?
        /// The identifiers (IDs) of the subnets where you are creating the cluster. You must specify at least one subnet. If you specify multiple subnets, they must meet the following criteria:   All subnets must be in the same virtual private cloud (VPC).   You can specify only one subnet per Availability Zone.  
        public let subnetIds: [String]
        public let tagList: [Tag]?

        public init(hsmType: String, sourceBackupId: String? = nil, subnetIds: [String], tagList: [Tag]? = nil) {
            self.hsmType = hsmType
            self.sourceBackupId = sourceBackupId
            self.subnetIds = subnetIds
            self.tagList = tagList
        }

        public func validate(name: String) throws {
            try validate(self.hsmType, name:"hsmType", parent: name, pattern: "(hsm1\\.medium)")
            try validate(self.sourceBackupId, name:"sourceBackupId", parent: name, pattern: "backup-[2-7a-zA-Z]{11,16}")
            try self.subnetIds.forEach {
                try validate($0, name: "subnetIds[]", parent: name, pattern: "subnet-[0-9a-fA-F]{8,17}")
            }
            try validate(self.subnetIds, name:"subnetIds", parent: name, max: 10)
            try validate(self.subnetIds, name:"subnetIds", parent: name, min: 1)
            try self.tagList?.forEach {
                try $0.validate(name: "\(name).tagList[]")
            }
            try validate(self.tagList, name:"tagList", parent: name, max: 50)
            try validate(self.tagList, name:"tagList", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case hsmType = "HsmType"
            case sourceBackupId = "SourceBackupId"
            case subnetIds = "SubnetIds"
            case tagList = "TagList"
        }
    }

    public struct CreateClusterResponse: AWSShape {

        /// Information about the cluster that was created.
        public let cluster: Cluster?

        public init(cluster: Cluster? = nil) {
            self.cluster = cluster
        }

        private enum CodingKeys: String, CodingKey {
            case cluster = "Cluster"
        }
    }

    public struct CreateHsmRequest: AWSShape {

        /// The Availability Zone where you are creating the HSM. To find the cluster's Availability Zones, use DescribeClusters.
        public let availabilityZone: String
        /// The identifier (ID) of the HSM's cluster. To find the cluster ID, use DescribeClusters.
        public let clusterId: String
        /// The HSM's IP address. If you specify an IP address, use an available address from the subnet that maps to the Availability Zone where you are creating the HSM. If you don't specify an IP address, one is chosen for you from that subnet.
        public let ipAddress: String?

        public init(availabilityZone: String, clusterId: String, ipAddress: String? = nil) {
            self.availabilityZone = availabilityZone
            self.clusterId = clusterId
            self.ipAddress = ipAddress
        }

        public func validate(name: String) throws {
            try validate(self.availabilityZone, name:"availabilityZone", parent: name, pattern: "[a-z]{2}(-(gov))?-(east|west|north|south|central){1,2}-\\d[a-z]")
            try validate(self.clusterId, name:"clusterId", parent: name, pattern: "cluster-[2-7a-zA-Z]{11,16}")
            try validate(self.ipAddress, name:"ipAddress", parent: name, pattern: "\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}")
        }

        private enum CodingKeys: String, CodingKey {
            case availabilityZone = "AvailabilityZone"
            case clusterId = "ClusterId"
            case ipAddress = "IpAddress"
        }
    }

    public struct CreateHsmResponse: AWSShape {

        /// Information about the HSM that was created.
        public let hsm: Hsm?

        public init(hsm: Hsm? = nil) {
            self.hsm = hsm
        }

        private enum CodingKeys: String, CodingKey {
            case hsm = "Hsm"
        }
    }

    public struct DeleteBackupRequest: AWSShape {

        /// The ID of the backup to be deleted. To find the ID of a backup, use the DescribeBackups operation.
        public let backupId: String

        public init(backupId: String) {
            self.backupId = backupId
        }

        public func validate(name: String) throws {
            try validate(self.backupId, name:"backupId", parent: name, pattern: "backup-[2-7a-zA-Z]{11,16}")
        }

        private enum CodingKeys: String, CodingKey {
            case backupId = "BackupId"
        }
    }

    public struct DeleteBackupResponse: AWSShape {

        /// Information on the Backup object deleted.
        public let backup: Backup?

        public init(backup: Backup? = nil) {
            self.backup = backup
        }

        private enum CodingKeys: String, CodingKey {
            case backup = "Backup"
        }
    }

    public struct DeleteClusterRequest: AWSShape {

        /// The identifier (ID) of the cluster that you are deleting. To find the cluster ID, use DescribeClusters.
        public let clusterId: String

        public init(clusterId: String) {
            self.clusterId = clusterId
        }

        public func validate(name: String) throws {
            try validate(self.clusterId, name:"clusterId", parent: name, pattern: "cluster-[2-7a-zA-Z]{11,16}")
        }

        private enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
        }
    }

    public struct DeleteClusterResponse: AWSShape {

        /// Information about the cluster that was deleted.
        public let cluster: Cluster?

        public init(cluster: Cluster? = nil) {
            self.cluster = cluster
        }

        private enum CodingKeys: String, CodingKey {
            case cluster = "Cluster"
        }
    }

    public struct DeleteHsmRequest: AWSShape {

        /// The identifier (ID) of the cluster that contains the HSM that you are deleting.
        public let clusterId: String
        /// The identifier (ID) of the elastic network interface (ENI) of the HSM that you are deleting.
        public let eniId: String?
        /// The IP address of the elastic network interface (ENI) of the HSM that you are deleting.
        public let eniIp: String?
        /// The identifier (ID) of the HSM that you are deleting.
        public let hsmId: String?

        public init(clusterId: String, eniId: String? = nil, eniIp: String? = nil, hsmId: String? = nil) {
            self.clusterId = clusterId
            self.eniId = eniId
            self.eniIp = eniIp
            self.hsmId = hsmId
        }

        public func validate(name: String) throws {
            try validate(self.clusterId, name:"clusterId", parent: name, pattern: "cluster-[2-7a-zA-Z]{11,16}")
            try validate(self.eniId, name:"eniId", parent: name, pattern: "eni-[0-9a-fA-F]{8,17}")
            try validate(self.eniIp, name:"eniIp", parent: name, pattern: "\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}")
            try validate(self.hsmId, name:"hsmId", parent: name, pattern: "hsm-[2-7a-zA-Z]{11,16}")
        }

        private enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case eniId = "EniId"
            case eniIp = "EniIp"
            case hsmId = "HsmId"
        }
    }

    public struct DeleteHsmResponse: AWSShape {

        /// The identifier (ID) of the HSM that was deleted.
        public let hsmId: String?

        public init(hsmId: String? = nil) {
            self.hsmId = hsmId
        }

        private enum CodingKeys: String, CodingKey {
            case hsmId = "HsmId"
        }
    }

    public struct DescribeBackupsRequest: AWSShape {

        /// One or more filters to limit the items returned in the response. Use the backupIds filter to return only the specified backups. Specify backups by their backup identifier (ID). Use the sourceBackupIds filter to return only the backups created from a source backup. The sourceBackupID of a source backup is returned by the CopyBackupToRegion operation. Use the clusterIds filter to return only the backups for the specified clusters. Specify clusters by their cluster identifier (ID). Use the states filter to return only backups that match the specified state.
        public let filters: [String: [String]]?
        /// The maximum number of backups to return in the response. When there are more backups than the number you specify, the response contains a NextToken value.
        public let maxResults: Int?
        /// The NextToken value that you received in the previous response. Use this value to get more backups.
        public let nextToken: String?
        /// Designates whether or not to sort the return backups by ascending chronological order of generation.
        public let sortAscending: Bool?

        public init(filters: [String: [String]]? = nil, maxResults: Int? = nil, nextToken: String? = nil, sortAscending: Bool? = nil) {
            self.filters = filters
            self.maxResults = maxResults
            self.nextToken = nextToken
            self.sortAscending = sortAscending
        }

        public func validate(name: String) throws {
            try self.filters?.forEach {
                try validate($0.key, name:"filters.key", parent: name, pattern: "[a-zA-Z0-9_-]+")
            }
            try validate(self.maxResults, name:"maxResults", parent: name, max: 100)
            try validate(self.maxResults, name:"maxResults", parent: name, min: 1)
            try validate(self.nextToken, name:"nextToken", parent: name, max: 256)
            try validate(self.nextToken, name:"nextToken", parent: name, pattern: ".*")
        }

        private enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case maxResults = "MaxResults"
            case nextToken = "NextToken"
            case sortAscending = "SortAscending"
        }
    }

    public struct DescribeBackupsResponse: AWSShape {

        /// A list of backups.
        public let backups: [Backup]?
        /// An opaque string that indicates that the response contains only a subset of backups. Use this value in a subsequent DescribeBackups request to get more backups.
        public let nextToken: String?

        public init(backups: [Backup]? = nil, nextToken: String? = nil) {
            self.backups = backups
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case backups = "Backups"
            case nextToken = "NextToken"
        }
    }

    public struct DescribeClustersRequest: AWSShape {

        /// One or more filters to limit the items returned in the response. Use the clusterIds filter to return only the specified clusters. Specify clusters by their cluster identifier (ID). Use the vpcIds filter to return only the clusters in the specified virtual private clouds (VPCs). Specify VPCs by their VPC identifier (ID). Use the states filter to return only clusters that match the specified state.
        public let filters: [String: [String]]?
        /// The maximum number of clusters to return in the response. When there are more clusters than the number you specify, the response contains a NextToken value.
        public let maxResults: Int?
        /// The NextToken value that you received in the previous response. Use this value to get more clusters.
        public let nextToken: String?

        public init(filters: [String: [String]]? = nil, maxResults: Int? = nil, nextToken: String? = nil) {
            self.filters = filters
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        public func validate(name: String) throws {
            try self.filters?.forEach {
                try validate($0.key, name:"filters.key", parent: name, pattern: "[a-zA-Z0-9_-]+")
            }
            try validate(self.maxResults, name:"maxResults", parent: name, max: 100)
            try validate(self.maxResults, name:"maxResults", parent: name, min: 1)
            try validate(self.nextToken, name:"nextToken", parent: name, max: 256)
            try validate(self.nextToken, name:"nextToken", parent: name, pattern: ".*")
        }

        private enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case maxResults = "MaxResults"
            case nextToken = "NextToken"
        }
    }

    public struct DescribeClustersResponse: AWSShape {

        /// A list of clusters.
        public let clusters: [Cluster]?
        /// An opaque string that indicates that the response contains only a subset of clusters. Use this value in a subsequent DescribeClusters request to get more clusters.
        public let nextToken: String?

        public init(clusters: [Cluster]? = nil, nextToken: String? = nil) {
            self.clusters = clusters
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case clusters = "Clusters"
            case nextToken = "NextToken"
        }
    }

    public struct DestinationBackup: AWSShape {

        /// The date and time when both the source backup was created.
        public let createTimestamp: TimeStamp?
        /// The identifier (ID) of the source backup from which the new backup was copied.
        public let sourceBackup: String?
        /// The identifier (ID) of the cluster containing the source backup from which the new backup was copied.
        public let sourceCluster: String?
        /// The AWS region that contains the source backup from which the new backup was copied.
        public let sourceRegion: String?

        public init(createTimestamp: TimeStamp? = nil, sourceBackup: String? = nil, sourceCluster: String? = nil, sourceRegion: String? = nil) {
            self.createTimestamp = createTimestamp
            self.sourceBackup = sourceBackup
            self.sourceCluster = sourceCluster
            self.sourceRegion = sourceRegion
        }

        private enum CodingKeys: String, CodingKey {
            case createTimestamp = "CreateTimestamp"
            case sourceBackup = "SourceBackup"
            case sourceCluster = "SourceCluster"
            case sourceRegion = "SourceRegion"
        }
    }

    public struct Hsm: AWSShape {

        /// The Availability Zone that contains the HSM.
        public let availabilityZone: String?
        /// The identifier (ID) of the cluster that contains the HSM.
        public let clusterId: String?
        /// The identifier (ID) of the HSM's elastic network interface (ENI).
        public let eniId: String?
        /// The IP address of the HSM's elastic network interface (ENI).
        public let eniIp: String?
        /// The HSM's identifier (ID).
        public let hsmId: String
        /// The HSM's state.
        public let state: HsmState?
        /// A description of the HSM's state.
        public let stateMessage: String?
        /// The subnet that contains the HSM's elastic network interface (ENI).
        public let subnetId: String?

        public init(availabilityZone: String? = nil, clusterId: String? = nil, eniId: String? = nil, eniIp: String? = nil, hsmId: String, state: HsmState? = nil, stateMessage: String? = nil, subnetId: String? = nil) {
            self.availabilityZone = availabilityZone
            self.clusterId = clusterId
            self.eniId = eniId
            self.eniIp = eniIp
            self.hsmId = hsmId
            self.state = state
            self.stateMessage = stateMessage
            self.subnetId = subnetId
        }

        private enum CodingKeys: String, CodingKey {
            case availabilityZone = "AvailabilityZone"
            case clusterId = "ClusterId"
            case eniId = "EniId"
            case eniIp = "EniIp"
            case hsmId = "HsmId"
            case state = "State"
            case stateMessage = "StateMessage"
            case subnetId = "SubnetId"
        }
    }

    public struct InitializeClusterRequest: AWSShape {

        /// The identifier (ID) of the cluster that you are claiming. To find the cluster ID, use DescribeClusters.
        public let clusterId: String
        /// The cluster certificate issued (signed) by your issuing certificate authority (CA). The certificate must be in PEM format and can contain a maximum of 5000 characters.
        public let signedCert: String
        /// The issuing certificate of the issuing certificate authority (CA) that issued (signed) the cluster certificate. You must use a self-signed certificate. The certificate used to sign the HSM CSR must be directly available, and thus must be the root certificate. The certificate must be in PEM format and can contain a maximum of 5000 characters.
        public let trustAnchor: String

        public init(clusterId: String, signedCert: String, trustAnchor: String) {
            self.clusterId = clusterId
            self.signedCert = signedCert
            self.trustAnchor = trustAnchor
        }

        public func validate(name: String) throws {
            try validate(self.clusterId, name:"clusterId", parent: name, pattern: "cluster-[2-7a-zA-Z]{11,16}")
            try validate(self.signedCert, name:"signedCert", parent: name, max: 5000)
            try validate(self.signedCert, name:"signedCert", parent: name, pattern: "[a-zA-Z0-9+-/=\\s]*")
            try validate(self.trustAnchor, name:"trustAnchor", parent: name, max: 5000)
            try validate(self.trustAnchor, name:"trustAnchor", parent: name, pattern: "[a-zA-Z0-9+-/=\\s]*")
        }

        private enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case signedCert = "SignedCert"
            case trustAnchor = "TrustAnchor"
        }
    }

    public struct InitializeClusterResponse: AWSShape {

        /// The cluster's state.
        public let state: ClusterState?
        /// A description of the cluster's state.
        public let stateMessage: String?

        public init(state: ClusterState? = nil, stateMessage: String? = nil) {
            self.state = state
            self.stateMessage = stateMessage
        }

        private enum CodingKeys: String, CodingKey {
            case state = "State"
            case stateMessage = "StateMessage"
        }
    }

    public struct ListTagsRequest: AWSShape {

        /// The maximum number of tags to return in the response. When there are more tags than the number you specify, the response contains a NextToken value.
        public let maxResults: Int?
        /// The NextToken value that you received in the previous response. Use this value to get more tags.
        public let nextToken: String?
        /// The cluster identifier (ID) for the cluster whose tags you are getting. To find the cluster ID, use DescribeClusters.
        public let resourceId: String

        public init(maxResults: Int? = nil, nextToken: String? = nil, resourceId: String) {
            self.maxResults = maxResults
            self.nextToken = nextToken
            self.resourceId = resourceId
        }

        public func validate(name: String) throws {
            try validate(self.maxResults, name:"maxResults", parent: name, max: 100)
            try validate(self.maxResults, name:"maxResults", parent: name, min: 1)
            try validate(self.nextToken, name:"nextToken", parent: name, max: 256)
            try validate(self.nextToken, name:"nextToken", parent: name, pattern: ".*")
            try validate(self.resourceId, name:"resourceId", parent: name, pattern: "(?:cluster|backup)-[2-7a-zA-Z]{11,16}")
        }

        private enum CodingKeys: String, CodingKey {
            case maxResults = "MaxResults"
            case nextToken = "NextToken"
            case resourceId = "ResourceId"
        }
    }

    public struct ListTagsResponse: AWSShape {

        /// An opaque string that indicates that the response contains only a subset of tags. Use this value in a subsequent ListTags request to get more tags.
        public let nextToken: String?
        /// A list of tags.
        public let tagList: [Tag]

        public init(nextToken: String? = nil, tagList: [Tag]) {
            self.nextToken = nextToken
            self.tagList = tagList
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "NextToken"
            case tagList = "TagList"
        }
    }

    public struct RestoreBackupRequest: AWSShape {

        /// The ID of the backup to be restored. To find the ID of a backup, use the DescribeBackups operation.
        public let backupId: String

        public init(backupId: String) {
            self.backupId = backupId
        }

        public func validate(name: String) throws {
            try validate(self.backupId, name:"backupId", parent: name, pattern: "backup-[2-7a-zA-Z]{11,16}")
        }

        private enum CodingKeys: String, CodingKey {
            case backupId = "BackupId"
        }
    }

    public struct RestoreBackupResponse: AWSShape {

        /// Information on the Backup object created.
        public let backup: Backup?

        public init(backup: Backup? = nil) {
            self.backup = backup
        }

        private enum CodingKeys: String, CodingKey {
            case backup = "Backup"
        }
    }

    public struct Tag: AWSShape {

        /// The key of the tag.
        public let key: String
        /// The value of the tag.
        public let value: String

        public init(key: String, value: String) {
            self.key = key
            self.value = value
        }

        public func validate(name: String) throws {
            try validate(self.key, name:"key", parent: name, max: 128)
            try validate(self.key, name:"key", parent: name, min: 1)
            try validate(self.key, name:"key", parent: name, pattern: "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")
            try validate(self.value, name:"value", parent: name, max: 256)
            try validate(self.value, name:"value", parent: name, min: 0)
            try validate(self.value, name:"value", parent: name, pattern: "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")
        }

        private enum CodingKeys: String, CodingKey {
            case key = "Key"
            case value = "Value"
        }
    }

    public struct TagResourceRequest: AWSShape {

        /// The cluster identifier (ID) for the cluster that you are tagging. To find the cluster ID, use DescribeClusters.
        public let resourceId: String
        /// A list of one or more tags.
        public let tagList: [Tag]

        public init(resourceId: String, tagList: [Tag]) {
            self.resourceId = resourceId
            self.tagList = tagList
        }

        public func validate(name: String) throws {
            try validate(self.resourceId, name:"resourceId", parent: name, pattern: "(?:cluster|backup)-[2-7a-zA-Z]{11,16}")
            try self.tagList.forEach {
                try $0.validate(name: "\(name).tagList[]")
            }
            try validate(self.tagList, name:"tagList", parent: name, max: 50)
            try validate(self.tagList, name:"tagList", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case resourceId = "ResourceId"
            case tagList = "TagList"
        }
    }

    public struct TagResourceResponse: AWSShape {


        public init() {
        }

    }

    public struct UntagResourceRequest: AWSShape {

        /// The cluster identifier (ID) for the cluster whose tags you are removing. To find the cluster ID, use DescribeClusters.
        public let resourceId: String
        /// A list of one or more tag keys for the tags that you are removing. Specify only the tag keys, not the tag values.
        public let tagKeyList: [String]

        public init(resourceId: String, tagKeyList: [String]) {
            self.resourceId = resourceId
            self.tagKeyList = tagKeyList
        }

        public func validate(name: String) throws {
            try validate(self.resourceId, name:"resourceId", parent: name, pattern: "(?:cluster|backup)-[2-7a-zA-Z]{11,16}")
            try self.tagKeyList.forEach {
                try validate($0, name: "tagKeyList[]", parent: name, max: 128)
                try validate($0, name: "tagKeyList[]", parent: name, min: 1)
                try validate($0, name: "tagKeyList[]", parent: name, pattern: "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")
            }
            try validate(self.tagKeyList, name:"tagKeyList", parent: name, max: 50)
            try validate(self.tagKeyList, name:"tagKeyList", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case resourceId = "ResourceId"
            case tagKeyList = "TagKeyList"
        }
    }

    public struct UntagResourceResponse: AWSShape {


        public init() {
        }

    }
}
