///
//  Generated code. Do not modify.
//  source: common.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name, no_leading_underscores_for_local_identifiers

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'common.pbenum.dart';

class PagesInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PagesInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'anisort'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pages', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  PagesInfo._() : super();
  factory PagesInfo({
    $core.int? pages,
  }) {
    final _result = create();
    if (pages != null) {
      _result.pages = pages;
    }
    return _result;
  }
  factory PagesInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PagesInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PagesInfo clone() => PagesInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PagesInfo copyWith(void Function(PagesInfo) updates) => super.copyWith((message) => updates(message as PagesInfo)) as PagesInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PagesInfo create() => PagesInfo._();
  PagesInfo createEmptyInstance() => create();
  static $pb.PbList<PagesInfo> createRepeated() => $pb.PbList<PagesInfo>();
  @$core.pragma('dart2js:noInline')
  static PagesInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PagesInfo>(create);
  static PagesInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get pages => $_getIZ(0);
  @$pb.TagNumber(1)
  set pages($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPages() => $_has(0);
  @$pb.TagNumber(1)
  void clearPages() => clearField(1);
}

