///
//  Generated code. Do not modify.
//  source: logs.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/struct.pb.dart' as $2;
import 'google/protobuf/timestamp.pb.dart' as $3;

class JobLog extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'JobLog', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'anisort'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'jobLogId', protoName: 'jobLogId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'jobId', protoName: 'jobId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..aOM<$2.Struct>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'params', subBuilder: $2.Struct.create)
    ..aOM<$3.Timestamp>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', protoName: 'createdAt', subBuilder: $3.Timestamp.create)
    ..hasRequiredFields = false
  ;

  JobLog._() : super();
  factory JobLog({
    $core.String? jobLogId,
    $core.String? jobId,
    $core.String? message,
    $2.Struct? params,
    $3.Timestamp? createdAt,
  }) {
    final _result = create();
    if (jobLogId != null) {
      _result.jobLogId = jobLogId;
    }
    if (jobId != null) {
      _result.jobId = jobId;
    }
    if (message != null) {
      _result.message = message;
    }
    if (params != null) {
      _result.params = params;
    }
    if (createdAt != null) {
      _result.createdAt = createdAt;
    }
    return _result;
  }
  factory JobLog.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory JobLog.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  JobLog clone() => JobLog()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  JobLog copyWith(void Function(JobLog) updates) => super.copyWith((message) => updates(message as JobLog)) as JobLog; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static JobLog create() => JobLog._();
  JobLog createEmptyInstance() => create();
  static $pb.PbList<JobLog> createRepeated() => $pb.PbList<JobLog>();
  @$core.pragma('dart2js:noInline')
  static JobLog getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<JobLog>(create);
  static JobLog? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get jobLogId => $_getSZ(0);
  @$pb.TagNumber(1)
  set jobLogId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasJobLogId() => $_has(0);
  @$pb.TagNumber(1)
  void clearJobLogId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get jobId => $_getSZ(1);
  @$pb.TagNumber(2)
  set jobId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasJobId() => $_has(1);
  @$pb.TagNumber(2)
  void clearJobId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get message => $_getSZ(2);
  @$pb.TagNumber(3)
  set message($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearMessage() => clearField(3);

  @$pb.TagNumber(4)
  $2.Struct get params => $_getN(3);
  @$pb.TagNumber(4)
  set params($2.Struct v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasParams() => $_has(3);
  @$pb.TagNumber(4)
  void clearParams() => clearField(4);
  @$pb.TagNumber(4)
  $2.Struct ensureParams() => $_ensure(3);

  @$pb.TagNumber(5)
  $3.Timestamp get createdAt => $_getN(4);
  @$pb.TagNumber(5)
  set createdAt($3.Timestamp v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasCreatedAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearCreatedAt() => clearField(5);
  @$pb.TagNumber(5)
  $3.Timestamp ensureCreatedAt() => $_ensure(4);
}

class StepLog extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StepLog', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'anisort'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stepLogId', protoName: 'stepLogId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stepId', protoName: 'stepId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..aOM<$2.Struct>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'params', subBuilder: $2.Struct.create)
    ..aOM<$3.Timestamp>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', protoName: 'createdAt', subBuilder: $3.Timestamp.create)
    ..hasRequiredFields = false
  ;

  StepLog._() : super();
  factory StepLog({
    $core.String? stepLogId,
    $core.String? stepId,
    $core.String? message,
    $2.Struct? params,
    $3.Timestamp? createdAt,
  }) {
    final _result = create();
    if (stepLogId != null) {
      _result.stepLogId = stepLogId;
    }
    if (stepId != null) {
      _result.stepId = stepId;
    }
    if (message != null) {
      _result.message = message;
    }
    if (params != null) {
      _result.params = params;
    }
    if (createdAt != null) {
      _result.createdAt = createdAt;
    }
    return _result;
  }
  factory StepLog.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StepLog.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StepLog clone() => StepLog()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StepLog copyWith(void Function(StepLog) updates) => super.copyWith((message) => updates(message as StepLog)) as StepLog; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StepLog create() => StepLog._();
  StepLog createEmptyInstance() => create();
  static $pb.PbList<StepLog> createRepeated() => $pb.PbList<StepLog>();
  @$core.pragma('dart2js:noInline')
  static StepLog getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StepLog>(create);
  static StepLog? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get stepLogId => $_getSZ(0);
  @$pb.TagNumber(1)
  set stepLogId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStepLogId() => $_has(0);
  @$pb.TagNumber(1)
  void clearStepLogId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get stepId => $_getSZ(1);
  @$pb.TagNumber(2)
  set stepId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStepId() => $_has(1);
  @$pb.TagNumber(2)
  void clearStepId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get message => $_getSZ(2);
  @$pb.TagNumber(3)
  set message($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearMessage() => clearField(3);

  @$pb.TagNumber(4)
  $2.Struct get params => $_getN(3);
  @$pb.TagNumber(4)
  set params($2.Struct v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasParams() => $_has(3);
  @$pb.TagNumber(4)
  void clearParams() => clearField(4);
  @$pb.TagNumber(4)
  $2.Struct ensureParams() => $_ensure(3);

  @$pb.TagNumber(5)
  $3.Timestamp get createdAt => $_getN(4);
  @$pb.TagNumber(5)
  set createdAt($3.Timestamp v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasCreatedAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearCreatedAt() => clearField(5);
  @$pb.TagNumber(5)
  $3.Timestamp ensureCreatedAt() => $_ensure(4);
}

