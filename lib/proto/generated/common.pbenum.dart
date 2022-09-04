///
//  Generated code. Do not modify.
//  source: common.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class SortDirection extends $pb.ProtobufEnum {
  static const SortDirection Ascending = SortDirection._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Ascending');
  static const SortDirection Descending = SortDirection._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Descending');

  static const $core.List<SortDirection> values = <SortDirection> [
    Ascending,
    Descending,
  ];

  static final $core.Map<$core.int, SortDirection> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SortDirection? valueOf($core.int value) => _byValue[value];

  const SortDirection._($core.int v, $core.String n) : super(v, n);
}

class HubUpdate extends $pb.ProtobufEnum {
  static const HubUpdate Initial = HubUpdate._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Initial');
  static const HubUpdate ItemCreated = HubUpdate._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ItemCreated');
  static const HubUpdate ItemUpdated = HubUpdate._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ItemUpdated');
  static const HubUpdate ItemDeleted = HubUpdate._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ItemDeleted');

  static const $core.List<HubUpdate> values = <HubUpdate> [
    Initial,
    ItemCreated,
    ItemUpdated,
    ItemDeleted,
  ];

  static final $core.Map<$core.int, HubUpdate> _byValue = $pb.ProtobufEnum.initByValue(values);
  static HubUpdate? valueOf($core.int value) => _byValue[value];

  const HubUpdate._($core.int v, $core.String n) : super(v, n);
}

