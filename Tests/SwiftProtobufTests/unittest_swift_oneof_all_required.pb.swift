// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: unittest_swift_oneof_all_required.proto
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

struct ProtobufUnittest_OneOfOptionMessage1: SwiftProtobuf.Message {
  static let protoMessageName: String = _protobuf_package + ".OneOfOptionMessage1"

  var requiredField: Int32 {
    get {return _requiredField ?? 0}
    set {_requiredField = newValue}
  }
  /// Returns true if `requiredField` has been explicitly set.
  var hasRequiredField: Bool {return self._requiredField != nil}
  /// Clears the value of `requiredField`. Subsequent reads from it will return its default value.
  mutating func clearRequiredField() {self._requiredField = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  public var isInitialized: Bool {
    if self._requiredField == nil {return false}
    return true
  }

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt32Field(value: &self._requiredField)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._requiredField {
      try visitor.visitSingularInt32Field(value: v, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _requiredField: Int32? = nil
}

struct ProtobufUnittest_OneOfOptionMessage2: SwiftProtobuf.Message {
  static let protoMessageName: String = _protobuf_package + ".OneOfOptionMessage2"

  var requiredField: Int32 {
    get {return _requiredField ?? 0}
    set {_requiredField = newValue}
  }
  /// Returns true if `requiredField` has been explicitly set.
  var hasRequiredField: Bool {return self._requiredField != nil}
  /// Clears the value of `requiredField`. Subsequent reads from it will return its default value.
  mutating func clearRequiredField() {self._requiredField = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  public var isInitialized: Bool {
    if self._requiredField == nil {return false}
    return true
  }

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt32Field(value: &self._requiredField)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._requiredField {
      try visitor.visitSingularInt32Field(value: v, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _requiredField: Int32? = nil
}

struct ProtobufUnittest_OneOfContainer: SwiftProtobuf.Message {
  static let protoMessageName: String = _protobuf_package + ".OneOfContainer"

  var option: OneOf_Option? {
    get {return _storage._option}
    set {_uniqueStorage()._option = newValue}
  }

  var option1: ProtobufUnittest_OneOfOptionMessage1 {
    get {
      if case .option1(let v)? = _storage._option {return v}
      return ProtobufUnittest_OneOfOptionMessage1()
    }
    set {_uniqueStorage()._option = .option1(newValue)}
  }

  var option2: ProtobufUnittest_OneOfOptionMessage2 {
    get {
      if case .option2(let v)? = _storage._option {return v}
      return ProtobufUnittest_OneOfOptionMessage2()
    }
    set {_uniqueStorage()._option = .option2(newValue)}
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  enum OneOf_Option: Equatable {
    case option1(ProtobufUnittest_OneOfOptionMessage1)
    case option2(ProtobufUnittest_OneOfOptionMessage2)

    static func ==(lhs: ProtobufUnittest_OneOfContainer.OneOf_Option, rhs: ProtobufUnittest_OneOfContainer.OneOf_Option) -> Bool {
      switch (lhs, rhs) {
      case (.option1(let l), .option1(let r)): return l == r
      case (.option2(let l), .option2(let r)): return l == r
      default: return false
      }
    }
  }

  init() {}

  public var isInitialized: Bool {
    return withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      switch _storage._option {
      case .option1(let v)?: if !v.isInitialized {return false}
      case .option2(let v)?: if !v.isInitialized {return false}
      default: break
      }
      return true
    }
  }

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1, 2:
          if _storage._option != nil {
            try decoder.handleConflictingOneOf()
          }
          _storage._option = try ProtobufUnittest_OneOfContainer.OneOf_Option(byDecodingFrom: &decoder, fieldNumber: fieldNumber)
        default: break
        }
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      try _storage._option?.traverse(visitor: &visitor)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass()
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "protobuf_unittest"

extension ProtobufUnittest_OneOfOptionMessage1: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "requiredField"),
  ]

  func _protobuf_generated_isEqualTo(other: ProtobufUnittest_OneOfOptionMessage1) -> Bool {
    if self._requiredField != other._requiredField {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension ProtobufUnittest_OneOfOptionMessage2: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "requiredField"),
  ]

  func _protobuf_generated_isEqualTo(other: ProtobufUnittest_OneOfOptionMessage2) -> Bool {
    if self._requiredField != other._requiredField {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension ProtobufUnittest_OneOfContainer: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "option1"),
    2: .same(proto: "option2"),
  ]

  fileprivate class _StorageClass {
    var _option: ProtobufUnittest_OneOfContainer.OneOf_Option?

    init() {}

    init(copying source: _StorageClass) {
      _option = source._option
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  func _protobuf_generated_isEqualTo(other: ProtobufUnittest_OneOfContainer) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_storage, other_storage) in
        if _storage._option != other_storage._option {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension ProtobufUnittest_OneOfContainer.OneOf_Option {
  fileprivate init?<T: SwiftProtobuf.Decoder>(byDecodingFrom decoder: inout T, fieldNumber: Int) throws {
    switch fieldNumber {
    case 1:
      var value: ProtobufUnittest_OneOfOptionMessage1?
      try decoder.decodeSingularMessageField(value: &value)
      if let value = value {
        self = .option1(value)
        return
      }
    case 2:
      var value: ProtobufUnittest_OneOfOptionMessage2?
      try decoder.decodeSingularMessageField(value: &value)
      if let value = value {
        self = .option2(value)
        return
      }
    default:
      break
    }
    return nil
  }

  fileprivate func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    switch self {
    case .option1(let v):
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    case .option2(let v):
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
  }
}
