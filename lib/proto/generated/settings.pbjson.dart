///
//  Generated code. Do not modify.
//  source: settings.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use settingsReplyDescriptor instead')
const SettingsReply$json = const {
  '1': 'SettingsReply',
  '2': const [
    const {'1': 'debug', '3': 1, '4': 1, '5': 8, '10': 'debug'},
    const {'1': 'verbose', '3': 2, '4': 1, '5': 8, '10': 'verbose'},
    const {'1': 'copy', '3': 3, '4': 1, '5': 8, '10': 'copy'},
    const {'1': 'incrementalCleanup', '3': 4, '4': 1, '5': 8, '10': 'incrementalCleanup'},
    const {'1': 'aniDb', '3': 5, '4': 1, '5': 11, '6': '.AniDbConfigReply', '10': 'aniDb'},
    const {'1': 'sources', '3': 6, '4': 3, '5': 9, '10': 'sources'},
    const {'1': 'libraryPaths', '3': 7, '4': 3, '5': 9, '10': 'libraryPaths'},
    const {'1': 'ignoreLibraryFiles', '3': 8, '4': 1, '5': 8, '10': 'ignoreLibraryFiles'},
    const {'1': 'destination', '3': 9, '4': 1, '5': 11, '6': '.DestinationConfigReply', '10': 'destination'},
  ],
};

/// Descriptor for `SettingsReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List settingsReplyDescriptor = $convert.base64Decode('Cg1TZXR0aW5nc1JlcGx5EhQKBWRlYnVnGAEgASgIUgVkZWJ1ZxIYCgd2ZXJib3NlGAIgASgIUgd2ZXJib3NlEhIKBGNvcHkYAyABKAhSBGNvcHkSLgoSaW5jcmVtZW50YWxDbGVhbnVwGAQgASgIUhJpbmNyZW1lbnRhbENsZWFudXASJwoFYW5pRGIYBSABKAsyES5BbmlEYkNvbmZpZ1JlcGx5UgVhbmlEYhIYCgdzb3VyY2VzGAYgAygJUgdzb3VyY2VzEiIKDGxpYnJhcnlQYXRocxgHIAMoCVIMbGlicmFyeVBhdGhzEi4KEmlnbm9yZUxpYnJhcnlGaWxlcxgIIAEoCFISaWdub3JlTGlicmFyeUZpbGVzEjkKC2Rlc3RpbmF0aW9uGAkgASgLMhcuRGVzdGluYXRpb25Db25maWdSZXBseVILZGVzdGluYXRpb24=');
@$core.Deprecated('Use aniDbConfigReplyDescriptor instead')
const AniDbConfigReply$json = const {
  '1': 'AniDbConfigReply',
  '2': const [
    const {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
    const {'1': 'maxFileSearchRetries', '3': 3, '4': 1, '5': 5, '9': 0, '10': 'maxFileSearchRetries', '17': true},
    const {'1': 'fileSearchCooldownMinutes', '3': 4, '4': 1, '5': 5, '10': 'fileSearchCooldownMinutes'},
  ],
  '8': const [
    const {'1': '_maxFileSearchRetries'},
  ],
};

/// Descriptor for `AniDbConfigReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aniDbConfigReplyDescriptor = $convert.base64Decode('ChBBbmlEYkNvbmZpZ1JlcGx5EhoKCHVzZXJuYW1lGAEgASgJUgh1c2VybmFtZRIaCghwYXNzd29yZBgCIAEoCVIIcGFzc3dvcmQSNwoUbWF4RmlsZVNlYXJjaFJldHJpZXMYAyABKAVIAFIUbWF4RmlsZVNlYXJjaFJldHJpZXOIAQESPAoZZmlsZVNlYXJjaENvb2xkb3duTWludXRlcxgEIAEoBVIZZmlsZVNlYXJjaENvb2xkb3duTWludXRlc0IXChVfbWF4RmlsZVNlYXJjaFJldHJpZXM=');
@$core.Deprecated('Use destinationConfigReplyDescriptor instead')
const DestinationConfigReply$json = const {
  '1': 'DestinationConfigReply',
  '2': const [
    const {'1': 'path', '3': 1, '4': 1, '5': 9, '10': 'path'},
    const {'1': 'fragmentSeries', '3': 2, '4': 1, '5': 8, '10': 'fragmentSeries'},
    const {'1': 'format', '3': 3, '4': 1, '5': 9, '10': 'format'},
    const {'1': 'tvPath', '3': 4, '4': 1, '5': 9, '10': 'tvPath'},
    const {'1': 'moviePath', '3': 5, '4': 1, '5': 9, '10': 'moviePath'},
  ],
};

/// Descriptor for `DestinationConfigReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List destinationConfigReplyDescriptor = $convert.base64Decode('ChZEZXN0aW5hdGlvbkNvbmZpZ1JlcGx5EhIKBHBhdGgYASABKAlSBHBhdGgSJgoOZnJhZ21lbnRTZXJpZXMYAiABKAhSDmZyYWdtZW50U2VyaWVzEhYKBmZvcm1hdBgDIAEoCVIGZm9ybWF0EhYKBnR2UGF0aBgEIAEoCVIGdHZQYXRoEhwKCW1vdmllUGF0aBgFIAEoCVIJbW92aWVQYXRo');
