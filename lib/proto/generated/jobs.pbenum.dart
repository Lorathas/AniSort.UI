///
//  Generated code. Do not modify.
//  source: jobs.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class JobStatus extends $pb.ProtobufEnum {
  static const JobStatus Created = JobStatus._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Created');
  static const JobStatus Queued = JobStatus._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Queued');
  static const JobStatus Running = JobStatus._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Running');
  static const JobStatus Completed = JobStatus._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Completed');
  static const JobStatus Failed = JobStatus._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Failed');

  static const $core.List<JobStatus> values = <JobStatus> [
    Created,
    Queued,
    Running,
    Completed,
    Failed,
  ];

  static final $core.Map<$core.int, JobStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static JobStatus? valueOf($core.int value) => _byValue[value];

  const JobStatus._($core.int v, $core.String n) : super(v, n);
}

class JobUpdate extends $pb.ProtobufEnum {
  static const JobUpdate JobCreated = JobUpdate._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'JobCreated');
  static const JobUpdate JobStarted = JobUpdate._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'JobStarted');
  static const JobUpdate JobProgress = JobUpdate._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'JobProgress');
  static const JobUpdate JobCompleted = JobUpdate._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'JobCompleted');
  static const JobUpdate JobFailed = JobUpdate._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'JobFailed');

  static const $core.List<JobUpdate> values = <JobUpdate> [
    JobCreated,
    JobStarted,
    JobProgress,
    JobCompleted,
    JobFailed,
  ];

  static final $core.Map<$core.int, JobUpdate> _byValue = $pb.ProtobufEnum.initByValue(values);
  static JobUpdate? valueOf($core.int value) => _byValue[value];

  const JobUpdate._($core.int v, $core.String n) : super(v, n);
}

class JobType extends $pb.ProtobufEnum {
  static const JobType Sort = JobType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Sort');
  static const JobType Hash = JobType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Hash');
  static const JobType Defragment = JobType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Defragment');

  static const $core.List<JobType> values = <JobType> [
    Sort,
    Hash,
    Defragment,
  ];

  static final $core.Map<$core.int, JobType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static JobType? valueOf($core.int value) => _byValue[value];

  const JobType._($core.int v, $core.String n) : super(v, n);
}

class JobFilterSortBy extends $pb.ProtobufEnum {
  static const JobFilterSortBy Id = JobFilterSortBy._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Id');
  static const JobFilterSortBy Name = JobFilterSortBy._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Name');
  static const JobFilterSortBy Type = JobFilterSortBy._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Type');
  static const JobFilterSortBy Status = JobFilterSortBy._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Status');
  static const JobFilterSortBy PercentComplete = JobFilterSortBy._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PercentComplete');
  static const JobFilterSortBy IsFinished = JobFilterSortBy._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'IsFinished');
  static const JobFilterSortBy QueuedAt = JobFilterSortBy._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'QueuedAt');
  static const JobFilterSortBy StartedAt = JobFilterSortBy._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'StartedAt');
  static const JobFilterSortBy CompletedAt = JobFilterSortBy._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CompletedAt');

  static const $core.List<JobFilterSortBy> values = <JobFilterSortBy> [
    Id,
    Name,
    Type,
    Status,
    PercentComplete,
    IsFinished,
    QueuedAt,
    StartedAt,
    CompletedAt,
  ];

  static final $core.Map<$core.int, JobFilterSortBy> _byValue = $pb.ProtobufEnum.initByValue(values);
  static JobFilterSortBy? valueOf($core.int value) => _byValue[value];

  const JobFilterSortBy._($core.int v, $core.String n) : super(v, n);
}

