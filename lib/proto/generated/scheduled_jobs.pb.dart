///
//  Generated code. Do not modify.
//  source: scheduled_jobs.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/struct.pb.dart' as $8;

import 'jobs.pbenum.dart' as $3;
import 'scheduled_jobs.pbenum.dart';

export 'scheduled_jobs.pbenum.dart';

class ScheduledJob extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ScheduledJob', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'anisort'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scheduledJobId', protoName: 'scheduledJobId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..e<$3.JobType>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: $3.JobType.SortFile, valueOf: $3.JobType.valueOf, enumValues: $3.JobType.values)
    ..e<ScheduleType>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scheduleType', $pb.PbFieldType.OE, protoName: 'scheduleType', defaultOrMaker: ScheduleType.Timed, valueOf: ScheduleType.valueOf, enumValues: ScheduleType.values)
    ..aOM<$8.Struct>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'options', subBuilder: $8.Struct.create)
    ..aOM<$8.Struct>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scheduleOptions', protoName: 'scheduleOptions', subBuilder: $8.Struct.create)
    ..hasRequiredFields = false
  ;

  ScheduledJob._() : super();
  factory ScheduledJob({
    $core.String? scheduledJobId,
    $core.String? name,
    $3.JobType? type,
    ScheduleType? scheduleType,
    $8.Struct? options,
    $8.Struct? scheduleOptions,
  }) {
    final _result = create();
    if (scheduledJobId != null) {
      _result.scheduledJobId = scheduledJobId;
    }
    if (name != null) {
      _result.name = name;
    }
    if (type != null) {
      _result.type = type;
    }
    if (scheduleType != null) {
      _result.scheduleType = scheduleType;
    }
    if (options != null) {
      _result.options = options;
    }
    if (scheduleOptions != null) {
      _result.scheduleOptions = scheduleOptions;
    }
    return _result;
  }
  factory ScheduledJob.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ScheduledJob.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ScheduledJob clone() => ScheduledJob()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ScheduledJob copyWith(void Function(ScheduledJob) updates) => super.copyWith((message) => updates(message as ScheduledJob)) as ScheduledJob; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ScheduledJob create() => ScheduledJob._();
  ScheduledJob createEmptyInstance() => create();
  static $pb.PbList<ScheduledJob> createRepeated() => $pb.PbList<ScheduledJob>();
  @$core.pragma('dart2js:noInline')
  static ScheduledJob getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ScheduledJob>(create);
  static ScheduledJob? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get scheduledJobId => $_getSZ(0);
  @$pb.TagNumber(1)
  set scheduledJobId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasScheduledJobId() => $_has(0);
  @$pb.TagNumber(1)
  void clearScheduledJobId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $3.JobType get type => $_getN(2);
  @$pb.TagNumber(3)
  set type($3.JobType v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => clearField(3);

  @$pb.TagNumber(4)
  ScheduleType get scheduleType => $_getN(3);
  @$pb.TagNumber(4)
  set scheduleType(ScheduleType v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasScheduleType() => $_has(3);
  @$pb.TagNumber(4)
  void clearScheduleType() => clearField(4);

  @$pb.TagNumber(5)
  $8.Struct get options => $_getN(4);
  @$pb.TagNumber(5)
  set options($8.Struct v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasOptions() => $_has(4);
  @$pb.TagNumber(5)
  void clearOptions() => clearField(5);
  @$pb.TagNumber(5)
  $8.Struct ensureOptions() => $_ensure(4);

  @$pb.TagNumber(6)
  $8.Struct get scheduleOptions => $_getN(5);
  @$pb.TagNumber(6)
  set scheduleOptions($8.Struct v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasScheduleOptions() => $_has(5);
  @$pb.TagNumber(6)
  void clearScheduleOptions() => clearField(6);
  @$pb.TagNumber(6)
  $8.Struct ensureScheduleOptions() => $_ensure(5);
}

