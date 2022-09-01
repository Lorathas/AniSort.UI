///
//  Generated code. Do not modify.
//  source: jobs.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/timestamp.pb.dart' as $3;
import 'google/protobuf/struct.pb.dart' as $2;
import 'logs.pb.dart' as $4;

import 'jobs.pbenum.dart';
import 'common.pbenum.dart' as $1;

export 'jobs.pbenum.dart';

class JobStep extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'JobStep', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'anisort'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stepId', protoName: 'stepId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'jobId', protoName: 'jobId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type')
    ..e<JobStatus>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: JobStatus.Created, valueOf: JobStatus.valueOf, enumValues: JobStatus.values)
    ..a<$core.double>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'percentComplete', $pb.PbFieldType.OD, protoName: 'percentComplete')
    ..aOM<$3.Timestamp>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startedAt', protoName: 'startedAt', subBuilder: $3.Timestamp.create)
    ..aOM<$3.Timestamp>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'completedAt', protoName: 'completedAt', subBuilder: $3.Timestamp.create)
    ..hasRequiredFields = false
  ;

  JobStep._() : super();
  factory JobStep({
    $core.String? stepId,
    $core.String? jobId,
    $core.String? name,
    $core.String? type,
    JobStatus? status,
    $core.double? percentComplete,
    $3.Timestamp? startedAt,
    $3.Timestamp? completedAt,
  }) {
    final _result = create();
    if (stepId != null) {
      _result.stepId = stepId;
    }
    if (jobId != null) {
      _result.jobId = jobId;
    }
    if (name != null) {
      _result.name = name;
    }
    if (type != null) {
      _result.type = type;
    }
    if (status != null) {
      _result.status = status;
    }
    if (percentComplete != null) {
      _result.percentComplete = percentComplete;
    }
    if (startedAt != null) {
      _result.startedAt = startedAt;
    }
    if (completedAt != null) {
      _result.completedAt = completedAt;
    }
    return _result;
  }
  factory JobStep.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory JobStep.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  JobStep clone() => JobStep()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  JobStep copyWith(void Function(JobStep) updates) => super.copyWith((message) => updates(message as JobStep)) as JobStep; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static JobStep create() => JobStep._();
  JobStep createEmptyInstance() => create();
  static $pb.PbList<JobStep> createRepeated() => $pb.PbList<JobStep>();
  @$core.pragma('dart2js:noInline')
  static JobStep getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<JobStep>(create);
  static JobStep? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get stepId => $_getSZ(0);
  @$pb.TagNumber(1)
  set stepId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStepId() => $_has(0);
  @$pb.TagNumber(1)
  void clearStepId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get jobId => $_getSZ(1);
  @$pb.TagNumber(2)
  set jobId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasJobId() => $_has(1);
  @$pb.TagNumber(2)
  void clearJobId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get type => $_getSZ(3);
  @$pb.TagNumber(4)
  set type($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasType() => $_has(3);
  @$pb.TagNumber(4)
  void clearType() => clearField(4);

  @$pb.TagNumber(5)
  JobStatus get status => $_getN(4);
  @$pb.TagNumber(5)
  set status(JobStatus v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasStatus() => $_has(4);
  @$pb.TagNumber(5)
  void clearStatus() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get percentComplete => $_getN(5);
  @$pb.TagNumber(6)
  set percentComplete($core.double v) { $_setDouble(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPercentComplete() => $_has(5);
  @$pb.TagNumber(6)
  void clearPercentComplete() => clearField(6);

  @$pb.TagNumber(7)
  $3.Timestamp get startedAt => $_getN(6);
  @$pb.TagNumber(7)
  set startedAt($3.Timestamp v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasStartedAt() => $_has(6);
  @$pb.TagNumber(7)
  void clearStartedAt() => clearField(7);
  @$pb.TagNumber(7)
  $3.Timestamp ensureStartedAt() => $_ensure(6);

  @$pb.TagNumber(8)
  $3.Timestamp get completedAt => $_getN(7);
  @$pb.TagNumber(8)
  set completedAt($3.Timestamp v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasCompletedAt() => $_has(7);
  @$pb.TagNumber(8)
  void clearCompletedAt() => clearField(8);
  @$pb.TagNumber(8)
  $3.Timestamp ensureCompletedAt() => $_ensure(7);
}

class JobUpdateReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'JobUpdateReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'anisort'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'jobId', protoName: 'jobId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..e<JobType>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: JobType.Sort, valueOf: JobType.valueOf, enumValues: JobType.values)
    ..e<JobStatus>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: JobStatus.Created, valueOf: JobStatus.valueOf, enumValues: JobStatus.values)
    ..a<$core.double>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'percentComplete', $pb.PbFieldType.OD, protoName: 'percentComplete')
    ..aOB(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isFinished', protoName: 'isFinished')
    ..aOM<$3.Timestamp>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'queuedAt', protoName: 'queuedAt', subBuilder: $3.Timestamp.create)
    ..aOM<$3.Timestamp>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startedAt', protoName: 'startedAt', subBuilder: $3.Timestamp.create)
    ..aOM<$3.Timestamp>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'completedAt', protoName: 'completedAt', subBuilder: $3.Timestamp.create)
    ..pc<JobStep>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'steps', $pb.PbFieldType.PM, subBuilder: JobStep.create)
    ..e<JobUpdate>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateType', $pb.PbFieldType.OE, protoName: 'updateType', defaultOrMaker: JobUpdate.JobCreated, valueOf: JobUpdate.valueOf, enumValues: JobUpdate.values)
    ..aOM<$2.Struct>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'options', subBuilder: $2.Struct.create)
    ..hasRequiredFields = false
  ;

  JobUpdateReply._() : super();
  factory JobUpdateReply({
    $core.String? jobId,
    $core.String? name,
    JobType? type,
    JobStatus? status,
    $core.double? percentComplete,
    $core.bool? isFinished,
    $3.Timestamp? queuedAt,
    $3.Timestamp? startedAt,
    $3.Timestamp? completedAt,
    $core.Iterable<JobStep>? steps,
    JobUpdate? updateType,
    $2.Struct? options,
  }) {
    final _result = create();
    if (jobId != null) {
      _result.jobId = jobId;
    }
    if (name != null) {
      _result.name = name;
    }
    if (type != null) {
      _result.type = type;
    }
    if (status != null) {
      _result.status = status;
    }
    if (percentComplete != null) {
      _result.percentComplete = percentComplete;
    }
    if (isFinished != null) {
      _result.isFinished = isFinished;
    }
    if (queuedAt != null) {
      _result.queuedAt = queuedAt;
    }
    if (startedAt != null) {
      _result.startedAt = startedAt;
    }
    if (completedAt != null) {
      _result.completedAt = completedAt;
    }
    if (steps != null) {
      _result.steps.addAll(steps);
    }
    if (updateType != null) {
      _result.updateType = updateType;
    }
    if (options != null) {
      _result.options = options;
    }
    return _result;
  }
  factory JobUpdateReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory JobUpdateReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  JobUpdateReply clone() => JobUpdateReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  JobUpdateReply copyWith(void Function(JobUpdateReply) updates) => super.copyWith((message) => updates(message as JobUpdateReply)) as JobUpdateReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static JobUpdateReply create() => JobUpdateReply._();
  JobUpdateReply createEmptyInstance() => create();
  static $pb.PbList<JobUpdateReply> createRepeated() => $pb.PbList<JobUpdateReply>();
  @$core.pragma('dart2js:noInline')
  static JobUpdateReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<JobUpdateReply>(create);
  static JobUpdateReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get jobId => $_getSZ(0);
  @$pb.TagNumber(1)
  set jobId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasJobId() => $_has(0);
  @$pb.TagNumber(1)
  void clearJobId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  JobType get type => $_getN(2);
  @$pb.TagNumber(3)
  set type(JobType v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => clearField(3);

  @$pb.TagNumber(4)
  JobStatus get status => $_getN(3);
  @$pb.TagNumber(4)
  set status(JobStatus v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasStatus() => $_has(3);
  @$pb.TagNumber(4)
  void clearStatus() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get percentComplete => $_getN(4);
  @$pb.TagNumber(5)
  set percentComplete($core.double v) { $_setDouble(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPercentComplete() => $_has(4);
  @$pb.TagNumber(5)
  void clearPercentComplete() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get isFinished => $_getBF(5);
  @$pb.TagNumber(6)
  set isFinished($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasIsFinished() => $_has(5);
  @$pb.TagNumber(6)
  void clearIsFinished() => clearField(6);

  @$pb.TagNumber(7)
  $3.Timestamp get queuedAt => $_getN(6);
  @$pb.TagNumber(7)
  set queuedAt($3.Timestamp v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasQueuedAt() => $_has(6);
  @$pb.TagNumber(7)
  void clearQueuedAt() => clearField(7);
  @$pb.TagNumber(7)
  $3.Timestamp ensureQueuedAt() => $_ensure(6);

  @$pb.TagNumber(8)
  $3.Timestamp get startedAt => $_getN(7);
  @$pb.TagNumber(8)
  set startedAt($3.Timestamp v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasStartedAt() => $_has(7);
  @$pb.TagNumber(8)
  void clearStartedAt() => clearField(8);
  @$pb.TagNumber(8)
  $3.Timestamp ensureStartedAt() => $_ensure(7);

  @$pb.TagNumber(9)
  $3.Timestamp get completedAt => $_getN(8);
  @$pb.TagNumber(9)
  set completedAt($3.Timestamp v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasCompletedAt() => $_has(8);
  @$pb.TagNumber(9)
  void clearCompletedAt() => clearField(9);
  @$pb.TagNumber(9)
  $3.Timestamp ensureCompletedAt() => $_ensure(8);

  @$pb.TagNumber(10)
  $core.List<JobStep> get steps => $_getList(9);

  @$pb.TagNumber(11)
  JobUpdate get updateType => $_getN(10);
  @$pb.TagNumber(11)
  set updateType(JobUpdate v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasUpdateType() => $_has(10);
  @$pb.TagNumber(11)
  void clearUpdateType() => clearField(11);

  @$pb.TagNumber(12)
  $2.Struct get options => $_getN(11);
  @$pb.TagNumber(12)
  set options($2.Struct v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasOptions() => $_has(11);
  @$pb.TagNumber(12)
  void clearOptions() => clearField(12);
  @$pb.TagNumber(12)
  $2.Struct ensureOptions() => $_ensure(11);
}

class QueueJobRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueueJobRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'anisort'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type')
    ..aOM<$2.Struct>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'options', subBuilder: $2.Struct.create)
    ..hasRequiredFields = false
  ;

  QueueJobRequest._() : super();
  factory QueueJobRequest({
    $core.String? name,
    $core.String? type,
    $2.Struct? options,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (type != null) {
      _result.type = type;
    }
    if (options != null) {
      _result.options = options;
    }
    return _result;
  }
  factory QueueJobRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueueJobRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueueJobRequest clone() => QueueJobRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueueJobRequest copyWith(void Function(QueueJobRequest) updates) => super.copyWith((message) => updates(message as QueueJobRequest)) as QueueJobRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueueJobRequest create() => QueueJobRequest._();
  QueueJobRequest createEmptyInstance() => create();
  static $pb.PbList<QueueJobRequest> createRepeated() => $pb.PbList<QueueJobRequest>();
  @$core.pragma('dart2js:noInline')
  static QueueJobRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueueJobRequest>(create);
  static QueueJobRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get type => $_getSZ(1);
  @$pb.TagNumber(2)
  set type($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  @$pb.TagNumber(11)
  $2.Struct get options => $_getN(2);
  @$pb.TagNumber(11)
  set options($2.Struct v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasOptions() => $_has(2);
  @$pb.TagNumber(11)
  void clearOptions() => clearField(11);
  @$pb.TagNumber(11)
  $2.Struct ensureOptions() => $_ensure(2);
}

class FilteredJobsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FilteredJobsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'anisort'), createEmptyInstance: create)
    ..e<JobStatus>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: JobStatus.Created, valueOf: JobStatus.valueOf, enumValues: JobStatus.values)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..e<JobType>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: JobType.Sort, valueOf: JobType.valueOf, enumValues: JobType.values)
    ..aOM<$3.Timestamp>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startTime', protoName: 'startTime', subBuilder: $3.Timestamp.create)
    ..aOM<$3.Timestamp>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'endTime', protoName: 'endTime', subBuilder: $3.Timestamp.create)
    ..e<JobFilterSortBy>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sortBy', $pb.PbFieldType.OE, protoName: 'sortBy', defaultOrMaker: JobFilterSortBy.Id, valueOf: JobFilterSortBy.valueOf, enumValues: JobFilterSortBy.values)
    ..e<$1.FilterDirection>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sort', $pb.PbFieldType.OE, defaultOrMaker: $1.FilterDirection.Ascending, valueOf: $1.FilterDirection.valueOf, enumValues: $1.FilterDirection.values)
    ..hasRequiredFields = false
  ;

  FilteredJobsRequest._() : super();
  factory FilteredJobsRequest({
    JobStatus? status,
    $core.String? name,
    JobType? type,
    $3.Timestamp? startTime,
    $3.Timestamp? endTime,
    JobFilterSortBy? sortBy,
    $1.FilterDirection? sort,
  }) {
    final _result = create();
    if (status != null) {
      _result.status = status;
    }
    if (name != null) {
      _result.name = name;
    }
    if (type != null) {
      _result.type = type;
    }
    if (startTime != null) {
      _result.startTime = startTime;
    }
    if (endTime != null) {
      _result.endTime = endTime;
    }
    if (sortBy != null) {
      _result.sortBy = sortBy;
    }
    if (sort != null) {
      _result.sort = sort;
    }
    return _result;
  }
  factory FilteredJobsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FilteredJobsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FilteredJobsRequest clone() => FilteredJobsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FilteredJobsRequest copyWith(void Function(FilteredJobsRequest) updates) => super.copyWith((message) => updates(message as FilteredJobsRequest)) as FilteredJobsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FilteredJobsRequest create() => FilteredJobsRequest._();
  FilteredJobsRequest createEmptyInstance() => create();
  static $pb.PbList<FilteredJobsRequest> createRepeated() => $pb.PbList<FilteredJobsRequest>();
  @$core.pragma('dart2js:noInline')
  static FilteredJobsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FilteredJobsRequest>(create);
  static FilteredJobsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  JobStatus get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(JobStatus v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  JobType get type => $_getN(2);
  @$pb.TagNumber(3)
  set type(JobType v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => clearField(3);

  @$pb.TagNumber(4)
  $3.Timestamp get startTime => $_getN(3);
  @$pb.TagNumber(4)
  set startTime($3.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasStartTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearStartTime() => clearField(4);
  @$pb.TagNumber(4)
  $3.Timestamp ensureStartTime() => $_ensure(3);

  @$pb.TagNumber(5)
  $3.Timestamp get endTime => $_getN(4);
  @$pb.TagNumber(5)
  set endTime($3.Timestamp v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasEndTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearEndTime() => clearField(5);
  @$pb.TagNumber(5)
  $3.Timestamp ensureEndTime() => $_ensure(4);

  @$pb.TagNumber(6)
  JobFilterSortBy get sortBy => $_getN(5);
  @$pb.TagNumber(6)
  set sortBy(JobFilterSortBy v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasSortBy() => $_has(5);
  @$pb.TagNumber(6)
  void clearSortBy() => clearField(6);

  @$pb.TagNumber(7)
  $1.FilterDirection get sort => $_getN(6);
  @$pb.TagNumber(7)
  set sort($1.FilterDirection v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasSort() => $_has(6);
  @$pb.TagNumber(7)
  void clearSort() => clearField(7);
}

class JobReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'JobReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'anisort'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'jobId', protoName: 'jobId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..e<JobType>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: JobType.Sort, valueOf: JobType.valueOf, enumValues: JobType.values)
    ..e<JobStatus>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: JobStatus.Created, valueOf: JobStatus.valueOf, enumValues: JobStatus.values)
    ..a<$core.double>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'percentComplete', $pb.PbFieldType.OD, protoName: 'percentComplete')
    ..aOB(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isFinished', protoName: 'isFinished')
    ..aOM<$3.Timestamp>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startedAt', protoName: 'startedAt', subBuilder: $3.Timestamp.create)
    ..aOM<$3.Timestamp>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'completedAt', protoName: 'completedAt', subBuilder: $3.Timestamp.create)
    ..pc<JobStep>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'steps', $pb.PbFieldType.PM, subBuilder: JobStep.create)
    ..aOM<$2.Struct>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'options', subBuilder: $2.Struct.create)
    ..hasRequiredFields = false
  ;

  JobReply._() : super();
  factory JobReply({
    $core.String? jobId,
    $core.String? name,
    JobType? type,
    JobStatus? status,
    $core.double? percentComplete,
    $core.bool? isFinished,
    $3.Timestamp? startedAt,
    $3.Timestamp? completedAt,
    $core.Iterable<JobStep>? steps,
    $2.Struct? options,
  }) {
    final _result = create();
    if (jobId != null) {
      _result.jobId = jobId;
    }
    if (name != null) {
      _result.name = name;
    }
    if (type != null) {
      _result.type = type;
    }
    if (status != null) {
      _result.status = status;
    }
    if (percentComplete != null) {
      _result.percentComplete = percentComplete;
    }
    if (isFinished != null) {
      _result.isFinished = isFinished;
    }
    if (startedAt != null) {
      _result.startedAt = startedAt;
    }
    if (completedAt != null) {
      _result.completedAt = completedAt;
    }
    if (steps != null) {
      _result.steps.addAll(steps);
    }
    if (options != null) {
      _result.options = options;
    }
    return _result;
  }
  factory JobReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory JobReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  JobReply clone() => JobReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  JobReply copyWith(void Function(JobReply) updates) => super.copyWith((message) => updates(message as JobReply)) as JobReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static JobReply create() => JobReply._();
  JobReply createEmptyInstance() => create();
  static $pb.PbList<JobReply> createRepeated() => $pb.PbList<JobReply>();
  @$core.pragma('dart2js:noInline')
  static JobReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<JobReply>(create);
  static JobReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get jobId => $_getSZ(0);
  @$pb.TagNumber(1)
  set jobId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasJobId() => $_has(0);
  @$pb.TagNumber(1)
  void clearJobId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  JobType get type => $_getN(2);
  @$pb.TagNumber(3)
  set type(JobType v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => clearField(3);

  @$pb.TagNumber(4)
  JobStatus get status => $_getN(3);
  @$pb.TagNumber(4)
  set status(JobStatus v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasStatus() => $_has(3);
  @$pb.TagNumber(4)
  void clearStatus() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get percentComplete => $_getN(4);
  @$pb.TagNumber(5)
  set percentComplete($core.double v) { $_setDouble(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPercentComplete() => $_has(4);
  @$pb.TagNumber(5)
  void clearPercentComplete() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get isFinished => $_getBF(5);
  @$pb.TagNumber(6)
  set isFinished($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasIsFinished() => $_has(5);
  @$pb.TagNumber(6)
  void clearIsFinished() => clearField(6);

  @$pb.TagNumber(7)
  $3.Timestamp get startedAt => $_getN(6);
  @$pb.TagNumber(7)
  set startedAt($3.Timestamp v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasStartedAt() => $_has(6);
  @$pb.TagNumber(7)
  void clearStartedAt() => clearField(7);
  @$pb.TagNumber(7)
  $3.Timestamp ensureStartedAt() => $_ensure(6);

  @$pb.TagNumber(8)
  $3.Timestamp get completedAt => $_getN(7);
  @$pb.TagNumber(8)
  set completedAt($3.Timestamp v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasCompletedAt() => $_has(7);
  @$pb.TagNumber(8)
  void clearCompletedAt() => clearField(8);
  @$pb.TagNumber(8)
  $3.Timestamp ensureCompletedAt() => $_ensure(7);

  @$pb.TagNumber(9)
  $core.List<JobStep> get steps => $_getList(8);

  @$pb.TagNumber(11)
  $2.Struct get options => $_getN(9);
  @$pb.TagNumber(11)
  set options($2.Struct v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasOptions() => $_has(9);
  @$pb.TagNumber(11)
  void clearOptions() => clearField(11);
  @$pb.TagNumber(11)
  $2.Struct ensureOptions() => $_ensure(9);
}

class JobDetailsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'JobDetailsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'anisort'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'jobId', protoName: 'jobId')
    ..hasRequiredFields = false
  ;

  JobDetailsRequest._() : super();
  factory JobDetailsRequest({
    $core.String? jobId,
  }) {
    final _result = create();
    if (jobId != null) {
      _result.jobId = jobId;
    }
    return _result;
  }
  factory JobDetailsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory JobDetailsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  JobDetailsRequest clone() => JobDetailsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  JobDetailsRequest copyWith(void Function(JobDetailsRequest) updates) => super.copyWith((message) => updates(message as JobDetailsRequest)) as JobDetailsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static JobDetailsRequest create() => JobDetailsRequest._();
  JobDetailsRequest createEmptyInstance() => create();
  static $pb.PbList<JobDetailsRequest> createRepeated() => $pb.PbList<JobDetailsRequest>();
  @$core.pragma('dart2js:noInline')
  static JobDetailsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<JobDetailsRequest>(create);
  static JobDetailsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get jobId => $_getSZ(0);
  @$pb.TagNumber(1)
  set jobId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasJobId() => $_has(0);
  @$pb.TagNumber(1)
  void clearJobId() => clearField(1);
}

class JobDetailsReply_JobStepDetails extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'JobDetailsReply.JobStepDetails', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'anisort'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..pc<$4.StepLog>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'logs', $pb.PbFieldType.PM, subBuilder: $4.StepLog.create)
    ..aOM<$3.Timestamp>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startedAt', protoName: 'startedAt', subBuilder: $3.Timestamp.create)
    ..aOM<$3.Timestamp>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'completedAt', protoName: 'completedAt', subBuilder: $3.Timestamp.create)
    ..hasRequiredFields = false
  ;

  JobDetailsReply_JobStepDetails._() : super();
  factory JobDetailsReply_JobStepDetails({
    $core.String? name,
    $core.Iterable<$4.StepLog>? logs,
    $3.Timestamp? startedAt,
    $3.Timestamp? completedAt,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (logs != null) {
      _result.logs.addAll(logs);
    }
    if (startedAt != null) {
      _result.startedAt = startedAt;
    }
    if (completedAt != null) {
      _result.completedAt = completedAt;
    }
    return _result;
  }
  factory JobDetailsReply_JobStepDetails.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory JobDetailsReply_JobStepDetails.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  JobDetailsReply_JobStepDetails clone() => JobDetailsReply_JobStepDetails()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  JobDetailsReply_JobStepDetails copyWith(void Function(JobDetailsReply_JobStepDetails) updates) => super.copyWith((message) => updates(message as JobDetailsReply_JobStepDetails)) as JobDetailsReply_JobStepDetails; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static JobDetailsReply_JobStepDetails create() => JobDetailsReply_JobStepDetails._();
  JobDetailsReply_JobStepDetails createEmptyInstance() => create();
  static $pb.PbList<JobDetailsReply_JobStepDetails> createRepeated() => $pb.PbList<JobDetailsReply_JobStepDetails>();
  @$core.pragma('dart2js:noInline')
  static JobDetailsReply_JobStepDetails getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<JobDetailsReply_JobStepDetails>(create);
  static JobDetailsReply_JobStepDetails? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(3)
  $core.List<$4.StepLog> get logs => $_getList(1);

  @$pb.TagNumber(8)
  $3.Timestamp get startedAt => $_getN(2);
  @$pb.TagNumber(8)
  set startedAt($3.Timestamp v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasStartedAt() => $_has(2);
  @$pb.TagNumber(8)
  void clearStartedAt() => clearField(8);
  @$pb.TagNumber(8)
  $3.Timestamp ensureStartedAt() => $_ensure(2);

  @$pb.TagNumber(9)
  $3.Timestamp get completedAt => $_getN(3);
  @$pb.TagNumber(9)
  set completedAt($3.Timestamp v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasCompletedAt() => $_has(3);
  @$pb.TagNumber(9)
  void clearCompletedAt() => clearField(9);
  @$pb.TagNumber(9)
  $3.Timestamp ensureCompletedAt() => $_ensure(3);
}

class JobDetailsReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'JobDetailsReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'anisort'), createEmptyInstance: create)
    ..pc<$4.JobLog>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'logs', $pb.PbFieldType.PM, subBuilder: $4.JobLog.create)
    ..pc<JobDetailsReply_JobStepDetails>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'steps', $pb.PbFieldType.PM, subBuilder: JobDetailsReply_JobStepDetails.create)
    ..hasRequiredFields = false
  ;

  JobDetailsReply._() : super();
  factory JobDetailsReply({
    $core.Iterable<$4.JobLog>? logs,
    $core.Iterable<JobDetailsReply_JobStepDetails>? steps,
  }) {
    final _result = create();
    if (logs != null) {
      _result.logs.addAll(logs);
    }
    if (steps != null) {
      _result.steps.addAll(steps);
    }
    return _result;
  }
  factory JobDetailsReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory JobDetailsReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  JobDetailsReply clone() => JobDetailsReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  JobDetailsReply copyWith(void Function(JobDetailsReply) updates) => super.copyWith((message) => updates(message as JobDetailsReply)) as JobDetailsReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static JobDetailsReply create() => JobDetailsReply._();
  JobDetailsReply createEmptyInstance() => create();
  static $pb.PbList<JobDetailsReply> createRepeated() => $pb.PbList<JobDetailsReply>();
  @$core.pragma('dart2js:noInline')
  static JobDetailsReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<JobDetailsReply>(create);
  static JobDetailsReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$4.JobLog> get logs => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<JobDetailsReply_JobStepDetails> get steps => $_getList(1);
}

