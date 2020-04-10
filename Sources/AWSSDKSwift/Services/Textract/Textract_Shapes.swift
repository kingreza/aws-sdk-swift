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

extension Textract {
    //MARK: Enums

    public enum BlockType: String, CustomStringConvertible, Codable {
        case keyValueSet = "KEY_VALUE_SET"
        case page = "PAGE"
        case line = "LINE"
        case word = "WORD"
        case table = "TABLE"
        case cell = "CELL"
        case selectionElement = "SELECTION_ELEMENT"
        public var description: String { return self.rawValue }
    }

    public enum ContentClassifier: String, CustomStringConvertible, Codable {
        case freeofpersonallyidentifiableinformation = "FreeOfPersonallyIdentifiableInformation"
        case freeofadultcontent = "FreeOfAdultContent"
        public var description: String { return self.rawValue }
    }

    public enum EntityType: String, CustomStringConvertible, Codable {
        case key = "KEY"
        case value = "VALUE"
        public var description: String { return self.rawValue }
    }

    public enum FeatureType: String, CustomStringConvertible, Codable {
        case tables = "TABLES"
        case forms = "FORMS"
        public var description: String { return self.rawValue }
    }

    public enum JobStatus: String, CustomStringConvertible, Codable {
        case inProgress = "IN_PROGRESS"
        case succeeded = "SUCCEEDED"
        case failed = "FAILED"
        case partialSuccess = "PARTIAL_SUCCESS"
        public var description: String { return self.rawValue }
    }

    public enum RelationshipType: String, CustomStringConvertible, Codable {
        case value = "VALUE"
        case child = "CHILD"
        public var description: String { return self.rawValue }
    }

    public enum SelectionStatus: String, CustomStringConvertible, Codable {
        case selected = "SELECTED"
        case notSelected = "NOT_SELECTED"
        public var description: String { return self.rawValue }
    }

    //MARK: Shapes

    public struct AnalyzeDocumentRequest: AWSShape {

        /// The input document as base64-encoded bytes or an Amazon S3 object. If you use the AWS CLI to call Amazon Textract operations, you can't pass image bytes. The document must be an image in JPEG or PNG format. If you're using an AWS SDK to call Amazon Textract, you might not need to base64-encode image bytes that are passed using the Bytes field. 
        public let document: Document
        /// A list of the types of analysis to perform. Add TABLES to the list to return information about the tables that are detected in the input document. Add FORMS to return detected form data. To perform both types of analysis, add TABLES and FORMS to FeatureTypes. All lines and words detected in the document are included in the response (including text that isn't related to the value of FeatureTypes). 
        public let featureTypes: [FeatureType]
        /// Sets the configuration for the human in the loop workflow for analyzing documents.
        public let humanLoopConfig: HumanLoopConfig?

        public init(document: Document, featureTypes: [FeatureType], humanLoopConfig: HumanLoopConfig? = nil) {
            self.document = document
            self.featureTypes = featureTypes
            self.humanLoopConfig = humanLoopConfig
        }

        public func validate(name: String) throws {
            try self.document.validate(name: "\(name).document")
            try self.humanLoopConfig?.validate(name: "\(name).humanLoopConfig")
        }

        private enum CodingKeys: String, CodingKey {
            case document = "Document"
            case featureTypes = "FeatureTypes"
            case humanLoopConfig = "HumanLoopConfig"
        }
    }

    public struct AnalyzeDocumentResponse: AWSShape {

        /// The version of the model used to analyze the document.
        public let analyzeDocumentModelVersion: String?
        /// The items that are detected and analyzed by AnalyzeDocument.
        public let blocks: [Block]?
        /// Metadata about the analyzed document. An example is the number of pages.
        public let documentMetadata: DocumentMetadata?
        /// Shows the results of the human in the loop evaluation.
        public let humanLoopActivationOutput: HumanLoopActivationOutput?

        public init(analyzeDocumentModelVersion: String? = nil, blocks: [Block]? = nil, documentMetadata: DocumentMetadata? = nil, humanLoopActivationOutput: HumanLoopActivationOutput? = nil) {
            self.analyzeDocumentModelVersion = analyzeDocumentModelVersion
            self.blocks = blocks
            self.documentMetadata = documentMetadata
            self.humanLoopActivationOutput = humanLoopActivationOutput
        }

        private enum CodingKeys: String, CodingKey {
            case analyzeDocumentModelVersion = "AnalyzeDocumentModelVersion"
            case blocks = "Blocks"
            case documentMetadata = "DocumentMetadata"
            case humanLoopActivationOutput = "HumanLoopActivationOutput"
        }
    }

    public struct Block: AWSShape {

        /// The type of text item that's recognized. In operations for text detection, the following types are returned:    PAGE - Contains a list of the LINE Block objects that are detected on a document page.    WORD - A word detected on a document page. A word is one or more ISO basic Latin script characters that aren't separated by spaces.    LINE - A string of tab-delimited, contiguous words that are detected on a document page.   In text analysis operations, the following types are returned:    PAGE - Contains a list of child Block objects that are detected on a document page.    KEY_VALUE_SET - Stores the KEY and VALUE Block objects for linked text that's detected on a document page. Use the EntityType field to determine if a KEY_VALUE_SET object is a KEY Block object or a VALUE Block object.     WORD - A word that's detected on a document page. A word is one or more ISO basic Latin script characters that aren't separated by spaces.    LINE - A string of tab-delimited, contiguous words that are detected on a document page.    TABLE - A table that's detected on a document page. A table is grid-based information with two or more rows or columns, with a cell span of one row and one column each.     CELL - A cell within a detected table. The cell is the parent of the block that contains the text in the cell.    SELECTION_ELEMENT - A selection element such as an option button (radio button) or a check box that's detected on a document page. Use the value of SelectionStatus to determine the status of the selection element.  
        public let blockType: BlockType?
        /// The column in which a table cell appears. The first column position is 1. ColumnIndex isn't returned by DetectDocumentText and GetDocumentTextDetection.
        public let columnIndex: Int?
        /// The number of columns that a table cell spans. Currently this value is always 1, even if the number of columns spanned is greater than 1. ColumnSpan isn't returned by DetectDocumentText and GetDocumentTextDetection. 
        public let columnSpan: Int?
        /// The confidence score that Amazon Textract has in the accuracy of the recognized text and the accuracy of the geometry points around the recognized text.
        public let confidence: Float?
        /// The type of entity. The following can be returned:    KEY - An identifier for a field on the document.    VALUE - The field text.    EntityTypes isn't returned by DetectDocumentText and GetDocumentTextDetection.
        public let entityTypes: [EntityType]?
        /// The location of the recognized text on the image. It includes an axis-aligned, coarse bounding box that surrounds the text, and a finer-grain polygon for more accurate spatial information. 
        public let geometry: Geometry?
        /// The identifier for the recognized text. The identifier is only unique for a single operation. 
        public let id: String?
        /// The page on which a block was detected. Page is returned by asynchronous operations. Page values greater than 1 are only returned for multipage documents that are in PDF format. A scanned image (JPEG/PNG), even if it contains multiple document pages, is considered to be a single-page document. The value of Page is always 1. Synchronous operations don't return Page because every input document is considered to be a single-page document.
        public let page: Int?
        /// A list of child blocks of the current block. For example, a LINE object has child blocks for each WORD block that's part of the line of text. There aren't Relationship objects in the list for relationships that don't exist, such as when the current block has no child blocks. The list size can be the following:   0 - The block has no child blocks.   1 - The block has child blocks.  
        public let relationships: [Relationship]?
        /// The row in which a table cell is located. The first row position is 1. RowIndex isn't returned by DetectDocumentText and GetDocumentTextDetection.
        public let rowIndex: Int?
        /// The number of rows that a table cell spans. Currently this value is always 1, even if the number of rows spanned is greater than 1. RowSpan isn't returned by DetectDocumentText and GetDocumentTextDetection.
        public let rowSpan: Int?
        /// The selection status of a selection element, such as an option button or check box. 
        public let selectionStatus: SelectionStatus?
        /// The word or line of text that's recognized by Amazon Textract. 
        public let text: String?

        public init(blockType: BlockType? = nil, columnIndex: Int? = nil, columnSpan: Int? = nil, confidence: Float? = nil, entityTypes: [EntityType]? = nil, geometry: Geometry? = nil, id: String? = nil, page: Int? = nil, relationships: [Relationship]? = nil, rowIndex: Int? = nil, rowSpan: Int? = nil, selectionStatus: SelectionStatus? = nil, text: String? = nil) {
            self.blockType = blockType
            self.columnIndex = columnIndex
            self.columnSpan = columnSpan
            self.confidence = confidence
            self.entityTypes = entityTypes
            self.geometry = geometry
            self.id = id
            self.page = page
            self.relationships = relationships
            self.rowIndex = rowIndex
            self.rowSpan = rowSpan
            self.selectionStatus = selectionStatus
            self.text = text
        }

        private enum CodingKeys: String, CodingKey {
            case blockType = "BlockType"
            case columnIndex = "ColumnIndex"
            case columnSpan = "ColumnSpan"
            case confidence = "Confidence"
            case entityTypes = "EntityTypes"
            case geometry = "Geometry"
            case id = "Id"
            case page = "Page"
            case relationships = "Relationships"
            case rowIndex = "RowIndex"
            case rowSpan = "RowSpan"
            case selectionStatus = "SelectionStatus"
            case text = "Text"
        }
    }

    public struct BoundingBox: AWSShape {

        /// The height of the bounding box as a ratio of the overall document page height.
        public let height: Float?
        /// The left coordinate of the bounding box as a ratio of overall document page width.
        public let left: Float?
        /// The top coordinate of the bounding box as a ratio of overall document page height.
        public let top: Float?
        /// The width of the bounding box as a ratio of the overall document page width.
        public let width: Float?

        public init(height: Float? = nil, left: Float? = nil, top: Float? = nil, width: Float? = nil) {
            self.height = height
            self.left = left
            self.top = top
            self.width = width
        }

        private enum CodingKeys: String, CodingKey {
            case height = "Height"
            case left = "Left"
            case top = "Top"
            case width = "Width"
        }
    }

    public struct DetectDocumentTextRequest: AWSShape {

        /// The input document as base64-encoded bytes or an Amazon S3 object. If you use the AWS CLI to call Amazon Textract operations, you can't pass image bytes. The document must be an image in JPEG or PNG format. If you're using an AWS SDK to call Amazon Textract, you might not need to base64-encode image bytes that are passed using the Bytes field. 
        public let document: Document

        public init(document: Document) {
            self.document = document
        }

        public func validate(name: String) throws {
            try self.document.validate(name: "\(name).document")
        }

        private enum CodingKeys: String, CodingKey {
            case document = "Document"
        }
    }

    public struct DetectDocumentTextResponse: AWSShape {

        /// An array of Block objects that contain the text that's detected in the document.
        public let blocks: [Block]?
        public let detectDocumentTextModelVersion: String?
        /// Metadata about the document. It contains the number of pages that are detected in the document.
        public let documentMetadata: DocumentMetadata?

        public init(blocks: [Block]? = nil, detectDocumentTextModelVersion: String? = nil, documentMetadata: DocumentMetadata? = nil) {
            self.blocks = blocks
            self.detectDocumentTextModelVersion = detectDocumentTextModelVersion
            self.documentMetadata = documentMetadata
        }

        private enum CodingKeys: String, CodingKey {
            case blocks = "Blocks"
            case detectDocumentTextModelVersion = "DetectDocumentTextModelVersion"
            case documentMetadata = "DocumentMetadata"
        }
    }

    public struct Document: AWSShape {

        /// A blob of base64-encoded document bytes. The maximum size of a document that's provided in a blob of bytes is 5 MB. The document bytes must be in PNG or JPEG format. If you're using an AWS SDK to call Amazon Textract, you might not need to base64-encode image bytes passed using the Bytes field. 
        public let bytes: Data?
        /// Identifies an S3 object as the document source. The maximum size of a document that's stored in an S3 bucket is 5 MB.
        public let s3Object: S3Object?

        public init(bytes: Data? = nil, s3Object: S3Object? = nil) {
            self.bytes = bytes
            self.s3Object = s3Object
        }

        public func validate(name: String) throws {
            try validate(self.bytes, name:"bytes", parent: name, max: 10485760)
            try validate(self.bytes, name:"bytes", parent: name, min: 1)
            try self.s3Object?.validate(name: "\(name).s3Object")
        }

        private enum CodingKeys: String, CodingKey {
            case bytes = "Bytes"
            case s3Object = "S3Object"
        }
    }

    public struct DocumentLocation: AWSShape {

        /// The Amazon S3 bucket that contains the input document.
        public let s3Object: S3Object?

        public init(s3Object: S3Object? = nil) {
            self.s3Object = s3Object
        }

        public func validate(name: String) throws {
            try self.s3Object?.validate(name: "\(name).s3Object")
        }

        private enum CodingKeys: String, CodingKey {
            case s3Object = "S3Object"
        }
    }

    public struct DocumentMetadata: AWSShape {

        /// The number of pages that are detected in the document.
        public let pages: Int?

        public init(pages: Int? = nil) {
            self.pages = pages
        }

        private enum CodingKeys: String, CodingKey {
            case pages = "Pages"
        }
    }

    public struct Geometry: AWSShape {

        /// An axis-aligned coarse representation of the location of the recognized item on the document page.
        public let boundingBox: BoundingBox?
        /// Within the bounding box, a fine-grained polygon around the recognized item.
        public let polygon: [Point]?

        public init(boundingBox: BoundingBox? = nil, polygon: [Point]? = nil) {
            self.boundingBox = boundingBox
            self.polygon = polygon
        }

        private enum CodingKeys: String, CodingKey {
            case boundingBox = "BoundingBox"
            case polygon = "Polygon"
        }
    }

    public struct GetDocumentAnalysisRequest: AWSShape {

        /// A unique identifier for the text-detection job. The JobId is returned from StartDocumentAnalysis. A JobId value is only valid for 7 days.
        public let jobId: String
        /// The maximum number of results to return per paginated call. The largest value that you can specify is 1,000. If you specify a value greater than 1,000, a maximum of 1,000 results is returned. The default value is 1,000.
        public let maxResults: Int?
        /// If the previous response was incomplete (because there are more blocks to retrieve), Amazon Textract returns a pagination token in the response. You can use this pagination token to retrieve the next set of blocks.
        public let nextToken: String?

        public init(jobId: String, maxResults: Int? = nil, nextToken: String? = nil) {
            self.jobId = jobId
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        public func validate(name: String) throws {
            try validate(self.jobId, name:"jobId", parent: name, max: 64)
            try validate(self.jobId, name:"jobId", parent: name, min: 1)
            try validate(self.jobId, name:"jobId", parent: name, pattern: "^[a-zA-Z0-9-_]+$")
            try validate(self.maxResults, name:"maxResults", parent: name, min: 1)
            try validate(self.nextToken, name:"nextToken", parent: name, max: 255)
            try validate(self.nextToken, name:"nextToken", parent: name, min: 1)
            try validate(self.nextToken, name:"nextToken", parent: name, pattern: ".*\\S.*")
        }

        private enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case maxResults = "MaxResults"
            case nextToken = "NextToken"
        }
    }

    public struct GetDocumentAnalysisResponse: AWSShape {

        public let analyzeDocumentModelVersion: String?
        /// The results of the text-analysis operation.
        public let blocks: [Block]?
        /// Information about a document that Amazon Textract processed. DocumentMetadata is returned in every page of paginated responses from an Amazon Textract video operation.
        public let documentMetadata: DocumentMetadata?
        /// The current status of the text detection job.
        public let jobStatus: JobStatus?
        /// If the response is truncated, Amazon Textract returns this token. You can use this token in the subsequent request to retrieve the next set of text detection results.
        public let nextToken: String?
        /// The current status of an asynchronous document-analysis operation.
        public let statusMessage: String?
        /// A list of warnings that occurred during the document-analysis operation.
        public let warnings: [Warning]?

        public init(analyzeDocumentModelVersion: String? = nil, blocks: [Block]? = nil, documentMetadata: DocumentMetadata? = nil, jobStatus: JobStatus? = nil, nextToken: String? = nil, statusMessage: String? = nil, warnings: [Warning]? = nil) {
            self.analyzeDocumentModelVersion = analyzeDocumentModelVersion
            self.blocks = blocks
            self.documentMetadata = documentMetadata
            self.jobStatus = jobStatus
            self.nextToken = nextToken
            self.statusMessage = statusMessage
            self.warnings = warnings
        }

        private enum CodingKeys: String, CodingKey {
            case analyzeDocumentModelVersion = "AnalyzeDocumentModelVersion"
            case blocks = "Blocks"
            case documentMetadata = "DocumentMetadata"
            case jobStatus = "JobStatus"
            case nextToken = "NextToken"
            case statusMessage = "StatusMessage"
            case warnings = "Warnings"
        }
    }

    public struct GetDocumentTextDetectionRequest: AWSShape {

        /// A unique identifier for the text detection job. The JobId is returned from StartDocumentTextDetection. A JobId value is only valid for 7 days.
        public let jobId: String
        /// The maximum number of results to return per paginated call. The largest value you can specify is 1,000. If you specify a value greater than 1,000, a maximum of 1,000 results is returned. The default value is 1,000.
        public let maxResults: Int?
        /// If the previous response was incomplete (because there are more blocks to retrieve), Amazon Textract returns a pagination token in the response. You can use this pagination token to retrieve the next set of blocks.
        public let nextToken: String?

        public init(jobId: String, maxResults: Int? = nil, nextToken: String? = nil) {
            self.jobId = jobId
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        public func validate(name: String) throws {
            try validate(self.jobId, name:"jobId", parent: name, max: 64)
            try validate(self.jobId, name:"jobId", parent: name, min: 1)
            try validate(self.jobId, name:"jobId", parent: name, pattern: "^[a-zA-Z0-9-_]+$")
            try validate(self.maxResults, name:"maxResults", parent: name, min: 1)
            try validate(self.nextToken, name:"nextToken", parent: name, max: 255)
            try validate(self.nextToken, name:"nextToken", parent: name, min: 1)
            try validate(self.nextToken, name:"nextToken", parent: name, pattern: ".*\\S.*")
        }

        private enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case maxResults = "MaxResults"
            case nextToken = "NextToken"
        }
    }

    public struct GetDocumentTextDetectionResponse: AWSShape {

        /// The results of the text-detection operation.
        public let blocks: [Block]?
        public let detectDocumentTextModelVersion: String?
        /// Information about a document that Amazon Textract processed. DocumentMetadata is returned in every page of paginated responses from an Amazon Textract video operation.
        public let documentMetadata: DocumentMetadata?
        /// The current status of the text detection job.
        public let jobStatus: JobStatus?
        /// If the response is truncated, Amazon Textract returns this token. You can use this token in the subsequent request to retrieve the next set of text-detection results.
        public let nextToken: String?
        /// The current status of an asynchronous text-detection operation for the document. 
        public let statusMessage: String?
        /// A list of warnings that occurred during the text-detection operation for the document.
        public let warnings: [Warning]?

        public init(blocks: [Block]? = nil, detectDocumentTextModelVersion: String? = nil, documentMetadata: DocumentMetadata? = nil, jobStatus: JobStatus? = nil, nextToken: String? = nil, statusMessage: String? = nil, warnings: [Warning]? = nil) {
            self.blocks = blocks
            self.detectDocumentTextModelVersion = detectDocumentTextModelVersion
            self.documentMetadata = documentMetadata
            self.jobStatus = jobStatus
            self.nextToken = nextToken
            self.statusMessage = statusMessage
            self.warnings = warnings
        }

        private enum CodingKeys: String, CodingKey {
            case blocks = "Blocks"
            case detectDocumentTextModelVersion = "DetectDocumentTextModelVersion"
            case documentMetadata = "DocumentMetadata"
            case jobStatus = "JobStatus"
            case nextToken = "NextToken"
            case statusMessage = "StatusMessage"
            case warnings = "Warnings"
        }
    }

    public struct HumanLoopActivationOutput: AWSShape {

        /// Shows the result of condition evaluations, including those conditions which activated a human review.
        public let humanLoopActivationConditionsEvaluationResults: String?
        /// Shows if and why human review was needed.
        public let humanLoopActivationReasons: [String]?
        /// The Amazon Resource Name (ARN) of the HumanLoop created.
        public let humanLoopArn: String?

        public init(humanLoopActivationConditionsEvaluationResults: String? = nil, humanLoopActivationReasons: [String]? = nil, humanLoopArn: String? = nil) {
            self.humanLoopActivationConditionsEvaluationResults = humanLoopActivationConditionsEvaluationResults
            self.humanLoopActivationReasons = humanLoopActivationReasons
            self.humanLoopArn = humanLoopArn
        }

        private enum CodingKeys: String, CodingKey {
            case humanLoopActivationConditionsEvaluationResults = "HumanLoopActivationConditionsEvaluationResults"
            case humanLoopActivationReasons = "HumanLoopActivationReasons"
            case humanLoopArn = "HumanLoopArn"
        }
    }

    public struct HumanLoopConfig: AWSShape {

        /// Sets attributes of the input data.
        public let dataAttributes: HumanLoopDataAttributes?
        /// The Amazon Resource Name (ARN) of the flow definition.
        public let flowDefinitionArn: String
        /// The name of the human workflow used for this image. This should be kept unique within a region.
        public let humanLoopName: String

        public init(dataAttributes: HumanLoopDataAttributes? = nil, flowDefinitionArn: String, humanLoopName: String) {
            self.dataAttributes = dataAttributes
            self.flowDefinitionArn = flowDefinitionArn
            self.humanLoopName = humanLoopName
        }

        public func validate(name: String) throws {
            try self.dataAttributes?.validate(name: "\(name).dataAttributes")
            try validate(self.flowDefinitionArn, name:"flowDefinitionArn", parent: name, max: 256)
            try validate(self.humanLoopName, name:"humanLoopName", parent: name, max: 63)
            try validate(self.humanLoopName, name:"humanLoopName", parent: name, min: 1)
            try validate(self.humanLoopName, name:"humanLoopName", parent: name, pattern: "^[a-z0-9](-*[a-z0-9])*")
        }

        private enum CodingKeys: String, CodingKey {
            case dataAttributes = "DataAttributes"
            case flowDefinitionArn = "FlowDefinitionArn"
            case humanLoopName = "HumanLoopName"
        }
    }

    public struct HumanLoopDataAttributes: AWSShape {

        /// Sets whether the input image is free of personally identifiable information or adult content.
        public let contentClassifiers: [ContentClassifier]?

        public init(contentClassifiers: [ContentClassifier]? = nil) {
            self.contentClassifiers = contentClassifiers
        }

        public func validate(name: String) throws {
            try validate(self.contentClassifiers, name:"contentClassifiers", parent: name, max: 256)
        }

        private enum CodingKeys: String, CodingKey {
            case contentClassifiers = "ContentClassifiers"
        }
    }

    public struct NotificationChannel: AWSShape {

        /// The Amazon Resource Name (ARN) of an IAM role that gives Amazon Textract publishing permissions to the Amazon SNS topic. 
        public let roleArn: String
        /// The Amazon SNS topic that Amazon Textract posts the completion status to.
        public let sNSTopicArn: String

        public init(roleArn: String, sNSTopicArn: String) {
            self.roleArn = roleArn
            self.sNSTopicArn = sNSTopicArn
        }

        public func validate(name: String) throws {
            try validate(self.roleArn, name:"roleArn", parent: name, max: 2048)
            try validate(self.roleArn, name:"roleArn", parent: name, min: 20)
            try validate(self.roleArn, name:"roleArn", parent: name, pattern: "arn:([a-z\\d-]+):iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+")
            try validate(self.sNSTopicArn, name:"sNSTopicArn", parent: name, max: 1024)
            try validate(self.sNSTopicArn, name:"sNSTopicArn", parent: name, min: 20)
            try validate(self.sNSTopicArn, name:"sNSTopicArn", parent: name, pattern: "(^arn:([a-z\\d-]+):sns:[a-zA-Z\\d-]{1,20}:\\w{12}:.+$)")
        }

        private enum CodingKeys: String, CodingKey {
            case roleArn = "RoleArn"
            case sNSTopicArn = "SNSTopicArn"
        }
    }

    public struct Point: AWSShape {

        /// The value of the X coordinate for a point on a Polygon.
        public let x: Float?
        /// The value of the Y coordinate for a point on a Polygon.
        public let y: Float?

        public init(x: Float? = nil, y: Float? = nil) {
            self.x = x
            self.y = y
        }

        private enum CodingKeys: String, CodingKey {
            case x = "X"
            case y = "Y"
        }
    }

    public struct Relationship: AWSShape {

        /// An array of IDs for related blocks. You can get the type of the relationship from the Type element.
        public let ids: [String]?
        /// The type of relationship that the blocks in the IDs array have with the current block. The relationship can be VALUE or CHILD. A relationship of type VALUE is a list that contains the ID of the VALUE block that's associated with the KEY of a key-value pair. A relationship of type CHILD is a list of IDs that identify WORD blocks.
        public let `type`: RelationshipType?

        public init(ids: [String]? = nil, type: RelationshipType? = nil) {
            self.ids = ids
            self.`type` = `type`
        }

        private enum CodingKeys: String, CodingKey {
            case ids = "Ids"
            case `type` = "Type"
        }
    }

    public struct S3Object: AWSShape {

        /// The name of the S3 bucket.
        public let bucket: String?
        /// The file name of the input document. Synchronous operations can use image files that are in JPEG or PNG format. Asynchronous operations also support PDF format files.
        public let name: String?
        /// If the bucket has versioning enabled, you can specify the object version. 
        public let version: String?

        public init(bucket: String? = nil, name: String? = nil, version: String? = nil) {
            self.bucket = bucket
            self.name = name
            self.version = version
        }

        public func validate(name: String) throws {
            try validate(self.bucket, name:"bucket", parent: name, max: 255)
            try validate(self.bucket, name:"bucket", parent: name, min: 3)
            try validate(self.bucket, name:"bucket", parent: name, pattern: "[0-9A-Za-z\\.\\-_]*")
            try validate(self.name, name:"name", parent: name, max: 1024)
            try validate(self.name, name:"name", parent: name, min: 1)
            try validate(self.name, name:"name", parent: name, pattern: ".*\\S.*")
            try validate(self.version, name:"version", parent: name, max: 1024)
            try validate(self.version, name:"version", parent: name, min: 1)
            try validate(self.version, name:"version", parent: name, pattern: ".*\\S.*")
        }

        private enum CodingKeys: String, CodingKey {
            case bucket = "Bucket"
            case name = "Name"
            case version = "Version"
        }
    }

    public struct StartDocumentAnalysisRequest: AWSShape {

        /// The idempotent token that you use to identify the start request. If you use the same token with multiple StartDocumentAnalysis requests, the same JobId is returned. Use ClientRequestToken to prevent the same job from being accidentally started more than once. For more information, see Calling Amazon Textract Asynchronous Operations.
        public let clientRequestToken: String?
        /// The location of the document to be processed.
        public let documentLocation: DocumentLocation
        /// A list of the types of analysis to perform. Add TABLES to the list to return information about the tables that are detected in the input document. Add FORMS to return detected form data. To perform both types of analysis, add TABLES and FORMS to FeatureTypes. All lines and words detected in the document are included in the response (including text that isn't related to the value of FeatureTypes). 
        public let featureTypes: [FeatureType]
        /// An identifier that you specify that's included in the completion notification published to the Amazon SNS topic. For example, you can use JobTag to identify the type of document that the completion notification corresponds to (such as a tax form or a receipt).
        public let jobTag: String?
        /// The Amazon SNS topic ARN that you want Amazon Textract to publish the completion status of the operation to. 
        public let notificationChannel: NotificationChannel?

        public init(clientRequestToken: String? = nil, documentLocation: DocumentLocation, featureTypes: [FeatureType], jobTag: String? = nil, notificationChannel: NotificationChannel? = nil) {
            self.clientRequestToken = clientRequestToken
            self.documentLocation = documentLocation
            self.featureTypes = featureTypes
            self.jobTag = jobTag
            self.notificationChannel = notificationChannel
        }

        public func validate(name: String) throws {
            try validate(self.clientRequestToken, name:"clientRequestToken", parent: name, max: 64)
            try validate(self.clientRequestToken, name:"clientRequestToken", parent: name, min: 1)
            try validate(self.clientRequestToken, name:"clientRequestToken", parent: name, pattern: "^[a-zA-Z0-9-_]+$")
            try self.documentLocation.validate(name: "\(name).documentLocation")
            try validate(self.jobTag, name:"jobTag", parent: name, max: 64)
            try validate(self.jobTag, name:"jobTag", parent: name, min: 1)
            try validate(self.jobTag, name:"jobTag", parent: name, pattern: "[a-zA-Z0-9_.\\-:]+")
            try self.notificationChannel?.validate(name: "\(name).notificationChannel")
        }

        private enum CodingKeys: String, CodingKey {
            case clientRequestToken = "ClientRequestToken"
            case documentLocation = "DocumentLocation"
            case featureTypes = "FeatureTypes"
            case jobTag = "JobTag"
            case notificationChannel = "NotificationChannel"
        }
    }

    public struct StartDocumentAnalysisResponse: AWSShape {

        /// The identifier for the document text detection job. Use JobId to identify the job in a subsequent call to GetDocumentAnalysis. A JobId value is only valid for 7 days.
        public let jobId: String?

        public init(jobId: String? = nil) {
            self.jobId = jobId
        }

        private enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
        }
    }

    public struct StartDocumentTextDetectionRequest: AWSShape {

        /// The idempotent token that's used to identify the start request. If you use the same token with multiple StartDocumentTextDetection requests, the same JobId is returned. Use ClientRequestToken to prevent the same job from being accidentally started more than once. For more information, see Calling Amazon Textract Asynchronous Operations.
        public let clientRequestToken: String?
        /// The location of the document to be processed.
        public let documentLocation: DocumentLocation
        /// An identifier that you specify that's included in the completion notification published to the Amazon SNS topic. For example, you can use JobTag to identify the type of document that the completion notification corresponds to (such as a tax form or a receipt).
        public let jobTag: String?
        /// The Amazon SNS topic ARN that you want Amazon Textract to publish the completion status of the operation to. 
        public let notificationChannel: NotificationChannel?

        public init(clientRequestToken: String? = nil, documentLocation: DocumentLocation, jobTag: String? = nil, notificationChannel: NotificationChannel? = nil) {
            self.clientRequestToken = clientRequestToken
            self.documentLocation = documentLocation
            self.jobTag = jobTag
            self.notificationChannel = notificationChannel
        }

        public func validate(name: String) throws {
            try validate(self.clientRequestToken, name:"clientRequestToken", parent: name, max: 64)
            try validate(self.clientRequestToken, name:"clientRequestToken", parent: name, min: 1)
            try validate(self.clientRequestToken, name:"clientRequestToken", parent: name, pattern: "^[a-zA-Z0-9-_]+$")
            try self.documentLocation.validate(name: "\(name).documentLocation")
            try validate(self.jobTag, name:"jobTag", parent: name, max: 64)
            try validate(self.jobTag, name:"jobTag", parent: name, min: 1)
            try validate(self.jobTag, name:"jobTag", parent: name, pattern: "[a-zA-Z0-9_.\\-:]+")
            try self.notificationChannel?.validate(name: "\(name).notificationChannel")
        }

        private enum CodingKeys: String, CodingKey {
            case clientRequestToken = "ClientRequestToken"
            case documentLocation = "DocumentLocation"
            case jobTag = "JobTag"
            case notificationChannel = "NotificationChannel"
        }
    }

    public struct StartDocumentTextDetectionResponse: AWSShape {

        /// The identifier of the text detection job for the document. Use JobId to identify the job in a subsequent call to GetDocumentTextDetection. A JobId value is only valid for 7 days.
        public let jobId: String?

        public init(jobId: String? = nil) {
            self.jobId = jobId
        }

        private enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
        }
    }

    public struct Warning: AWSShape {

        /// The error code for the warning.
        public let errorCode: String?
        /// A list of the pages that the warning applies to.
        public let pages: [Int]?

        public init(errorCode: String? = nil, pages: [Int]? = nil) {
            self.errorCode = errorCode
            self.pages = pages
        }

        private enum CodingKeys: String, CodingKey {
            case errorCode = "ErrorCode"
            case pages = "Pages"
        }
    }
}
