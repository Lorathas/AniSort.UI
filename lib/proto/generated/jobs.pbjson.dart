///
//  Generated code. Do not modify.
//  source: jobs.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use jobStatusDescriptor instead')
const JobStatus$json = const {
  '1': 'JobStatus',
  '2': const [
    const {'1': 'Created', '2': 0},
    const {'1': 'Queued', '2': 1},
    const {'1': 'Running', '2': 2},
    const {'1': 'Completed', '2': 3},
    const {'1': 'Failed', '2': 4},
  ],
};

/// Descriptor for `JobStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List jobStatusDescriptor = $convert.base64Decode('CglKb2JTdGF0dXMSCwoHQ3JlYXRlZBAAEgoKBlF1ZXVlZBABEgsKB1J1bm5pbmcQAhINCglDb21wbGV0ZWQQAxIKCgZGYWlsZWQQBA==');
@$core.Deprecated('Use jobUpdateDescriptor instead')
const JobUpdate$json = const {
  '1': 'JobUpdate',
  '2': const [
    const {'1': 'JobCreated', '2': 0},
    const {'1': 'JobStarted', '2': 1},
    const {'1': 'JobProgress', '2': 2},
    const {'1': 'JobCompleted', '2': 3},
    const {'1': 'JobFailed', '2': 4},
  ],
};

/// Descriptor for `JobUpdate`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List jobUpdateDescriptor = $convert.base64Decode('CglKb2JVcGRhdGUSDgoKSm9iQ3JlYXRlZBAAEg4KCkpvYlN0YXJ0ZWQQARIPCgtKb2JQcm9ncmVzcxACEhAKDEpvYkNvbXBsZXRlZBADEg0KCUpvYkZhaWxlZBAE');
@$core.Deprecated('Use jobTypeDescriptor instead')
const JobType$json = const {
  '1': 'JobType',
  '2': const [
    const {'1': 'Sort', '2': 0},
    const {'1': 'Hash', '2': 1},
    const {'1': 'Defragment', '2': 2},
  ],
};

/// Descriptor for `JobType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List jobTypeDescriptor = $convert.base64Decode('CgdKb2JUeXBlEggKBFNvcnQQABIICgRIYXNoEAESDgoKRGVmcmFnbWVudBAC');
@$core.Deprecated('Use jobFilterSortByDescriptor instead')
const JobFilterSortBy$json = const {
  '1': 'JobFilterSortBy',
  '2': const [
    const {'1': 'Id', '2': 0},
    const {'1': 'Name', '2': 1},
    const {'1': 'Type', '2': 2},
    const {'1': 'Status', '2': 3},
    const {'1': 'PercentComplete', '2': 4},
    const {'1': 'IsFinished', '2': 5},
    const {'1': 'QueuedAt', '2': 6},
    const {'1': 'StartedAt', '2': 7},
    const {'1': 'CompletedAt', '2': 8},
  ],
};

/// Descriptor for `JobFilterSortBy`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List jobFilterSortByDescriptor = $convert.base64Decode('Cg9Kb2JGaWx0ZXJTb3J0QnkSBgoCSWQQABIICgROYW1lEAESCAoEVHlwZRACEgoKBlN0YXR1cxADEhMKD1BlcmNlbnRDb21wbGV0ZRAEEg4KCklzRmluaXNoZWQQBRIMCghRdWV1ZWRBdBAGEg0KCVN0YXJ0ZWRBdBAHEg8KC0NvbXBsZXRlZEF0EAg=');
@$core.Deprecated('Use jobStepDescriptor instead')
const JobStep$json = const {
  '1': 'JobStep',
  '2': const [
    const {'1': 'stepId', '3': 1, '4': 1, '5': 9, '10': 'stepId'},
    const {'1': 'jobId', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'jobId', '17': true},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'type', '3': 4, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'status', '3': 5, '4': 1, '5': 14, '6': '.anisort.JobStatus', '10': 'status'},
    const {'1': 'percentComplete', '3': 6, '4': 1, '5': 1, '10': 'percentComplete'},
    const {'1': 'startedAt', '3': 7, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '9': 1, '10': 'startedAt', '17': true},
    const {'1': 'completedAt', '3': 8, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '9': 2, '10': 'completedAt', '17': true},
  ],
  '8': const [
    const {'1': '_jobId'},
    const {'1': '_startedAt'},
    const {'1': '_completedAt'},
  ],
};

/// Descriptor for `JobStep`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List jobStepDescriptor = $convert.base64Decode('CgdKb2JTdGVwEhYKBnN0ZXBJZBgBIAEoCVIGc3RlcElkEhkKBWpvYklkGAIgASgJSABSBWpvYklkiAEBEhIKBG5hbWUYAyABKAlSBG5hbWUSEgoEdHlwZRgEIAEoCVIEdHlwZRIqCgZzdGF0dXMYBSABKA4yEi5hbmlzb3J0LkpvYlN0YXR1c1IGc3RhdHVzEigKD3BlcmNlbnRDb21wbGV0ZRgGIAEoAVIPcGVyY2VudENvbXBsZXRlEj0KCXN0YXJ0ZWRBdBgHIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBIAVIJc3RhcnRlZEF0iAEBEkEKC2NvbXBsZXRlZEF0GAggASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcEgCUgtjb21wbGV0ZWRBdIgBAUIICgZfam9iSWRCDAoKX3N0YXJ0ZWRBdEIOCgxfY29tcGxldGVkQXQ=');
@$core.Deprecated('Use jobUpdateReplyDescriptor instead')
const JobUpdateReply$json = const {
  '1': 'JobUpdateReply',
  '2': const [
    const {'1': 'jobId', '3': 1, '4': 1, '5': 9, '10': 'jobId'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'type', '3': 3, '4': 1, '5': 14, '6': '.anisort.JobType', '10': 'type'},
    const {'1': 'status', '3': 4, '4': 1, '5': 14, '6': '.anisort.JobStatus', '10': 'status'},
    const {'1': 'percentComplete', '3': 5, '4': 1, '5': 1, '10': 'percentComplete'},
    const {'1': 'isFinished', '3': 6, '4': 1, '5': 8, '10': 'isFinished'},
    const {'1': 'queuedAt', '3': 7, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '9': 0, '10': 'queuedAt', '17': true},
    const {'1': 'startedAt', '3': 8, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '9': 1, '10': 'startedAt', '17': true},
    const {'1': 'completedAt', '3': 9, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '9': 2, '10': 'completedAt', '17': true},
    const {'1': 'steps', '3': 10, '4': 3, '5': 11, '6': '.anisort.JobStep', '10': 'steps'},
    const {'1': 'updateType', '3': 11, '4': 1, '5': 14, '6': '.anisort.JobUpdate', '10': 'updateType'},
    const {'1': 'options', '3': 12, '4': 1, '5': 11, '6': '.google.protobuf.Struct', '10': 'options'},
  ],
  '8': const [
    const {'1': '_queuedAt'},
    const {'1': '_startedAt'},
    const {'1': '_completedAt'},
  ],
};

/// Descriptor for `JobUpdateReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List jobUpdateReplyDescriptor = $convert.base64Decode('Cg5Kb2JVcGRhdGVSZXBseRIUCgVqb2JJZBgBIAEoCVIFam9iSWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIkCgR0eXBlGAMgASgOMhAuYW5pc29ydC5Kb2JUeXBlUgR0eXBlEioKBnN0YXR1cxgEIAEoDjISLmFuaXNvcnQuSm9iU3RhdHVzUgZzdGF0dXMSKAoPcGVyY2VudENvbXBsZXRlGAUgASgBUg9wZXJjZW50Q29tcGxldGUSHgoKaXNGaW5pc2hlZBgGIAEoCFIKaXNGaW5pc2hlZBI7CghxdWV1ZWRBdBgHIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBIAFIIcXVldWVkQXSIAQESPQoJc3RhcnRlZEF0GAggASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcEgBUglzdGFydGVkQXSIAQESQQoLY29tcGxldGVkQXQYCSABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wSAJSC2NvbXBsZXRlZEF0iAEBEiYKBXN0ZXBzGAogAygLMhAuYW5pc29ydC5Kb2JTdGVwUgVzdGVwcxIyCgp1cGRhdGVUeXBlGAsgASgOMhIuYW5pc29ydC5Kb2JVcGRhdGVSCnVwZGF0ZVR5cGUSMQoHb3B0aW9ucxgMIAEoCzIXLmdvb2dsZS5wcm90b2J1Zi5TdHJ1Y3RSB29wdGlvbnNCCwoJX3F1ZXVlZEF0QgwKCl9zdGFydGVkQXRCDgoMX2NvbXBsZXRlZEF0');
@$core.Deprecated('Use queueJobRequestDescriptor instead')
const QueueJobRequest$json = const {
  '1': 'QueueJobRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'type', '3': 2, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'options', '3': 11, '4': 1, '5': 11, '6': '.google.protobuf.Struct', '10': 'options'},
  ],
};

/// Descriptor for `QueueJobRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queueJobRequestDescriptor = $convert.base64Decode('Cg9RdWV1ZUpvYlJlcXVlc3QSEgoEbmFtZRgBIAEoCVIEbmFtZRISCgR0eXBlGAIgASgJUgR0eXBlEjEKB29wdGlvbnMYCyABKAsyFy5nb29nbGUucHJvdG9idWYuU3RydWN0UgdvcHRpb25z');
@$core.Deprecated('Use filteredJobsRequestDescriptor instead')
const FilteredJobsRequest$json = const {
  '1': 'FilteredJobsRequest',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.anisort.JobStatus', '9': 0, '10': 'status', '17': true},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '9': 1, '10': 'name', '17': true},
    const {'1': 'type', '3': 3, '4': 1, '5': 14, '6': '.anisort.JobType', '9': 2, '10': 'type', '17': true},
    const {'1': 'startTime', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '9': 3, '10': 'startTime', '17': true},
    const {'1': 'endTime', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '9': 4, '10': 'endTime', '17': true},
    const {'1': 'sortBy', '3': 6, '4': 1, '5': 14, '6': '.anisort.JobFilterSortBy', '9': 5, '10': 'sortBy', '17': true},
    const {'1': 'sort', '3': 7, '4': 1, '5': 14, '6': '.anisort.FilterDirection', '9': 6, '10': 'sort', '17': true},
  ],
  '8': const [
    const {'1': '_status'},
    const {'1': '_name'},
    const {'1': '_type'},
    const {'1': '_startTime'},
    const {'1': '_endTime'},
    const {'1': '_sortBy'},
    const {'1': '_sort'},
  ],
};

/// Descriptor for `FilteredJobsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List filteredJobsRequestDescriptor = $convert.base64Decode('ChNGaWx0ZXJlZEpvYnNSZXF1ZXN0Ei8KBnN0YXR1cxgBIAEoDjISLmFuaXNvcnQuSm9iU3RhdHVzSABSBnN0YXR1c4gBARIXCgRuYW1lGAIgASgJSAFSBG5hbWWIAQESKQoEdHlwZRgDIAEoDjIQLmFuaXNvcnQuSm9iVHlwZUgCUgR0eXBliAEBEj0KCXN0YXJ0VGltZRgEIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBIA1IJc3RhcnRUaW1liAEBEjkKB2VuZFRpbWUYBSABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wSARSB2VuZFRpbWWIAQESNQoGc29ydEJ5GAYgASgOMhguYW5pc29ydC5Kb2JGaWx0ZXJTb3J0QnlIBVIGc29ydEJ5iAEBEjEKBHNvcnQYByABKA4yGC5hbmlzb3J0LkZpbHRlckRpcmVjdGlvbkgGUgRzb3J0iAEBQgkKB19zdGF0dXNCBwoFX25hbWVCBwoFX3R5cGVCDAoKX3N0YXJ0VGltZUIKCghfZW5kVGltZUIJCgdfc29ydEJ5QgcKBV9zb3J0');
@$core.Deprecated('Use jobReplyDescriptor instead')
const JobReply$json = const {
  '1': 'JobReply',
  '2': const [
    const {'1': 'jobId', '3': 1, '4': 1, '5': 9, '10': 'jobId'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'type', '3': 3, '4': 1, '5': 14, '6': '.anisort.JobType', '10': 'type'},
    const {'1': 'status', '3': 4, '4': 1, '5': 14, '6': '.anisort.JobStatus', '10': 'status'},
    const {'1': 'percentComplete', '3': 5, '4': 1, '5': 1, '10': 'percentComplete'},
    const {'1': 'isFinished', '3': 6, '4': 1, '5': 8, '10': 'isFinished'},
    const {'1': 'startedAt', '3': 7, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '9': 0, '10': 'startedAt', '17': true},
    const {'1': 'completedAt', '3': 8, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '9': 1, '10': 'completedAt', '17': true},
    const {'1': 'steps', '3': 9, '4': 3, '5': 11, '6': '.anisort.JobStep', '10': 'steps'},
    const {'1': 'options', '3': 11, '4': 1, '5': 11, '6': '.google.protobuf.Struct', '10': 'options'},
  ],
  '8': const [
    const {'1': '_startedAt'},
    const {'1': '_completedAt'},
  ],
};

/// Descriptor for `JobReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List jobReplyDescriptor = $convert.base64Decode('CghKb2JSZXBseRIUCgVqb2JJZBgBIAEoCVIFam9iSWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIkCgR0eXBlGAMgASgOMhAuYW5pc29ydC5Kb2JUeXBlUgR0eXBlEioKBnN0YXR1cxgEIAEoDjISLmFuaXNvcnQuSm9iU3RhdHVzUgZzdGF0dXMSKAoPcGVyY2VudENvbXBsZXRlGAUgASgBUg9wZXJjZW50Q29tcGxldGUSHgoKaXNGaW5pc2hlZBgGIAEoCFIKaXNGaW5pc2hlZBI9CglzdGFydGVkQXQYByABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wSABSCXN0YXJ0ZWRBdIgBARJBCgtjb21wbGV0ZWRBdBgIIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBIAVILY29tcGxldGVkQXSIAQESJgoFc3RlcHMYCSADKAsyEC5hbmlzb3J0LkpvYlN0ZXBSBXN0ZXBzEjEKB29wdGlvbnMYCyABKAsyFy5nb29nbGUucHJvdG9idWYuU3RydWN0UgdvcHRpb25zQgwKCl9zdGFydGVkQXRCDgoMX2NvbXBsZXRlZEF0');
@$core.Deprecated('Use jobDetailsRequestDescriptor instead')
const JobDetailsRequest$json = const {
  '1': 'JobDetailsRequest',
  '2': const [
    const {'1': 'jobId', '3': 1, '4': 1, '5': 9, '10': 'jobId'},
  ],
};

/// Descriptor for `JobDetailsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List jobDetailsRequestDescriptor = $convert.base64Decode('ChFKb2JEZXRhaWxzUmVxdWVzdBIUCgVqb2JJZBgBIAEoCVIFam9iSWQ=');
@$core.Deprecated('Use jobDetailsReplyDescriptor instead')
const JobDetailsReply$json = const {
  '1': 'JobDetailsReply',
  '2': const [
    const {'1': 'logs', '3': 1, '4': 3, '5': 11, '6': '.anisort.JobLog', '10': 'logs'},
    const {'1': 'steps', '3': 2, '4': 3, '5': 11, '6': '.anisort.JobDetailsReply.JobStepDetails', '10': 'steps'},
  ],
  '3': const [JobDetailsReply_JobStepDetails$json],
};

@$core.Deprecated('Use jobDetailsReplyDescriptor instead')
const JobDetailsReply_JobStepDetails$json = const {
  '1': 'JobStepDetails',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'startedAt', '3': 8, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '9': 0, '10': 'startedAt', '17': true},
    const {'1': 'completedAt', '3': 9, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '9': 1, '10': 'completedAt', '17': true},
    const {'1': 'logs', '3': 3, '4': 3, '5': 11, '6': '.anisort.StepLog', '10': 'logs'},
  ],
  '8': const [
    const {'1': '_startedAt'},
    const {'1': '_completedAt'},
  ],
};

/// Descriptor for `JobDetailsReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List jobDetailsReplyDescriptor = $convert.base64Decode('Cg9Kb2JEZXRhaWxzUmVwbHkSIwoEbG9ncxgBIAMoCzIPLmFuaXNvcnQuSm9iTG9nUgRsb2dzEj0KBXN0ZXBzGAIgAygLMicuYW5pc29ydC5Kb2JEZXRhaWxzUmVwbHkuSm9iU3RlcERldGFpbHNSBXN0ZXBzGuoBCg5Kb2JTdGVwRGV0YWlscxISCgRuYW1lGAEgASgJUgRuYW1lEj0KCXN0YXJ0ZWRBdBgIIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBIAFIJc3RhcnRlZEF0iAEBEkEKC2NvbXBsZXRlZEF0GAkgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcEgBUgtjb21wbGV0ZWRBdIgBARIkCgRsb2dzGAMgAygLMhAuYW5pc29ydC5TdGVwTG9nUgRsb2dzQgwKCl9zdGFydGVkQXRCDgoMX2NvbXBsZXRlZEF0');
