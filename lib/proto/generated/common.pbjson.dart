///
//  Generated code. Do not modify.
//  source: common.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use sortDirectionDescriptor instead')
const SortDirection$json = const {
  '1': 'SortDirection',
  '2': const [
    const {'1': 'Ascending', '2': 0},
    const {'1': 'Descending', '2': 1},
  ],
};

/// Descriptor for `SortDirection`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List sortDirectionDescriptor = $convert.base64Decode('Cg1Tb3J0RGlyZWN0aW9uEg0KCUFzY2VuZGluZxAAEg4KCkRlc2NlbmRpbmcQAQ==');
@$core.Deprecated('Use hubUpdateDescriptor instead')
const HubUpdate$json = const {
  '1': 'HubUpdate',
  '2': const [
    const {'1': 'Initial', '2': 0},
    const {'1': 'ItemCreated', '2': 1},
    const {'1': 'ItemUpdated', '2': 2},
    const {'1': 'ItemDeleted', '2': 3},
  ],
};

/// Descriptor for `HubUpdate`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List hubUpdateDescriptor = $convert.base64Decode('CglIdWJVcGRhdGUSCwoHSW5pdGlhbBAAEg8KC0l0ZW1DcmVhdGVkEAESDwoLSXRlbVVwZGF0ZWQQAhIPCgtJdGVtRGVsZXRlZBAD');
@$core.Deprecated('Use emptyDescriptor instead')
const Empty$json = const {
  '1': 'Empty',
};

/// Descriptor for `Empty`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyDescriptor = $convert.base64Decode('CgVFbXB0eQ==');
@$core.Deprecated('Use pagesInfoDescriptor instead')
const PagesInfo$json = const {
  '1': 'PagesInfo',
  '2': const [
    const {'1': 'pages', '3': 1, '4': 1, '5': 5, '10': 'pages'},
  ],
};

/// Descriptor for `PagesInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pagesInfoDescriptor = $convert.base64Decode('CglQYWdlc0luZm8SFAoFcGFnZXMYASABKAVSBXBhZ2Vz');
