// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
Amazon Mobile Analytics is a service for collecting, visualizing, and understanding app usage data at scale.
*/
public struct MobileAnalytics {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            service: "mobileanalytics",
            serviceProtocol: ServiceProtocol(type: .restjson),
            apiVersion: "2014-06-05",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [MobileAnalyticsErrorType.self]
        )
    }

    ///  The PutEvents operation records one or more events. You can have up to 1,500 unique custom events per app, any combination of up to 40 attributes and metrics per custom event, and any number of attribute or metric values.
    @discardableResult public func putEvents(_ input: PutEventsInput) throws -> Future<Void> {
        return try client.send(operation: "PutEvents", path: "/2014-06-05/events", httpMethod: "POST", input: input)
    }
}