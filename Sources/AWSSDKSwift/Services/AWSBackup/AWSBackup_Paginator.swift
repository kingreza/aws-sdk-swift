// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

//MARK: Paginators

extension AWSBackup {

    ///  Returns metadata about your backup jobs.
    public func listBackupJobsPaginator(_ input: ListBackupJobsInput, onPage: @escaping (ListBackupJobsOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listBackupJobs, tokenKey: \ListBackupJobsOutput.nextToken, onPage: onPage)
    }

    ///  Returns metadata of your saved backup plan templates, including the template ID, name, and the creation and deletion dates.
    public func listBackupPlanTemplatesPaginator(_ input: ListBackupPlanTemplatesInput, onPage: @escaping (ListBackupPlanTemplatesOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listBackupPlanTemplates, tokenKey: \ListBackupPlanTemplatesOutput.nextToken, onPage: onPage)
    }

    ///  Returns version metadata of your backup plans, including Amazon Resource Names (ARNs), backup plan IDs, creation and deletion dates, plan names, and version IDs.
    public func listBackupPlanVersionsPaginator(_ input: ListBackupPlanVersionsInput, onPage: @escaping (ListBackupPlanVersionsOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listBackupPlanVersions, tokenKey: \ListBackupPlanVersionsOutput.nextToken, onPage: onPage)
    }

    ///  Returns metadata of your saved backup plans, including Amazon Resource Names (ARNs), plan IDs, creation and deletion dates, version IDs, plan names, and creator request IDs.
    public func listBackupPlansPaginator(_ input: ListBackupPlansInput, onPage: @escaping (ListBackupPlansOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listBackupPlans, tokenKey: \ListBackupPlansOutput.nextToken, onPage: onPage)
    }

    ///  Returns an array containing metadata of the resources associated with the target backup plan.
    public func listBackupSelectionsPaginator(_ input: ListBackupSelectionsInput, onPage: @escaping (ListBackupSelectionsOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listBackupSelections, tokenKey: \ListBackupSelectionsOutput.nextToken, onPage: onPage)
    }

    ///  Returns a list of recovery point storage containers along with information about them.
    public func listBackupVaultsPaginator(_ input: ListBackupVaultsInput, onPage: @escaping (ListBackupVaultsOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listBackupVaults, tokenKey: \ListBackupVaultsOutput.nextToken, onPage: onPage)
    }

    ///  Returns metadata about your copy jobs.
    public func listCopyJobsPaginator(_ input: ListCopyJobsInput, onPage: @escaping (ListCopyJobsOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listCopyJobs, tokenKey: \ListCopyJobsOutput.nextToken, onPage: onPage)
    }

    ///  Returns an array of resources successfully backed up by AWS Backup, including the time the resource was saved, an Amazon Resource Name (ARN) of the resource, and a resource type.
    public func listProtectedResourcesPaginator(_ input: ListProtectedResourcesInput, onPage: @escaping (ListProtectedResourcesOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listProtectedResources, tokenKey: \ListProtectedResourcesOutput.nextToken, onPage: onPage)
    }

    ///  Returns detailed information about the recovery points stored in a backup vault.
    public func listRecoveryPointsByBackupVaultPaginator(_ input: ListRecoveryPointsByBackupVaultInput, onPage: @escaping (ListRecoveryPointsByBackupVaultOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listRecoveryPointsByBackupVault, tokenKey: \ListRecoveryPointsByBackupVaultOutput.nextToken, onPage: onPage)
    }

    ///  Returns detailed information about recovery points of the type specified by a resource Amazon Resource Name (ARN).
    public func listRecoveryPointsByResourcePaginator(_ input: ListRecoveryPointsByResourceInput, onPage: @escaping (ListRecoveryPointsByResourceOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listRecoveryPointsByResource, tokenKey: \ListRecoveryPointsByResourceOutput.nextToken, onPage: onPage)
    }

    ///  Returns a list of jobs that AWS Backup initiated to restore a saved resource, including metadata about the recovery process.
    public func listRestoreJobsPaginator(_ input: ListRestoreJobsInput, onPage: @escaping (ListRestoreJobsOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listRestoreJobs, tokenKey: \ListRestoreJobsOutput.nextToken, onPage: onPage)
    }

    ///  Returns a list of key-value pairs assigned to a target recovery point, backup plan, or backup vault.
    public func listTagsPaginator(_ input: ListTagsInput, onPage: @escaping (ListTagsOutput, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listTags, tokenKey: \ListTagsOutput.nextToken, onPage: onPage)
    }

}

extension AWSBackup.ListBackupJobsInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> AWSBackup.ListBackupJobsInput {
        return .init(
            byBackupVaultName: self.byBackupVaultName, 
            byCreatedAfter: self.byCreatedAfter, 
            byCreatedBefore: self.byCreatedBefore, 
            byResourceArn: self.byResourceArn, 
            byResourceType: self.byResourceType, 
            byState: self.byState, 
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension AWSBackup.ListBackupPlanTemplatesInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> AWSBackup.ListBackupPlanTemplatesInput {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension AWSBackup.ListBackupPlanVersionsInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> AWSBackup.ListBackupPlanVersionsInput {
        return .init(
            backupPlanId: self.backupPlanId, 
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension AWSBackup.ListBackupPlansInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> AWSBackup.ListBackupPlansInput {
        return .init(
            includeDeleted: self.includeDeleted, 
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension AWSBackup.ListBackupSelectionsInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> AWSBackup.ListBackupSelectionsInput {
        return .init(
            backupPlanId: self.backupPlanId, 
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension AWSBackup.ListBackupVaultsInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> AWSBackup.ListBackupVaultsInput {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension AWSBackup.ListCopyJobsInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> AWSBackup.ListCopyJobsInput {
        return .init(
            byCreatedAfter: self.byCreatedAfter, 
            byCreatedBefore: self.byCreatedBefore, 
            byDestinationVaultArn: self.byDestinationVaultArn, 
            byResourceArn: self.byResourceArn, 
            byResourceType: self.byResourceType, 
            byState: self.byState, 
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension AWSBackup.ListProtectedResourcesInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> AWSBackup.ListProtectedResourcesInput {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension AWSBackup.ListRecoveryPointsByBackupVaultInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> AWSBackup.ListRecoveryPointsByBackupVaultInput {
        return .init(
            backupVaultName: self.backupVaultName, 
            byBackupPlanId: self.byBackupPlanId, 
            byCreatedAfter: self.byCreatedAfter, 
            byCreatedBefore: self.byCreatedBefore, 
            byResourceArn: self.byResourceArn, 
            byResourceType: self.byResourceType, 
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension AWSBackup.ListRecoveryPointsByResourceInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> AWSBackup.ListRecoveryPointsByResourceInput {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token, 
            resourceArn: self.resourceArn
        )

    }
}

extension AWSBackup.ListRestoreJobsInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> AWSBackup.ListRestoreJobsInput {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension AWSBackup.ListTagsInput: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> AWSBackup.ListTagsInput {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token, 
            resourceArn: self.resourceArn
        )

    }
}


