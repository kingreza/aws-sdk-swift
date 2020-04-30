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

extension CloudDirectory {

    ///  Lists schema major versions applied to a directory. If SchemaArn is provided, lists the minor version.
    public func listAppliedSchemaArnsPaginator(
        _ input: ListAppliedSchemaArnsRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListAppliedSchemaArnsResponse,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listAppliedSchemaArns, tokenKey: \ListAppliedSchemaArnsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Lists indices attached to the specified object.
    public func listAttachedIndicesPaginator(
        _ input: ListAttachedIndicesRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListAttachedIndicesResponse,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listAttachedIndices, tokenKey: \ListAttachedIndicesResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Retrieves each Amazon Resource Name (ARN) of schemas in the development state.
    public func listDevelopmentSchemaArnsPaginator(
        _ input: ListDevelopmentSchemaArnsRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListDevelopmentSchemaArnsResponse,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listDevelopmentSchemaArns, tokenKey: \ListDevelopmentSchemaArnsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Lists directories created within an account.
    public func listDirectoriesPaginator(
        _ input: ListDirectoriesRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListDirectoriesResponse,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listDirectories, tokenKey: \ListDirectoriesResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Retrieves attributes attached to the facet.
    public func listFacetAttributesPaginator(
        _ input: ListFacetAttributesRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListFacetAttributesResponse,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listFacetAttributes, tokenKey: \ListFacetAttributesResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Retrieves the names of facets that exist in a schema.
    public func listFacetNamesPaginator(
        _ input: ListFacetNamesRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListFacetNamesResponse,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listFacetNames, tokenKey: \ListFacetNamesResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Lists objects attached to the specified index.
    public func listIndexPaginator(
        _ input: ListIndexRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListIndexResponse,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listIndex, tokenKey: \ListIndexResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Lists the major version families of each managed schema. If a major version ARN is provided as SchemaArn, the minor version revisions in that family are listed instead.
    public func listManagedSchemaArnsPaginator(
        _ input: ListManagedSchemaArnsRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListManagedSchemaArnsResponse,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listManagedSchemaArns, tokenKey: \ListManagedSchemaArnsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Lists all attributes that are associated with an object. 
    public func listObjectAttributesPaginator(
        _ input: ListObjectAttributesRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListObjectAttributesResponse,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listObjectAttributes, tokenKey: \ListObjectAttributesResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Returns a paginated list of child objects that are associated with a given object.
    public func listObjectChildrenPaginator(
        _ input: ListObjectChildrenRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListObjectChildrenResponse,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listObjectChildren, tokenKey: \ListObjectChildrenResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Retrieves all available parent paths for any object type such as node, leaf node, policy node, and index node objects. For more information about objects, see Directory Structure. Use this API to evaluate all parents for an object. The call returns all objects from the root of the directory up to the requested object. The API returns the number of paths based on user-defined MaxResults, in case there are multiple paths to the parent. The order of the paths and nodes returned is consistent among multiple API calls unless the objects are deleted or moved. Paths not leading to the directory root are ignored from the target object.
    public func listObjectParentPathsPaginator(
        _ input: ListObjectParentPathsRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListObjectParentPathsResponse,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listObjectParentPaths, tokenKey: \ListObjectParentPathsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Lists parent objects that are associated with a given object in pagination fashion.
    public func listObjectParentsPaginator(
        _ input: ListObjectParentsRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListObjectParentsResponse,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listObjectParents, tokenKey: \ListObjectParentsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Returns policies attached to an object in pagination fashion.
    public func listObjectPoliciesPaginator(
        _ input: ListObjectPoliciesRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListObjectPoliciesResponse,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listObjectPolicies, tokenKey: \ListObjectPoliciesResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Returns all of the ObjectIdentifiers to which a given policy is attached.
    public func listPolicyAttachmentsPaginator(
        _ input: ListPolicyAttachmentsRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListPolicyAttachmentsResponse,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listPolicyAttachments, tokenKey: \ListPolicyAttachmentsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Lists the major version families of each published schema. If a major version ARN is provided as SchemaArn, the minor version revisions in that family are listed instead.
    public func listPublishedSchemaArnsPaginator(
        _ input: ListPublishedSchemaArnsRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListPublishedSchemaArnsResponse,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listPublishedSchemaArns, tokenKey: \ListPublishedSchemaArnsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Returns tags for a resource. Tagging is currently supported only for directories with a limit of 50 tags per directory. All 50 tags are returned for a given directory with this API call.
    public func listTagsForResourcePaginator(
        _ input: ListTagsForResourceRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListTagsForResourceResponse,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listTagsForResource, tokenKey: \ListTagsForResourceResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Returns a paginated list of all attribute definitions for a particular TypedLinkFacet. For more information, see Typed Links.
    public func listTypedLinkFacetAttributesPaginator(
        _ input: ListTypedLinkFacetAttributesRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListTypedLinkFacetAttributesResponse,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listTypedLinkFacetAttributes, tokenKey: \ListTypedLinkFacetAttributesResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Returns a paginated list of TypedLink facet names for a particular schema. For more information, see Typed Links.
    public func listTypedLinkFacetNamesPaginator(
        _ input: ListTypedLinkFacetNamesRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListTypedLinkFacetNamesResponse,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listTypedLinkFacetNames, tokenKey: \ListTypedLinkFacetNamesResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Lists all policies from the root of the Directory to the object specified. If there are no policies present, an empty list is returned. If policies are present, and if some objects don't have the policies attached, it returns the ObjectIdentifier for such objects. If policies are present, it returns ObjectIdentifier, policyId, and policyType. Paths that don't lead to the root from the target object are ignored. For more information, see Policies.
    public func lookupPolicyPaginator(
        _ input: LookupPolicyRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (LookupPolicyResponse,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: lookupPolicy, tokenKey: \LookupPolicyResponse.nextToken, on: eventLoop, onPage: onPage)
    }

}

extension CloudDirectory.ListAppliedSchemaArnsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudDirectory.ListAppliedSchemaArnsRequest {
        return .init(
            directoryArn: self.directoryArn,
            maxResults: self.maxResults,
            nextToken: token,
            schemaArn: self.schemaArn
        )

    }
}

extension CloudDirectory.ListAttachedIndicesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudDirectory.ListAttachedIndicesRequest {
        return .init(
            consistencyLevel: self.consistencyLevel,
            directoryArn: self.directoryArn,
            maxResults: self.maxResults,
            nextToken: token,
            targetReference: self.targetReference
        )

    }
}

extension CloudDirectory.ListDevelopmentSchemaArnsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudDirectory.ListDevelopmentSchemaArnsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension CloudDirectory.ListDirectoriesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudDirectory.ListDirectoriesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            state: self.state
        )

    }
}

extension CloudDirectory.ListFacetAttributesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudDirectory.ListFacetAttributesRequest {
        return .init(
            maxResults: self.maxResults,
            name: self.name,
            nextToken: token,
            schemaArn: self.schemaArn
        )

    }
}

extension CloudDirectory.ListFacetNamesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudDirectory.ListFacetNamesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            schemaArn: self.schemaArn
        )

    }
}

extension CloudDirectory.ListIndexRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudDirectory.ListIndexRequest {
        return .init(
            consistencyLevel: self.consistencyLevel,
            directoryArn: self.directoryArn,
            indexReference: self.indexReference,
            maxResults: self.maxResults,
            nextToken: token,
            rangesOnIndexedValues: self.rangesOnIndexedValues
        )

    }
}

extension CloudDirectory.ListManagedSchemaArnsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudDirectory.ListManagedSchemaArnsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            schemaArn: self.schemaArn
        )

    }
}

extension CloudDirectory.ListObjectAttributesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudDirectory.ListObjectAttributesRequest {
        return .init(
            consistencyLevel: self.consistencyLevel,
            directoryArn: self.directoryArn,
            facetFilter: self.facetFilter,
            maxResults: self.maxResults,
            nextToken: token,
            objectReference: self.objectReference
        )

    }
}

extension CloudDirectory.ListObjectChildrenRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudDirectory.ListObjectChildrenRequest {
        return .init(
            consistencyLevel: self.consistencyLevel,
            directoryArn: self.directoryArn,
            maxResults: self.maxResults,
            nextToken: token,
            objectReference: self.objectReference
        )

    }
}

extension CloudDirectory.ListObjectParentPathsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudDirectory.ListObjectParentPathsRequest {
        return .init(
            directoryArn: self.directoryArn,
            maxResults: self.maxResults,
            nextToken: token,
            objectReference: self.objectReference
        )

    }
}

extension CloudDirectory.ListObjectParentsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudDirectory.ListObjectParentsRequest {
        return .init(
            consistencyLevel: self.consistencyLevel,
            directoryArn: self.directoryArn,
            includeAllLinksToEachParent: self.includeAllLinksToEachParent,
            maxResults: self.maxResults,
            nextToken: token,
            objectReference: self.objectReference
        )

    }
}

extension CloudDirectory.ListObjectPoliciesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudDirectory.ListObjectPoliciesRequest {
        return .init(
            consistencyLevel: self.consistencyLevel,
            directoryArn: self.directoryArn,
            maxResults: self.maxResults,
            nextToken: token,
            objectReference: self.objectReference
        )

    }
}

extension CloudDirectory.ListPolicyAttachmentsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudDirectory.ListPolicyAttachmentsRequest {
        return .init(
            consistencyLevel: self.consistencyLevel,
            directoryArn: self.directoryArn,
            maxResults: self.maxResults,
            nextToken: token,
            policyReference: self.policyReference
        )

    }
}

extension CloudDirectory.ListPublishedSchemaArnsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudDirectory.ListPublishedSchemaArnsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            schemaArn: self.schemaArn
        )

    }
}

extension CloudDirectory.ListTagsForResourceRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudDirectory.ListTagsForResourceRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            resourceArn: self.resourceArn
        )

    }
}

extension CloudDirectory.ListTypedLinkFacetAttributesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudDirectory.ListTypedLinkFacetAttributesRequest {
        return .init(
            maxResults: self.maxResults,
            name: self.name,
            nextToken: token,
            schemaArn: self.schemaArn
        )

    }
}

extension CloudDirectory.ListTypedLinkFacetNamesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudDirectory.ListTypedLinkFacetNamesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            schemaArn: self.schemaArn
        )

    }
}

extension CloudDirectory.LookupPolicyRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudDirectory.LookupPolicyRequest {
        return .init(
            directoryArn: self.directoryArn,
            maxResults: self.maxResults,
            nextToken: token,
            objectReference: self.objectReference
        )

    }
}


