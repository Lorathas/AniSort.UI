///
//  Generated code. Do not modify.
//  source: scheduled_jobs.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class ScheduleType extends $pb.ProtobufEnum {
  static const ScheduleType Timed = ScheduleType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Timed');
  static const ScheduleType FileChange = ScheduleType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FileChange');

  static const $core.List<ScheduleType> values = <ScheduleType> [
    Timed,
    FileChange,
  ];

  static final $core.Map<$core.int, ScheduleType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ScheduleType? valueOf($core.int value) => _byValue[value];

  const ScheduleType._($core.int v, $core.String n) : super(v, n);
}

