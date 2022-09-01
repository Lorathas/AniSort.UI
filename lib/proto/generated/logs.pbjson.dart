///
//  Generated code. Do not modify.
//  source: logs.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use jobLogDescriptor instead')
const JobLog$json = const {
  '1': 'JobLog',
  '2': const [
    const {'1': 'jobLogId', '3': 1, '4': 1, '5': 9, '10': 'jobLogId'},
    const {'1': 'jobId', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'jobId', '17': true},
    const {'1': 'message', '3': 3, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'params', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Struct', '10': 'params'},
    const {'1': 'createdAt', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
  ],
  '8': const [
    const {'1': '_jobId'},
  ],
};

/// Descriptor for `JobLog`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List jobLogDescriptor = $convert.base64Decode('CgZKb2JMb2cSGgoIam9iTG9nSWQYASABKAlSCGpvYkxvZ0lkEhkKBWpvYklkGAIgASgJSABSBWpvYklkiAEBEhgKB21lc3NhZ2UYAyABKAlSB21lc3NhZ2USLwoGcGFyYW1zGAQgASgLMhcuZ29vZ2xlLnByb3RvYnVmLlN0cnVjdFIGcGFyYW1zEjgKCWNyZWF0ZWRBdBgFIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCWNyZWF0ZWRBdEIICgZfam9iSWQ=');
@$core.Deprecated('Use stepLogDescriptor instead')
const StepLog$json = const {
  '1': 'StepLog',
  '2': const [
    const {'1': 'stepLogId', '3': 1, '4': 1, '5': 9, '10': 'stepLogId'},
    const {'1': 'stepId', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'stepId', '17': true},
    const {'1': 'message', '3': 3, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'params', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Struct', '10': 'params'},
    const {'1': 'createdAt', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
  ],
  '8': const [
    const {'1': '_stepId'},
  ],
};

/// Descriptor for `StepLog`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stepLogDescriptor = $convert.base64Decode('CgdTdGVwTG9nEhwKCXN0ZXBMb2dJZBgBIAEoCVIJc3RlcExvZ0lkEhsKBnN0ZXBJZBgCIAEoCUgAUgZzdGVwSWSIAQESGAoHbWVzc2FnZRgDIAEoCVIHbWVzc2FnZRIvCgZwYXJhbXMYBCABKAsyFy5nb29nbGUucHJvdG9idWYuU3RydWN0UgZwYXJhbXMSOAoJY3JlYXRlZEF0GAUgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIJY3JlYXRlZEF0QgkKB19zdGVwSWQ=');
