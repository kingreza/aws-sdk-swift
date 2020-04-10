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

/// Error enum for ElastiCache
public enum ElastiCacheErrorType: AWSErrorType {
    case aPICallRateForCustomerExceededFault(message: String?)
    case authorizationAlreadyExistsFault(message: String?)
    case authorizationNotFoundFault(message: String?)
    case cacheClusterAlreadyExistsFault(message: String?)
    case cacheClusterNotFoundFault(message: String?)
    case cacheParameterGroupAlreadyExistsFault(message: String?)
    case cacheParameterGroupNotFoundFault(message: String?)
    case cacheParameterGroupQuotaExceededFault(message: String?)
    case cacheSecurityGroupAlreadyExistsFault(message: String?)
    case cacheSecurityGroupNotFoundFault(message: String?)
    case cacheSecurityGroupQuotaExceededFault(message: String?)
    case cacheSubnetGroupAlreadyExistsFault(message: String?)
    case cacheSubnetGroupInUse(message: String?)
    case cacheSubnetGroupNotFoundFault(message: String?)
    case cacheSubnetGroupQuotaExceededFault(message: String?)
    case cacheSubnetQuotaExceededFault(message: String?)
    case clusterQuotaForCustomerExceededFault(message: String?)
    case globalReplicationGroupAlreadyExistsFault(message: String?)
    case globalReplicationGroupNotFoundFault(message: String?)
    case insufficientCacheClusterCapacityFault(message: String?)
    case invalidARNFault(message: String?)
    case invalidCacheClusterStateFault(message: String?)
    case invalidCacheParameterGroupStateFault(message: String?)
    case invalidCacheSecurityGroupStateFault(message: String?)
    case invalidGlobalReplicationGroupStateFault(message: String?)
    case invalidKMSKeyFault(message: String?)
    case invalidParameterCombinationException(message: String?)
    case invalidParameterValueException(message: String?)
    case invalidReplicationGroupStateFault(message: String?)
    case invalidSnapshotStateFault(message: String?)
    case invalidSubnet(message: String?)
    case invalidVPCNetworkStateFault(message: String?)
    case noOperationFault(message: String?)
    case nodeGroupNotFoundFault(message: String?)
    case nodeGroupsPerReplicationGroupQuotaExceededFault(message: String?)
    case nodeQuotaForClusterExceededFault(message: String?)
    case nodeQuotaForCustomerExceededFault(message: String?)
    case replicationGroupAlreadyExistsFault(message: String?)
    case replicationGroupAlreadyUnderMigrationFault(message: String?)
    case replicationGroupNotFoundFault(message: String?)
    case replicationGroupNotUnderMigrationFault(message: String?)
    case reservedCacheNodeAlreadyExistsFault(message: String?)
    case reservedCacheNodeNotFoundFault(message: String?)
    case reservedCacheNodeQuotaExceededFault(message: String?)
    case reservedCacheNodesOfferingNotFoundFault(message: String?)
    case serviceLinkedRoleNotFoundFault(message: String?)
    case serviceUpdateNotFoundFault(message: String?)
    case snapshotAlreadyExistsFault(message: String?)
    case snapshotFeatureNotSupportedFault(message: String?)
    case snapshotNotFoundFault(message: String?)
    case snapshotQuotaExceededFault(message: String?)
    case subnetInUse(message: String?)
    case tagNotFoundFault(message: String?)
    case tagQuotaPerResourceExceeded(message: String?)
    case testFailoverNotAvailableFault(message: String?)
}

extension ElastiCacheErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "APICallRateForCustomerExceeded":
            self = .aPICallRateForCustomerExceededFault(message: message)
        case "AuthorizationAlreadyExists":
            self = .authorizationAlreadyExistsFault(message: message)
        case "AuthorizationNotFound":
            self = .authorizationNotFoundFault(message: message)
        case "CacheClusterAlreadyExists":
            self = .cacheClusterAlreadyExistsFault(message: message)
        case "CacheClusterNotFound":
            self = .cacheClusterNotFoundFault(message: message)
        case "CacheParameterGroupAlreadyExists":
            self = .cacheParameterGroupAlreadyExistsFault(message: message)
        case "CacheParameterGroupNotFound":
            self = .cacheParameterGroupNotFoundFault(message: message)
        case "CacheParameterGroupQuotaExceeded":
            self = .cacheParameterGroupQuotaExceededFault(message: message)
        case "CacheSecurityGroupAlreadyExists":
            self = .cacheSecurityGroupAlreadyExistsFault(message: message)
        case "CacheSecurityGroupNotFound":
            self = .cacheSecurityGroupNotFoundFault(message: message)
        case "QuotaExceeded.CacheSecurityGroup":
            self = .cacheSecurityGroupQuotaExceededFault(message: message)
        case "CacheSubnetGroupAlreadyExists":
            self = .cacheSubnetGroupAlreadyExistsFault(message: message)
        case "CacheSubnetGroupInUse":
            self = .cacheSubnetGroupInUse(message: message)
        case "CacheSubnetGroupNotFoundFault":
            self = .cacheSubnetGroupNotFoundFault(message: message)
        case "CacheSubnetGroupQuotaExceeded":
            self = .cacheSubnetGroupQuotaExceededFault(message: message)
        case "CacheSubnetQuotaExceededFault":
            self = .cacheSubnetQuotaExceededFault(message: message)
        case "ClusterQuotaForCustomerExceeded":
            self = .clusterQuotaForCustomerExceededFault(message: message)
        case "GlobalReplicationGroupAlreadyExistsFault":
            self = .globalReplicationGroupAlreadyExistsFault(message: message)
        case "GlobalReplicationGroupNotFoundFault":
            self = .globalReplicationGroupNotFoundFault(message: message)
        case "InsufficientCacheClusterCapacity":
            self = .insufficientCacheClusterCapacityFault(message: message)
        case "InvalidARN":
            self = .invalidARNFault(message: message)
        case "InvalidCacheClusterState":
            self = .invalidCacheClusterStateFault(message: message)
        case "InvalidCacheParameterGroupState":
            self = .invalidCacheParameterGroupStateFault(message: message)
        case "InvalidCacheSecurityGroupState":
            self = .invalidCacheSecurityGroupStateFault(message: message)
        case "InvalidGlobalReplicationGroupState":
            self = .invalidGlobalReplicationGroupStateFault(message: message)
        case "InvalidKMSKeyFault":
            self = .invalidKMSKeyFault(message: message)
        case "InvalidParameterCombination":
            self = .invalidParameterCombinationException(message: message)
        case "InvalidParameterValue":
            self = .invalidParameterValueException(message: message)
        case "InvalidReplicationGroupState":
            self = .invalidReplicationGroupStateFault(message: message)
        case "InvalidSnapshotState":
            self = .invalidSnapshotStateFault(message: message)
        case "InvalidSubnet":
            self = .invalidSubnet(message: message)
        case "InvalidVPCNetworkStateFault":
            self = .invalidVPCNetworkStateFault(message: message)
        case "NoOperationFault":
            self = .noOperationFault(message: message)
        case "NodeGroupNotFoundFault":
            self = .nodeGroupNotFoundFault(message: message)
        case "NodeGroupsPerReplicationGroupQuotaExceeded":
            self = .nodeGroupsPerReplicationGroupQuotaExceededFault(message: message)
        case "NodeQuotaForClusterExceeded":
            self = .nodeQuotaForClusterExceededFault(message: message)
        case "NodeQuotaForCustomerExceeded":
            self = .nodeQuotaForCustomerExceededFault(message: message)
        case "ReplicationGroupAlreadyExists":
            self = .replicationGroupAlreadyExistsFault(message: message)
        case "ReplicationGroupAlreadyUnderMigrationFault":
            self = .replicationGroupAlreadyUnderMigrationFault(message: message)
        case "ReplicationGroupNotFoundFault":
            self = .replicationGroupNotFoundFault(message: message)
        case "ReplicationGroupNotUnderMigrationFault":
            self = .replicationGroupNotUnderMigrationFault(message: message)
        case "ReservedCacheNodeAlreadyExists":
            self = .reservedCacheNodeAlreadyExistsFault(message: message)
        case "ReservedCacheNodeNotFound":
            self = .reservedCacheNodeNotFoundFault(message: message)
        case "ReservedCacheNodeQuotaExceeded":
            self = .reservedCacheNodeQuotaExceededFault(message: message)
        case "ReservedCacheNodesOfferingNotFound":
            self = .reservedCacheNodesOfferingNotFoundFault(message: message)
        case "ServiceLinkedRoleNotFoundFault":
            self = .serviceLinkedRoleNotFoundFault(message: message)
        case "ServiceUpdateNotFoundFault":
            self = .serviceUpdateNotFoundFault(message: message)
        case "SnapshotAlreadyExistsFault":
            self = .snapshotAlreadyExistsFault(message: message)
        case "SnapshotFeatureNotSupportedFault":
            self = .snapshotFeatureNotSupportedFault(message: message)
        case "SnapshotNotFoundFault":
            self = .snapshotNotFoundFault(message: message)
        case "SnapshotQuotaExceededFault":
            self = .snapshotQuotaExceededFault(message: message)
        case "SubnetInUse":
            self = .subnetInUse(message: message)
        case "TagNotFound":
            self = .tagNotFoundFault(message: message)
        case "TagQuotaPerResourceExceeded":
            self = .tagQuotaPerResourceExceeded(message: message)
        case "TestFailoverNotAvailableFault":
            self = .testFailoverNotAvailableFault(message: message)
        default:
            return nil
        }
    }
}

extension ElastiCacheErrorType : CustomStringConvertible {
    public var description : String {
        switch self {
        case .aPICallRateForCustomerExceededFault(let message):
            return "APICallRateForCustomerExceeded: \(message ?? "")"
        case .authorizationAlreadyExistsFault(let message):
            return "AuthorizationAlreadyExists: \(message ?? "")"
        case .authorizationNotFoundFault(let message):
            return "AuthorizationNotFound: \(message ?? "")"
        case .cacheClusterAlreadyExistsFault(let message):
            return "CacheClusterAlreadyExists: \(message ?? "")"
        case .cacheClusterNotFoundFault(let message):
            return "CacheClusterNotFound: \(message ?? "")"
        case .cacheParameterGroupAlreadyExistsFault(let message):
            return "CacheParameterGroupAlreadyExists: \(message ?? "")"
        case .cacheParameterGroupNotFoundFault(let message):
            return "CacheParameterGroupNotFound: \(message ?? "")"
        case .cacheParameterGroupQuotaExceededFault(let message):
            return "CacheParameterGroupQuotaExceeded: \(message ?? "")"
        case .cacheSecurityGroupAlreadyExistsFault(let message):
            return "CacheSecurityGroupAlreadyExists: \(message ?? "")"
        case .cacheSecurityGroupNotFoundFault(let message):
            return "CacheSecurityGroupNotFound: \(message ?? "")"
        case .cacheSecurityGroupQuotaExceededFault(let message):
            return "QuotaExceeded.CacheSecurityGroup: \(message ?? "")"
        case .cacheSubnetGroupAlreadyExistsFault(let message):
            return "CacheSubnetGroupAlreadyExists: \(message ?? "")"
        case .cacheSubnetGroupInUse(let message):
            return "CacheSubnetGroupInUse: \(message ?? "")"
        case .cacheSubnetGroupNotFoundFault(let message):
            return "CacheSubnetGroupNotFoundFault: \(message ?? "")"
        case .cacheSubnetGroupQuotaExceededFault(let message):
            return "CacheSubnetGroupQuotaExceeded: \(message ?? "")"
        case .cacheSubnetQuotaExceededFault(let message):
            return "CacheSubnetQuotaExceededFault: \(message ?? "")"
        case .clusterQuotaForCustomerExceededFault(let message):
            return "ClusterQuotaForCustomerExceeded: \(message ?? "")"
        case .globalReplicationGroupAlreadyExistsFault(let message):
            return "GlobalReplicationGroupAlreadyExistsFault: \(message ?? "")"
        case .globalReplicationGroupNotFoundFault(let message):
            return "GlobalReplicationGroupNotFoundFault: \(message ?? "")"
        case .insufficientCacheClusterCapacityFault(let message):
            return "InsufficientCacheClusterCapacity: \(message ?? "")"
        case .invalidARNFault(let message):
            return "InvalidARN: \(message ?? "")"
        case .invalidCacheClusterStateFault(let message):
            return "InvalidCacheClusterState: \(message ?? "")"
        case .invalidCacheParameterGroupStateFault(let message):
            return "InvalidCacheParameterGroupState: \(message ?? "")"
        case .invalidCacheSecurityGroupStateFault(let message):
            return "InvalidCacheSecurityGroupState: \(message ?? "")"
        case .invalidGlobalReplicationGroupStateFault(let message):
            return "InvalidGlobalReplicationGroupState: \(message ?? "")"
        case .invalidKMSKeyFault(let message):
            return "InvalidKMSKeyFault: \(message ?? "")"
        case .invalidParameterCombinationException(let message):
            return "InvalidParameterCombination: \(message ?? "")"
        case .invalidParameterValueException(let message):
            return "InvalidParameterValue: \(message ?? "")"
        case .invalidReplicationGroupStateFault(let message):
            return "InvalidReplicationGroupState: \(message ?? "")"
        case .invalidSnapshotStateFault(let message):
            return "InvalidSnapshotState: \(message ?? "")"
        case .invalidSubnet(let message):
            return "InvalidSubnet: \(message ?? "")"
        case .invalidVPCNetworkStateFault(let message):
            return "InvalidVPCNetworkStateFault: \(message ?? "")"
        case .noOperationFault(let message):
            return "NoOperationFault: \(message ?? "")"
        case .nodeGroupNotFoundFault(let message):
            return "NodeGroupNotFoundFault: \(message ?? "")"
        case .nodeGroupsPerReplicationGroupQuotaExceededFault(let message):
            return "NodeGroupsPerReplicationGroupQuotaExceeded: \(message ?? "")"
        case .nodeQuotaForClusterExceededFault(let message):
            return "NodeQuotaForClusterExceeded: \(message ?? "")"
        case .nodeQuotaForCustomerExceededFault(let message):
            return "NodeQuotaForCustomerExceeded: \(message ?? "")"
        case .replicationGroupAlreadyExistsFault(let message):
            return "ReplicationGroupAlreadyExists: \(message ?? "")"
        case .replicationGroupAlreadyUnderMigrationFault(let message):
            return "ReplicationGroupAlreadyUnderMigrationFault: \(message ?? "")"
        case .replicationGroupNotFoundFault(let message):
            return "ReplicationGroupNotFoundFault: \(message ?? "")"
        case .replicationGroupNotUnderMigrationFault(let message):
            return "ReplicationGroupNotUnderMigrationFault: \(message ?? "")"
        case .reservedCacheNodeAlreadyExistsFault(let message):
            return "ReservedCacheNodeAlreadyExists: \(message ?? "")"
        case .reservedCacheNodeNotFoundFault(let message):
            return "ReservedCacheNodeNotFound: \(message ?? "")"
        case .reservedCacheNodeQuotaExceededFault(let message):
            return "ReservedCacheNodeQuotaExceeded: \(message ?? "")"
        case .reservedCacheNodesOfferingNotFoundFault(let message):
            return "ReservedCacheNodesOfferingNotFound: \(message ?? "")"
        case .serviceLinkedRoleNotFoundFault(let message):
            return "ServiceLinkedRoleNotFoundFault: \(message ?? "")"
        case .serviceUpdateNotFoundFault(let message):
            return "ServiceUpdateNotFoundFault: \(message ?? "")"
        case .snapshotAlreadyExistsFault(let message):
            return "SnapshotAlreadyExistsFault: \(message ?? "")"
        case .snapshotFeatureNotSupportedFault(let message):
            return "SnapshotFeatureNotSupportedFault: \(message ?? "")"
        case .snapshotNotFoundFault(let message):
            return "SnapshotNotFoundFault: \(message ?? "")"
        case .snapshotQuotaExceededFault(let message):
            return "SnapshotQuotaExceededFault: \(message ?? "")"
        case .subnetInUse(let message):
            return "SubnetInUse: \(message ?? "")"
        case .tagNotFoundFault(let message):
            return "TagNotFound: \(message ?? "")"
        case .tagQuotaPerResourceExceeded(let message):
            return "TagQuotaPerResourceExceeded: \(message ?? "")"
        case .testFailoverNotAvailableFault(let message):
            return "TestFailoverNotAvailableFault: \(message ?? "")"
        }
    }
}
