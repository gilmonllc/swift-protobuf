// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: conformance/conformance.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

// Protocol Buffers - Google's data interchange format
// Copyright 2008 Google Inc.  All rights reserved.
// https://developers.google.com/protocol-buffers/
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are
// met:
//
//     * Redistributions of source code must retain the above copyright
// notice, this list of conditions and the following disclaimer.
//     * Redistributions in binary form must reproduce the above
// copyright notice, this list of conditions and the following disclaimer
// in the documentation and/or other materials provided with the
// distribution.
//     * Neither the name of Google Inc. nor the names of its
// contributors may be used to endorse or promote products derived from
// this software without specific prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
// "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
// A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
// OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
// SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
// LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
// DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
// THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _1: SwiftProtobuf.ProtobufAPIVersion_1 {}
  typealias Version = _1
}

enum Conformance_WireFormat: SwiftProtobuf.Enum {
  typealias RawValue = Int
  case unspecified // = 0
  case protobuf // = 1
  case json // = 2
  case UNRECOGNIZED(Int)

  init() {
    self = .unspecified
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unspecified
    case 1: self = .protobuf
    case 2: self = .json
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  var rawValue: Int {
    switch self {
    case .unspecified: return 0
    case .protobuf: return 1
    case .json: return 2
    case .UNRECOGNIZED(let i): return i
    }
  }

}

/// Represents a single test case's input.  The testee should:
///
///   1. parse this proto (which should always succeed)
///   2. parse the protobuf or JSON payload in "payload" (which may fail)
///   3. if the parse succeeded, serialize the message in the requested format.
struct Conformance_ConformanceRequest: SwiftProtobuf.Message {
  static let protoMessageName: String = _protobuf_package + ".ConformanceRequest"

  /// The payload (whether protobuf of JSON) is always for a
  /// protobuf_test_messages.proto3.TestAllTypes proto (as defined in
  /// src/google/protobuf/proto3_test_messages.proto).
  ///
  /// TODO(haberman): if/when we expand the conformance tests to support proto2,
  /// we will want to include a field that lets the payload/response be a
  /// protobuf_test_messages.proto2.TestAllTypes message instead.
  var payload: Conformance_ConformanceRequest.OneOf_Payload? = nil

  var protobufPayload: Data {
    get {
      if case .protobufPayload(let v)? = payload {return v}
      return SwiftProtobuf.Internal.emptyData
    }
    set {payload = .protobufPayload(newValue)}
  }

  var jsonPayload: String {
    get {
      if case .jsonPayload(let v)? = payload {return v}
      return String()
    }
    set {payload = .jsonPayload(newValue)}
  }

  /// Which format should the testee serialize its message to?
  var requestedOutputFormat: Conformance_WireFormat = .unspecified

  var unknownFields = SwiftProtobuf.UnknownStorage()

  /// The payload (whether protobuf of JSON) is always for a
  /// protobuf_test_messages.proto3.TestAllTypes proto (as defined in
  /// src/google/protobuf/proto3_test_messages.proto).
  ///
  /// TODO(haberman): if/when we expand the conformance tests to support proto2,
  /// we will want to include a field that lets the payload/response be a
  /// protobuf_test_messages.proto2.TestAllTypes message instead.
  enum OneOf_Payload: Equatable {
    case protobufPayload(Data)
    case jsonPayload(String)

    static func ==(lhs: Conformance_ConformanceRequest.OneOf_Payload, rhs: Conformance_ConformanceRequest.OneOf_Payload) -> Bool {
      switch (lhs, rhs) {
      case (.protobufPayload(let l), .protobufPayload(let r)): return l == r
      case (.jsonPayload(let l), .jsonPayload(let r)): return l == r
      default: return false
      }
    }
  }

  init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1, 2:
        if self.payload != nil {
          try decoder.handleConflictingOneOf()
        }
        self.payload = try Conformance_ConformanceRequest.OneOf_Payload(byDecodingFrom: &decoder, fieldNumber: fieldNumber)
      case 3: try decoder.decodeSingularEnumField(value: &self.requestedOutputFormat)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try self.payload?.traverse(visitor: &visitor)
    if self.requestedOutputFormat != .unspecified {
      try visitor.visitSingularEnumField(value: self.requestedOutputFormat, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

/// Represents a single test case's output.
struct Conformance_ConformanceResponse: SwiftProtobuf.Message {
  static let protoMessageName: String = _protobuf_package + ".ConformanceResponse"

  var result: Conformance_ConformanceResponse.OneOf_Result? = nil

  /// This string should be set to indicate parsing failed.  The string can
  /// provide more information about the parse error if it is available.
  ///
  /// Setting this string does not necessarily mean the testee failed the
  /// test.  Some of the test cases are intentionally invalid input.
  var parseError: String {
    get {
      if case .parseError(let v)? = result {return v}
      return String()
    }
    set {result = .parseError(newValue)}
  }

  /// If the input was successfully parsed but errors occurred when
  /// serializing it to the requested output format, set the error message in
  /// this field.
  var serializeError: String {
    get {
      if case .serializeError(let v)? = result {return v}
      return String()
    }
    set {result = .serializeError(newValue)}
  }

  /// This should be set if some other error occurred.  This will always
  /// indicate that the test failed.  The string can provide more information
  /// about the failure.
  var runtimeError: String {
    get {
      if case .runtimeError(let v)? = result {return v}
      return String()
    }
    set {result = .runtimeError(newValue)}
  }

  /// If the input was successfully parsed and the requested output was
  /// protobuf, serialize it to protobuf and set it in this field.
  var protobufPayload: Data {
    get {
      if case .protobufPayload(let v)? = result {return v}
      return SwiftProtobuf.Internal.emptyData
    }
    set {result = .protobufPayload(newValue)}
  }

  /// If the input was successfully parsed and the requested output was JSON,
  /// serialize to JSON and set it in this field.
  var jsonPayload: String {
    get {
      if case .jsonPayload(let v)? = result {return v}
      return String()
    }
    set {result = .jsonPayload(newValue)}
  }

  /// For when the testee skipped the test, likely because a certain feature
  /// wasn't supported, like JSON input/output.
  var skipped: String {
    get {
      if case .skipped(let v)? = result {return v}
      return String()
    }
    set {result = .skipped(newValue)}
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  enum OneOf_Result: Equatable {
    /// This string should be set to indicate parsing failed.  The string can
    /// provide more information about the parse error if it is available.
    ///
    /// Setting this string does not necessarily mean the testee failed the
    /// test.  Some of the test cases are intentionally invalid input.
    case parseError(String)
    /// If the input was successfully parsed but errors occurred when
    /// serializing it to the requested output format, set the error message in
    /// this field.
    case serializeError(String)
    /// This should be set if some other error occurred.  This will always
    /// indicate that the test failed.  The string can provide more information
    /// about the failure.
    case runtimeError(String)
    /// If the input was successfully parsed and the requested output was
    /// protobuf, serialize it to protobuf and set it in this field.
    case protobufPayload(Data)
    /// If the input was successfully parsed and the requested output was JSON,
    /// serialize to JSON and set it in this field.
    case jsonPayload(String)
    /// For when the testee skipped the test, likely because a certain feature
    /// wasn't supported, like JSON input/output.
    case skipped(String)

    static func ==(lhs: Conformance_ConformanceResponse.OneOf_Result, rhs: Conformance_ConformanceResponse.OneOf_Result) -> Bool {
      switch (lhs, rhs) {
      case (.parseError(let l), .parseError(let r)): return l == r
      case (.serializeError(let l), .serializeError(let r)): return l == r
      case (.runtimeError(let l), .runtimeError(let r)): return l == r
      case (.protobufPayload(let l), .protobufPayload(let r)): return l == r
      case (.jsonPayload(let l), .jsonPayload(let r)): return l == r
      case (.skipped(let l), .skipped(let r)): return l == r
      default: return false
      }
    }
  }

  init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1...6:
        if self.result != nil {
          try decoder.handleConflictingOneOf()
        }
        self.result = try Conformance_ConformanceResponse.OneOf_Result(byDecodingFrom: &decoder, fieldNumber: fieldNumber)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try self.result?.traverse(visitor: &visitor)
    try unknownFields.traverse(visitor: &visitor)
  }
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "conformance"

extension Conformance_WireFormat: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "UNSPECIFIED"),
    1: .same(proto: "PROTOBUF"),
    2: .same(proto: "JSON"),
  ]
}

extension Conformance_ConformanceRequest: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "protobuf_payload"),
    2: .standard(proto: "json_payload"),
    3: .standard(proto: "requested_output_format"),
  ]

  func _protobuf_generated_isEqualTo(other: Conformance_ConformanceRequest) -> Bool {
    if self.payload != other.payload {return false}
    if self.requestedOutputFormat != other.requestedOutputFormat {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Conformance_ConformanceRequest.OneOf_Payload {
  fileprivate init?<T: SwiftProtobuf.Decoder>(byDecodingFrom decoder: inout T, fieldNumber: Int) throws {
    switch fieldNumber {
    case 1:
      var value = Data()
      try decoder.decodeSingularBytesField(value: &value)
      self = .protobufPayload(value)
      return
    case 2:
      var value = String()
      try decoder.decodeSingularStringField(value: &value)
      self = .jsonPayload(value)
      return
    default:
      break
    }
    return nil
  }

  fileprivate func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    switch self {
    case .protobufPayload(let v):
      try visitor.visitSingularBytesField(value: v, fieldNumber: 1)
    case .jsonPayload(let v):
      try visitor.visitSingularStringField(value: v, fieldNumber: 2)
    }
  }
}

extension Conformance_ConformanceResponse: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "parse_error"),
    6: .standard(proto: "serialize_error"),
    2: .standard(proto: "runtime_error"),
    3: .standard(proto: "protobuf_payload"),
    4: .standard(proto: "json_payload"),
    5: .same(proto: "skipped"),
  ]

  func _protobuf_generated_isEqualTo(other: Conformance_ConformanceResponse) -> Bool {
    if self.result != other.result {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Conformance_ConformanceResponse.OneOf_Result {
  fileprivate init?<T: SwiftProtobuf.Decoder>(byDecodingFrom decoder: inout T, fieldNumber: Int) throws {
    switch fieldNumber {
    case 1:
      var value = String()
      try decoder.decodeSingularStringField(value: &value)
      self = .parseError(value)
      return
    case 2:
      var value = String()
      try decoder.decodeSingularStringField(value: &value)
      self = .runtimeError(value)
      return
    case 3:
      var value = Data()
      try decoder.decodeSingularBytesField(value: &value)
      self = .protobufPayload(value)
      return
    case 4:
      var value = String()
      try decoder.decodeSingularStringField(value: &value)
      self = .jsonPayload(value)
      return
    case 5:
      var value = String()
      try decoder.decodeSingularStringField(value: &value)
      self = .skipped(value)
      return
    case 6:
      var value = String()
      try decoder.decodeSingularStringField(value: &value)
      self = .serializeError(value)
      return
    default:
      break
    }
    return nil
  }

  fileprivate func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    switch self {
    case .parseError(let v):
      try visitor.visitSingularStringField(value: v, fieldNumber: 1)
    case .runtimeError(let v):
      try visitor.visitSingularStringField(value: v, fieldNumber: 2)
    case .protobufPayload(let v):
      try visitor.visitSingularBytesField(value: v, fieldNumber: 3)
    case .jsonPayload(let v):
      try visitor.visitSingularStringField(value: v, fieldNumber: 4)
    case .skipped(let v):
      try visitor.visitSingularStringField(value: v, fieldNumber: 5)
    case .serializeError(let v):
      try visitor.visitSingularStringField(value: v, fieldNumber: 6)
    }
  }
}
