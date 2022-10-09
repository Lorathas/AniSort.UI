///
//  Generated code. Do not modify.
//  source: settings.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class SettingsReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SettingsReply', createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'debug')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'verbose')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'copy')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'incrementalCleanup', protoName: 'incrementalCleanup')
    ..aOM<AniDbConfigReply>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'aniDb', protoName: 'aniDb', subBuilder: AniDbConfigReply.create)
    ..pPS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sources')
    ..pPS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'libraryPaths', protoName: 'libraryPaths')
    ..aOB(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ignoreLibraryFiles', protoName: 'ignoreLibraryFiles')
    ..aOM<DestinationConfigReply>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'destination', subBuilder: DestinationConfigReply.create)
    ..hasRequiredFields = false
  ;

  SettingsReply._() : super();
  factory SettingsReply({
    $core.bool? debug,
    $core.bool? verbose,
    $core.bool? copy,
    $core.bool? incrementalCleanup,
    AniDbConfigReply? aniDb,
    $core.Iterable<$core.String>? sources,
    $core.Iterable<$core.String>? libraryPaths,
    $core.bool? ignoreLibraryFiles,
    DestinationConfigReply? destination,
  }) {
    final _result = create();
    if (debug != null) {
      _result.debug = debug;
    }
    if (verbose != null) {
      _result.verbose = verbose;
    }
    if (copy != null) {
      _result.copy = copy;
    }
    if (incrementalCleanup != null) {
      _result.incrementalCleanup = incrementalCleanup;
    }
    if (aniDb != null) {
      _result.aniDb = aniDb;
    }
    if (sources != null) {
      _result.sources.addAll(sources);
    }
    if (libraryPaths != null) {
      _result.libraryPaths.addAll(libraryPaths);
    }
    if (ignoreLibraryFiles != null) {
      _result.ignoreLibraryFiles = ignoreLibraryFiles;
    }
    if (destination != null) {
      _result.destination = destination;
    }
    return _result;
  }
  factory SettingsReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SettingsReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SettingsReply clone() => SettingsReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SettingsReply copyWith(void Function(SettingsReply) updates) => super.copyWith((message) => updates(message as SettingsReply)) as SettingsReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SettingsReply create() => SettingsReply._();
  SettingsReply createEmptyInstance() => create();
  static $pb.PbList<SettingsReply> createRepeated() => $pb.PbList<SettingsReply>();
  @$core.pragma('dart2js:noInline')
  static SettingsReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SettingsReply>(create);
  static SettingsReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get debug => $_getBF(0);
  @$pb.TagNumber(1)
  set debug($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDebug() => $_has(0);
  @$pb.TagNumber(1)
  void clearDebug() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get verbose => $_getBF(1);
  @$pb.TagNumber(2)
  set verbose($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVerbose() => $_has(1);
  @$pb.TagNumber(2)
  void clearVerbose() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get copy => $_getBF(2);
  @$pb.TagNumber(3)
  set copy($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCopy() => $_has(2);
  @$pb.TagNumber(3)
  void clearCopy() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get incrementalCleanup => $_getBF(3);
  @$pb.TagNumber(4)
  set incrementalCleanup($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIncrementalCleanup() => $_has(3);
  @$pb.TagNumber(4)
  void clearIncrementalCleanup() => clearField(4);

  @$pb.TagNumber(5)
  AniDbConfigReply get aniDb => $_getN(4);
  @$pb.TagNumber(5)
  set aniDb(AniDbConfigReply v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasAniDb() => $_has(4);
  @$pb.TagNumber(5)
  void clearAniDb() => clearField(5);
  @$pb.TagNumber(5)
  AniDbConfigReply ensureAniDb() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.List<$core.String> get sources => $_getList(5);

  @$pb.TagNumber(7)
  $core.List<$core.String> get libraryPaths => $_getList(6);

  @$pb.TagNumber(8)
  $core.bool get ignoreLibraryFiles => $_getBF(7);
  @$pb.TagNumber(8)
  set ignoreLibraryFiles($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasIgnoreLibraryFiles() => $_has(7);
  @$pb.TagNumber(8)
  void clearIgnoreLibraryFiles() => clearField(8);

  @$pb.TagNumber(9)
  DestinationConfigReply get destination => $_getN(8);
  @$pb.TagNumber(9)
  set destination(DestinationConfigReply v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasDestination() => $_has(8);
  @$pb.TagNumber(9)
  void clearDestination() => clearField(9);
  @$pb.TagNumber(9)
  DestinationConfigReply ensureDestination() => $_ensure(8);
}

class AniDbConfigReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AniDbConfigReply', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'username')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'password')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'maxFileSearchRetries', $pb.PbFieldType.O3, protoName: 'maxFileSearchRetries')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fileSearchCooldownMinutes', $pb.PbFieldType.O3, protoName: 'fileSearchCooldownMinutes')
    ..hasRequiredFields = false
  ;

  AniDbConfigReply._() : super();
  factory AniDbConfigReply({
    $core.String? username,
    $core.String? password,
    $core.int? maxFileSearchRetries,
    $core.int? fileSearchCooldownMinutes,
  }) {
    final _result = create();
    if (username != null) {
      _result.username = username;
    }
    if (password != null) {
      _result.password = password;
    }
    if (maxFileSearchRetries != null) {
      _result.maxFileSearchRetries = maxFileSearchRetries;
    }
    if (fileSearchCooldownMinutes != null) {
      _result.fileSearchCooldownMinutes = fileSearchCooldownMinutes;
    }
    return _result;
  }
  factory AniDbConfigReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AniDbConfigReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AniDbConfigReply clone() => AniDbConfigReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AniDbConfigReply copyWith(void Function(AniDbConfigReply) updates) => super.copyWith((message) => updates(message as AniDbConfigReply)) as AniDbConfigReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AniDbConfigReply create() => AniDbConfigReply._();
  AniDbConfigReply createEmptyInstance() => create();
  static $pb.PbList<AniDbConfigReply> createRepeated() => $pb.PbList<AniDbConfigReply>();
  @$core.pragma('dart2js:noInline')
  static AniDbConfigReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AniDbConfigReply>(create);
  static AniDbConfigReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get username => $_getSZ(0);
  @$pb.TagNumber(1)
  set username($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUsername() => $_has(0);
  @$pb.TagNumber(1)
  void clearUsername() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get maxFileSearchRetries => $_getIZ(2);
  @$pb.TagNumber(3)
  set maxFileSearchRetries($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMaxFileSearchRetries() => $_has(2);
  @$pb.TagNumber(3)
  void clearMaxFileSearchRetries() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get fileSearchCooldownMinutes => $_getIZ(3);
  @$pb.TagNumber(4)
  set fileSearchCooldownMinutes($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFileSearchCooldownMinutes() => $_has(3);
  @$pb.TagNumber(4)
  void clearFileSearchCooldownMinutes() => clearField(4);
}

class DestinationConfigReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DestinationConfigReply', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'path')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fragmentSeries', protoName: 'fragmentSeries')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'format')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tvPath', protoName: 'tvPath')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'moviePath', protoName: 'moviePath')
    ..hasRequiredFields = false
  ;

  DestinationConfigReply._() : super();
  factory DestinationConfigReply({
    $core.String? path,
    $core.bool? fragmentSeries,
    $core.String? format,
    $core.String? tvPath,
    $core.String? moviePath,
  }) {
    final _result = create();
    if (path != null) {
      _result.path = path;
    }
    if (fragmentSeries != null) {
      _result.fragmentSeries = fragmentSeries;
    }
    if (format != null) {
      _result.format = format;
    }
    if (tvPath != null) {
      _result.tvPath = tvPath;
    }
    if (moviePath != null) {
      _result.moviePath = moviePath;
    }
    return _result;
  }
  factory DestinationConfigReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DestinationConfigReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DestinationConfigReply clone() => DestinationConfigReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DestinationConfigReply copyWith(void Function(DestinationConfigReply) updates) => super.copyWith((message) => updates(message as DestinationConfigReply)) as DestinationConfigReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DestinationConfigReply create() => DestinationConfigReply._();
  DestinationConfigReply createEmptyInstance() => create();
  static $pb.PbList<DestinationConfigReply> createRepeated() => $pb.PbList<DestinationConfigReply>();
  @$core.pragma('dart2js:noInline')
  static DestinationConfigReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DestinationConfigReply>(create);
  static DestinationConfigReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get path => $_getSZ(0);
  @$pb.TagNumber(1)
  set path($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPath() => $_has(0);
  @$pb.TagNumber(1)
  void clearPath() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get fragmentSeries => $_getBF(1);
  @$pb.TagNumber(2)
  set fragmentSeries($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFragmentSeries() => $_has(1);
  @$pb.TagNumber(2)
  void clearFragmentSeries() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get format => $_getSZ(2);
  @$pb.TagNumber(3)
  set format($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFormat() => $_has(2);
  @$pb.TagNumber(3)
  void clearFormat() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get tvPath => $_getSZ(3);
  @$pb.TagNumber(4)
  set tvPath($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTvPath() => $_has(3);
  @$pb.TagNumber(4)
  void clearTvPath() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get moviePath => $_getSZ(4);
  @$pb.TagNumber(5)
  set moviePath($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMoviePath() => $_has(4);
  @$pb.TagNumber(5)
  void clearMoviePath() => clearField(5);
}

