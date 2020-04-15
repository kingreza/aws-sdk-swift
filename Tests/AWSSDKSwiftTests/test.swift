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

import XCTest
import NIO
import AWSSDKSwiftCore

func attempt(function : () throws -> ()) {
    do {
        try function()
    } catch let error as AWSErrorType {
        XCTFail(error.description)
    } catch DecodingError.typeMismatch(let type, let context) {
        print(type, context)
        XCTFail()
    } catch let error as NIO.ChannelError {
        XCTFail("\(error)")
    } catch {
        XCTFail("\(error)")
    }
}


