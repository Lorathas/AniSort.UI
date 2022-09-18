///
//  Generated code. Do not modify.
//  source: scheduled_jobs.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use scheduleTypeDescriptor instead')
const ScheduleType$json = const {
  '1': 'ScheduleType',
  '2': const [
    const {'1': 'Timed', '2': 0},
    const {'1': 'FileChange', '2': 1},
  ],
};

/// Descriptor for `ScheduleType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List scheduleTypeDescriptor = $convert.base64Decode('CgxTY2hlZHVsZVR5cGUSCQoFVGltZWQQABIOCgpGaWxlQ2hhbmdlEAE=');
@$core.Deprecated('Use scheduledJobDescriptor instead')
const ScheduledJob$json = const {
  '1': 'ScheduledJob',
  '2': const [
    const {'1': 'scheduledJobId', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'scheduledJobId', '17': true},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'type', '3': 3, '4': 1, '5': 14, '6': '.anisort.JobType', '10': 'type'},
    const {'1': 'scheduleType', '3': 4, '4': 1, '5': 14, '6': '.anisort.ScheduleType', '10': 'scheduleType'},
    const {'1': 'options', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Struct', '10': 'options'},
    const {'1': 'scheduleOptions', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Struct', '10': 'scheduleOptions'},
  ],
  '8': const [
    const {'1': '_scheduledJobId'},
  ],
};

/// Descriptor for `ScheduledJob`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List scheduledJobDescriptor = $convert.base64Decode('CgxTY2hlZHVsZWRKb2ISKwoOc2NoZWR1bGVkSm9iSWQYASABKAlIAFIOc2NoZWR1bGVkSm9iSWSIAQESEgoEbmFtZRgCIAEoCVIEbmFtZRIkCgR0eXBlGAMgASgOMhAuYW5pc29ydC5Kb2JUeXBlUgR0eXBlEjkKDHNjaGVkdWxlVHlwZRgEIAEoDjIVLmFuaXNvcnQuU2NoZWR1bGVUeXBlUgxzY2hlZHVsZVR5cGUSMQoHb3B0aW9ucxgFIAEoCzIXLmdvb2dsZS5wcm90b2J1Zi5TdHJ1Y3RSB29wdGlvbnMSQQoPc2NoZWR1bGVPcHRpb25zGAYgASgLMhcuZ29vZ2xlLnByb3RvYnVmLlN0cnVjdFIPc2NoZWR1bGVPcHRpb25zQhEKD19zY2hlZHVsZWRKb2JJZA==');
@$core.Deprecated('Use scheduledJobCollectionDescriptor instead')
const ScheduledJobCollection$json = const {
  '1': 'ScheduledJobCollection',
  '2': const [
    const {'1': 'jobs', '3': 1, '4': 3, '5': 11, '6': '.anisort.ScheduledJob', '10': 'jobs'},
  ],
};

/// Descriptor for `ScheduledJobCollection`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List scheduledJobCollectionDescriptor = $convert.base64Decode('ChZTY2hlZHVsZWRKb2JDb2xsZWN0aW9uEikKBGpvYnMYASADKAsyFS5hbmlzb3J0LlNjaGVkdWxlZEpvYlIEam9icw==');
@$core.Deprecated('Use scheduledJobUpdateDescriptor instead')
const ScheduledJobUpdate$json = const {
  '1': 'ScheduledJobUpdate',
  '2': const [
    const {'1': 'scheduledJobId', '3': 1, '4': 1, '5': 9, '10': 'scheduledJobId'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'type', '3': 3, '4': 1, '5': 14, '6': '.anisort.JobType', '10': 'type'},
    const {'1': 'scheduleType', '3': 4, '4': 1, '5': 14, '6': '.anisort.ScheduleType', '10': 'scheduleType'},
    const {'1': 'options', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Struct', '10': 'options'},
    const {'1': 'scheduleOptions', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Struct', '10': 'scheduleOptions'},
    const {'1': 'update', '3': 7, '4': 1, '5': 14, '6': '.anisort.HubUpdate', '10': 'update'},
  ],
};

/// Descriptor for `ScheduledJobUpdate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List scheduledJobUpdateDescriptor = $convert.base64Decode('ChJTY2hlZHVsZWRKb2JVcGRhdGUSJgoOc2NoZWR1bGVkSm9iSWQYASABKAlSDnNjaGVkdWxlZEpvYklkEhIKBG5hbWUYAiABKAlSBG5hbWUSJAoEdHlwZRgDIAEoDjIQLmFuaXNvcnQuSm9iVHlwZVIEdHlwZRI5CgxzY2hlZHVsZVR5cGUYBCABKA4yFS5hbmlzb3J0LlNjaGVkdWxlVHlwZVIMc2NoZWR1bGVUeXBlEjEKB29wdGlvbnMYBSABKAsyFy5nb29nbGUucHJvdG9idWYuU3RydWN0UgdvcHRpb25zEkEKD3NjaGVkdWxlT3B0aW9ucxgGIAEoCzIXLmdvb2dsZS5wcm90b2J1Zi5TdHJ1Y3RSD3NjaGVkdWxlT3B0aW9ucxIqCgZ1cGRhdGUYByABKA4yEi5hbmlzb3J0Lkh1YlVwZGF0ZVIGdXBkYXRl');
@$core.Deprecated('Use scheduledJobFilterRequestDescriptor instead')
const ScheduledJobFilterRequest$json = const {
  '1': 'ScheduledJobFilterRequest',
  '2': const [
    const {'1': 'scheduledJobId', '3': 1, '4': 1, '5': 9, '10': 'scheduledJobId'},
  ],
};

/// Descriptor for `ScheduledJobFilterRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List scheduledJobFilterRequestDescriptor = $convert.base64Decode('ChlTY2hlZHVsZWRKb2JGaWx0ZXJSZXF1ZXN0EiYKDnNjaGVkdWxlZEpvYklkGAEgASgJUg5zY2hlZHVsZWRKb2JJZA==');
