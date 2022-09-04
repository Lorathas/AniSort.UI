///
//  Generated code. Do not modify.
//  source: files.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/timestamp.pb.dart' as $6;
import 'episode_files.pb.dart' as $7;

import 'files.pbenum.dart';
import 'common.pbenum.dart' as $2;

export 'files.pbenum.dart';

class LocalFileReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LocalFileReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'anisort.files'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'localFileId', protoName: 'localFileId')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'episodeFileId', $pb.PbFieldType.O3, protoName: 'episodeFileId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'path')
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ed2kHash', $pb.PbFieldType.OY, protoName: 'ed2kHash')
    ..a<$core.List<$core.int>>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'md5Hash', $pb.PbFieldType.OY, protoName: 'md5Hash')
    ..a<$core.List<$core.int>>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sha3512Hash', $pb.PbFieldType.OY, protoName: 'sha3_512Hash')
    ..aInt64(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fileLength', protoName: 'fileLength')
    ..pc<FileActionReply>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fileActions', $pb.PbFieldType.PM, protoName: 'fileActions', subBuilder: FileActionReply.create)
    ..e<ImportStatus>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: ImportStatus.NotYetImported, valueOf: ImportStatus.valueOf, enumValues: ImportStatus.values)
    ..aOM<$6.Timestamp>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', protoName: 'createdAt', subBuilder: $6.Timestamp.create)
    ..aOM<$6.Timestamp>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedAt', protoName: 'updatedAt', subBuilder: $6.Timestamp.create)
    ..aOM<$7.EpisodeFileReply>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'episodeFile', protoName: 'episodeFile', subBuilder: $7.EpisodeFileReply.create)
    ..hasRequiredFields = false
  ;

  LocalFileReply._() : super();
  factory LocalFileReply({
    $core.String? localFileId,
    $core.int? episodeFileId,
    $core.String? path,
    $core.List<$core.int>? ed2kHash,
    $core.List<$core.int>? md5Hash,
    $core.List<$core.int>? sha3512Hash,
    $fixnum.Int64? fileLength,
    $core.Iterable<FileActionReply>? fileActions,
    ImportStatus? status,
    $6.Timestamp? createdAt,
    $6.Timestamp? updatedAt,
    $7.EpisodeFileReply? episodeFile,
  }) {
    final _result = create();
    if (localFileId != null) {
      _result.localFileId = localFileId;
    }
    if (episodeFileId != null) {
      _result.episodeFileId = episodeFileId;
    }
    if (path != null) {
      _result.path = path;
    }
    if (ed2kHash != null) {
      _result.ed2kHash = ed2kHash;
    }
    if (md5Hash != null) {
      _result.md5Hash = md5Hash;
    }
    if (sha3512Hash != null) {
      _result.sha3512Hash = sha3512Hash;
    }
    if (fileLength != null) {
      _result.fileLength = fileLength;
    }
    if (fileActions != null) {
      _result.fileActions.addAll(fileActions);
    }
    if (status != null) {
      _result.status = status;
    }
    if (createdAt != null) {
      _result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      _result.updatedAt = updatedAt;
    }
    if (episodeFile != null) {
      _result.episodeFile = episodeFile;
    }
    return _result;
  }
  factory LocalFileReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LocalFileReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LocalFileReply clone() => LocalFileReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LocalFileReply copyWith(void Function(LocalFileReply) updates) => super.copyWith((message) => updates(message as LocalFileReply)) as LocalFileReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LocalFileReply create() => LocalFileReply._();
  LocalFileReply createEmptyInstance() => create();
  static $pb.PbList<LocalFileReply> createRepeated() => $pb.PbList<LocalFileReply>();
  @$core.pragma('dart2js:noInline')
  static LocalFileReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LocalFileReply>(create);
  static LocalFileReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get localFileId => $_getSZ(0);
  @$pb.TagNumber(1)
  set localFileId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLocalFileId() => $_has(0);
  @$pb.TagNumber(1)
  void clearLocalFileId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get episodeFileId => $_getIZ(1);
  @$pb.TagNumber(2)
  set episodeFileId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEpisodeFileId() => $_has(1);
  @$pb.TagNumber(2)
  void clearEpisodeFileId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get path => $_getSZ(2);
  @$pb.TagNumber(3)
  set path($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPath() => $_has(2);
  @$pb.TagNumber(3)
  void clearPath() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get ed2kHash => $_getN(3);
  @$pb.TagNumber(4)
  set ed2kHash($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasEd2kHash() => $_has(3);
  @$pb.TagNumber(4)
  void clearEd2kHash() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get md5Hash => $_getN(4);
  @$pb.TagNumber(5)
  set md5Hash($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMd5Hash() => $_has(4);
  @$pb.TagNumber(5)
  void clearMd5Hash() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.int> get sha3512Hash => $_getN(5);
  @$pb.TagNumber(6)
  set sha3512Hash($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSha3512Hash() => $_has(5);
  @$pb.TagNumber(6)
  void clearSha3512Hash() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get fileLength => $_getI64(6);
  @$pb.TagNumber(7)
  set fileLength($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasFileLength() => $_has(6);
  @$pb.TagNumber(7)
  void clearFileLength() => clearField(7);

  @$pb.TagNumber(8)
  $core.List<FileActionReply> get fileActions => $_getList(7);

  @$pb.TagNumber(9)
  ImportStatus get status => $_getN(8);
  @$pb.TagNumber(9)
  set status(ImportStatus v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasStatus() => $_has(8);
  @$pb.TagNumber(9)
  void clearStatus() => clearField(9);

  @$pb.TagNumber(10)
  $6.Timestamp get createdAt => $_getN(9);
  @$pb.TagNumber(10)
  set createdAt($6.Timestamp v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasCreatedAt() => $_has(9);
  @$pb.TagNumber(10)
  void clearCreatedAt() => clearField(10);
  @$pb.TagNumber(10)
  $6.Timestamp ensureCreatedAt() => $_ensure(9);

  @$pb.TagNumber(11)
  $6.Timestamp get updatedAt => $_getN(10);
  @$pb.TagNumber(11)
  set updatedAt($6.Timestamp v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasUpdatedAt() => $_has(10);
  @$pb.TagNumber(11)
  void clearUpdatedAt() => clearField(11);
  @$pb.TagNumber(11)
  $6.Timestamp ensureUpdatedAt() => $_ensure(10);

  @$pb.TagNumber(12)
  $7.EpisodeFileReply get episodeFile => $_getN(11);
  @$pb.TagNumber(12)
  set episodeFile($7.EpisodeFileReply v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasEpisodeFile() => $_has(11);
  @$pb.TagNumber(12)
  void clearEpisodeFile() => clearField(12);
  @$pb.TagNumber(12)
  $7.EpisodeFileReply ensureEpisodeFile() => $_ensure(11);
}

class LocalFileUpdateReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LocalFileUpdateReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'anisort.files'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'localFileId', protoName: 'localFileId')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'episodeFileId', $pb.PbFieldType.O3, protoName: 'episodeFileId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'path')
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ed2kHash', $pb.PbFieldType.OY, protoName: 'ed2kHash')
    ..a<$core.List<$core.int>>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'md5Hash', $pb.PbFieldType.OY, protoName: 'md5Hash')
    ..a<$core.List<$core.int>>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sha3512Hash', $pb.PbFieldType.OY, protoName: 'sha3_512Hash')
    ..aInt64(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fileLength', protoName: 'fileLength')
    ..pc<FileActionReply>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fileActions', $pb.PbFieldType.PM, protoName: 'fileActions', subBuilder: FileActionReply.create)
    ..e<ImportStatus>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: ImportStatus.NotYetImported, valueOf: ImportStatus.valueOf, enumValues: ImportStatus.values)
    ..aOM<$6.Timestamp>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', protoName: 'createdAt', subBuilder: $6.Timestamp.create)
    ..aOM<$6.Timestamp>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedAt', protoName: 'updatedAt', subBuilder: $6.Timestamp.create)
    ..aOM<$7.EpisodeFileReply>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'episodeFile', protoName: 'episodeFile', subBuilder: $7.EpisodeFileReply.create)
    ..e<$2.HubUpdate>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateType', $pb.PbFieldType.OE, protoName: 'updateType', defaultOrMaker: $2.HubUpdate.Initial, valueOf: $2.HubUpdate.valueOf, enumValues: $2.HubUpdate.values)
    ..hasRequiredFields = false
  ;

  LocalFileUpdateReply._() : super();
  factory LocalFileUpdateReply({
    $core.String? localFileId,
    $core.int? episodeFileId,
    $core.String? path,
    $core.List<$core.int>? ed2kHash,
    $core.List<$core.int>? md5Hash,
    $core.List<$core.int>? sha3512Hash,
    $fixnum.Int64? fileLength,
    $core.Iterable<FileActionReply>? fileActions,
    ImportStatus? status,
    $6.Timestamp? createdAt,
    $6.Timestamp? updatedAt,
    $7.EpisodeFileReply? episodeFile,
    $2.HubUpdate? updateType,
  }) {
    final _result = create();
    if (localFileId != null) {
      _result.localFileId = localFileId;
    }
    if (episodeFileId != null) {
      _result.episodeFileId = episodeFileId;
    }
    if (path != null) {
      _result.path = path;
    }
    if (ed2kHash != null) {
      _result.ed2kHash = ed2kHash;
    }
    if (md5Hash != null) {
      _result.md5Hash = md5Hash;
    }
    if (sha3512Hash != null) {
      _result.sha3512Hash = sha3512Hash;
    }
    if (fileLength != null) {
      _result.fileLength = fileLength;
    }
    if (fileActions != null) {
      _result.fileActions.addAll(fileActions);
    }
    if (status != null) {
      _result.status = status;
    }
    if (createdAt != null) {
      _result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      _result.updatedAt = updatedAt;
    }
    if (episodeFile != null) {
      _result.episodeFile = episodeFile;
    }
    if (updateType != null) {
      _result.updateType = updateType;
    }
    return _result;
  }
  factory LocalFileUpdateReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LocalFileUpdateReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LocalFileUpdateReply clone() => LocalFileUpdateReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LocalFileUpdateReply copyWith(void Function(LocalFileUpdateReply) updates) => super.copyWith((message) => updates(message as LocalFileUpdateReply)) as LocalFileUpdateReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LocalFileUpdateReply create() => LocalFileUpdateReply._();
  LocalFileUpdateReply createEmptyInstance() => create();
  static $pb.PbList<LocalFileUpdateReply> createRepeated() => $pb.PbList<LocalFileUpdateReply>();
  @$core.pragma('dart2js:noInline')
  static LocalFileUpdateReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LocalFileUpdateReply>(create);
  static LocalFileUpdateReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get localFileId => $_getSZ(0);
  @$pb.TagNumber(1)
  set localFileId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLocalFileId() => $_has(0);
  @$pb.TagNumber(1)
  void clearLocalFileId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get episodeFileId => $_getIZ(1);
  @$pb.TagNumber(2)
  set episodeFileId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEpisodeFileId() => $_has(1);
  @$pb.TagNumber(2)
  void clearEpisodeFileId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get path => $_getSZ(2);
  @$pb.TagNumber(3)
  set path($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPath() => $_has(2);
  @$pb.TagNumber(3)
  void clearPath() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get ed2kHash => $_getN(3);
  @$pb.TagNumber(4)
  set ed2kHash($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasEd2kHash() => $_has(3);
  @$pb.TagNumber(4)
  void clearEd2kHash() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get md5Hash => $_getN(4);
  @$pb.TagNumber(5)
  set md5Hash($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMd5Hash() => $_has(4);
  @$pb.TagNumber(5)
  void clearMd5Hash() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.int> get sha3512Hash => $_getN(5);
  @$pb.TagNumber(6)
  set sha3512Hash($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSha3512Hash() => $_has(5);
  @$pb.TagNumber(6)
  void clearSha3512Hash() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get fileLength => $_getI64(6);
  @$pb.TagNumber(7)
  set fileLength($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasFileLength() => $_has(6);
  @$pb.TagNumber(7)
  void clearFileLength() => clearField(7);

  @$pb.TagNumber(8)
  $core.List<FileActionReply> get fileActions => $_getList(7);

  @$pb.TagNumber(9)
  ImportStatus get status => $_getN(8);
  @$pb.TagNumber(9)
  set status(ImportStatus v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasStatus() => $_has(8);
  @$pb.TagNumber(9)
  void clearStatus() => clearField(9);

  @$pb.TagNumber(10)
  $6.Timestamp get createdAt => $_getN(9);
  @$pb.TagNumber(10)
  set createdAt($6.Timestamp v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasCreatedAt() => $_has(9);
  @$pb.TagNumber(10)
  void clearCreatedAt() => clearField(10);
  @$pb.TagNumber(10)
  $6.Timestamp ensureCreatedAt() => $_ensure(9);

  @$pb.TagNumber(11)
  $6.Timestamp get updatedAt => $_getN(10);
  @$pb.TagNumber(11)
  set updatedAt($6.Timestamp v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasUpdatedAt() => $_has(10);
  @$pb.TagNumber(11)
  void clearUpdatedAt() => clearField(11);
  @$pb.TagNumber(11)
  $6.Timestamp ensureUpdatedAt() => $_ensure(10);

  @$pb.TagNumber(12)
  $7.EpisodeFileReply get episodeFile => $_getN(11);
  @$pb.TagNumber(12)
  set episodeFile($7.EpisodeFileReply v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasEpisodeFile() => $_has(11);
  @$pb.TagNumber(12)
  void clearEpisodeFile() => clearField(12);
  @$pb.TagNumber(12)
  $7.EpisodeFileReply ensureEpisodeFile() => $_ensure(11);

  @$pb.TagNumber(13)
  $2.HubUpdate get updateType => $_getN(12);
  @$pb.TagNumber(13)
  set updateType($2.HubUpdate v) { setField(13, v); }
  @$pb.TagNumber(13)
  $core.bool hasUpdateType() => $_has(12);
  @$pb.TagNumber(13)
  void clearUpdateType() => clearField(13);
}

class FileActionReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FileActionReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'anisort.files'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fileActionId', protoName: 'fileActionId')
    ..e<FileActionType>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: FileActionType.Hash, valueOf: FileActionType.valueOf, enumValues: FileActionType.values)
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'success')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'info')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'exception')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'localFileId', protoName: 'localFileId')
    ..aOM<LocalFileReply>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'localFile', protoName: 'localFile', subBuilder: LocalFileReply.create)
    ..aOM<$6.Timestamp>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', protoName: 'createdAt', subBuilder: $6.Timestamp.create)
    ..aOM<$6.Timestamp>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedAt', protoName: 'updatedAt', subBuilder: $6.Timestamp.create)
    ..hasRequiredFields = false
  ;

  FileActionReply._() : super();
  factory FileActionReply({
    $core.String? fileActionId,
    FileActionType? type,
    $core.bool? success,
    $core.String? info,
    $core.String? exception,
    $core.String? localFileId,
    LocalFileReply? localFile,
    $6.Timestamp? createdAt,
    $6.Timestamp? updatedAt,
  }) {
    final _result = create();
    if (fileActionId != null) {
      _result.fileActionId = fileActionId;
    }
    if (type != null) {
      _result.type = type;
    }
    if (success != null) {
      _result.success = success;
    }
    if (info != null) {
      _result.info = info;
    }
    if (exception != null) {
      _result.exception = exception;
    }
    if (localFileId != null) {
      _result.localFileId = localFileId;
    }
    if (localFile != null) {
      _result.localFile = localFile;
    }
    if (createdAt != null) {
      _result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      _result.updatedAt = updatedAt;
    }
    return _result;
  }
  factory FileActionReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FileActionReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FileActionReply clone() => FileActionReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FileActionReply copyWith(void Function(FileActionReply) updates) => super.copyWith((message) => updates(message as FileActionReply)) as FileActionReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FileActionReply create() => FileActionReply._();
  FileActionReply createEmptyInstance() => create();
  static $pb.PbList<FileActionReply> createRepeated() => $pb.PbList<FileActionReply>();
  @$core.pragma('dart2js:noInline')
  static FileActionReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FileActionReply>(create);
  static FileActionReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get fileActionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set fileActionId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFileActionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearFileActionId() => clearField(1);

  @$pb.TagNumber(2)
  FileActionType get type => $_getN(1);
  @$pb.TagNumber(2)
  set type(FileActionType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get success => $_getBF(2);
  @$pb.TagNumber(3)
  set success($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSuccess() => $_has(2);
  @$pb.TagNumber(3)
  void clearSuccess() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get info => $_getSZ(3);
  @$pb.TagNumber(4)
  set info($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasInfo() => $_has(3);
  @$pb.TagNumber(4)
  void clearInfo() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get exception => $_getSZ(4);
  @$pb.TagNumber(5)
  set exception($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasException() => $_has(4);
  @$pb.TagNumber(5)
  void clearException() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get localFileId => $_getSZ(5);
  @$pb.TagNumber(6)
  set localFileId($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasLocalFileId() => $_has(5);
  @$pb.TagNumber(6)
  void clearLocalFileId() => clearField(6);

  @$pb.TagNumber(7)
  LocalFileReply get localFile => $_getN(6);
  @$pb.TagNumber(7)
  set localFile(LocalFileReply v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasLocalFile() => $_has(6);
  @$pb.TagNumber(7)
  void clearLocalFile() => clearField(7);
  @$pb.TagNumber(7)
  LocalFileReply ensureLocalFile() => $_ensure(6);

  @$pb.TagNumber(8)
  $6.Timestamp get createdAt => $_getN(7);
  @$pb.TagNumber(8)
  set createdAt($6.Timestamp v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasCreatedAt() => $_has(7);
  @$pb.TagNumber(8)
  void clearCreatedAt() => clearField(8);
  @$pb.TagNumber(8)
  $6.Timestamp ensureCreatedAt() => $_ensure(7);

  @$pb.TagNumber(9)
  $6.Timestamp get updatedAt => $_getN(8);
  @$pb.TagNumber(9)
  set updatedAt($6.Timestamp v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasUpdatedAt() => $_has(8);
  @$pb.TagNumber(9)
  void clearUpdatedAt() => clearField(9);
  @$pb.TagNumber(9)
  $6.Timestamp ensureUpdatedAt() => $_ensure(8);
}

class FilteredLocalFilesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FilteredLocalFilesRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'anisort.files'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'page', $pb.PbFieldType.O3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'search')
    ..aOM<$6.Timestamp>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startTime', protoName: 'startTime', subBuilder: $6.Timestamp.create)
    ..aOM<$6.Timestamp>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'endTime', protoName: 'endTime', subBuilder: $6.Timestamp.create)
    ..e<ImportStatus>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: ImportStatus.NotYetImported, valueOf: ImportStatus.valueOf, enumValues: ImportStatus.values)
    ..e<$2.SortDirection>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sort', $pb.PbFieldType.OE, defaultOrMaker: $2.SortDirection.Ascending, valueOf: $2.SortDirection.valueOf, enumValues: $2.SortDirection.values)
    ..e<LocalFileSortBy>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sortBy', $pb.PbFieldType.OE, protoName: 'sortBy', defaultOrMaker: LocalFileSortBy.Path, valueOf: LocalFileSortBy.valueOf, enumValues: LocalFileSortBy.values)
    ..hasRequiredFields = false
  ;

  FilteredLocalFilesRequest._() : super();
  factory FilteredLocalFilesRequest({
    $core.int? page,
    $core.String? search,
    $6.Timestamp? startTime,
    $6.Timestamp? endTime,
    ImportStatus? status,
    $2.SortDirection? sort,
    LocalFileSortBy? sortBy,
  }) {
    final _result = create();
    if (page != null) {
      _result.page = page;
    }
    if (search != null) {
      _result.search = search;
    }
    if (startTime != null) {
      _result.startTime = startTime;
    }
    if (endTime != null) {
      _result.endTime = endTime;
    }
    if (status != null) {
      _result.status = status;
    }
    if (sort != null) {
      _result.sort = sort;
    }
    if (sortBy != null) {
      _result.sortBy = sortBy;
    }
    return _result;
  }
  factory FilteredLocalFilesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FilteredLocalFilesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FilteredLocalFilesRequest clone() => FilteredLocalFilesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FilteredLocalFilesRequest copyWith(void Function(FilteredLocalFilesRequest) updates) => super.copyWith((message) => updates(message as FilteredLocalFilesRequest)) as FilteredLocalFilesRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FilteredLocalFilesRequest create() => FilteredLocalFilesRequest._();
  FilteredLocalFilesRequest createEmptyInstance() => create();
  static $pb.PbList<FilteredLocalFilesRequest> createRepeated() => $pb.PbList<FilteredLocalFilesRequest>();
  @$core.pragma('dart2js:noInline')
  static FilteredLocalFilesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FilteredLocalFilesRequest>(create);
  static FilteredLocalFilesRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get page => $_getIZ(0);
  @$pb.TagNumber(1)
  set page($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPage() => $_has(0);
  @$pb.TagNumber(1)
  void clearPage() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get search => $_getSZ(1);
  @$pb.TagNumber(2)
  set search($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSearch() => $_has(1);
  @$pb.TagNumber(2)
  void clearSearch() => clearField(2);

  @$pb.TagNumber(3)
  $6.Timestamp get startTime => $_getN(2);
  @$pb.TagNumber(3)
  set startTime($6.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasStartTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearStartTime() => clearField(3);
  @$pb.TagNumber(3)
  $6.Timestamp ensureStartTime() => $_ensure(2);

  @$pb.TagNumber(4)
  $6.Timestamp get endTime => $_getN(3);
  @$pb.TagNumber(4)
  set endTime($6.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasEndTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearEndTime() => clearField(4);
  @$pb.TagNumber(4)
  $6.Timestamp ensureEndTime() => $_ensure(3);

  @$pb.TagNumber(5)
  ImportStatus get status => $_getN(4);
  @$pb.TagNumber(5)
  set status(ImportStatus v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasStatus() => $_has(4);
  @$pb.TagNumber(5)
  void clearStatus() => clearField(5);

  @$pb.TagNumber(6)
  $2.SortDirection get sort => $_getN(5);
  @$pb.TagNumber(6)
  set sort($2.SortDirection v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasSort() => $_has(5);
  @$pb.TagNumber(6)
  void clearSort() => clearField(6);

  @$pb.TagNumber(7)
  LocalFileSortBy get sortBy => $_getN(6);
  @$pb.TagNumber(7)
  set sortBy(LocalFileSortBy v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasSortBy() => $_has(6);
  @$pb.TagNumber(7)
  void clearSortBy() => clearField(7);
}

class LocalFileRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LocalFileRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'anisort.files'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'localFileId', protoName: 'localFileId')
    ..hasRequiredFields = false
  ;

  LocalFileRequest._() : super();
  factory LocalFileRequest({
    $core.String? localFileId,
  }) {
    final _result = create();
    if (localFileId != null) {
      _result.localFileId = localFileId;
    }
    return _result;
  }
  factory LocalFileRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LocalFileRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LocalFileRequest clone() => LocalFileRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LocalFileRequest copyWith(void Function(LocalFileRequest) updates) => super.copyWith((message) => updates(message as LocalFileRequest)) as LocalFileRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LocalFileRequest create() => LocalFileRequest._();
  LocalFileRequest createEmptyInstance() => create();
  static $pb.PbList<LocalFileRequest> createRepeated() => $pb.PbList<LocalFileRequest>();
  @$core.pragma('dart2js:noInline')
  static LocalFileRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LocalFileRequest>(create);
  static LocalFileRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get localFileId => $_getSZ(0);
  @$pb.TagNumber(1)
  set localFileId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLocalFileId() => $_has(0);
  @$pb.TagNumber(1)
  void clearLocalFileId() => clearField(1);
}

class DrivesReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DrivesReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'anisort.files'), createEmptyInstance: create)
    ..pPS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'drives')
    ..hasRequiredFields = false
  ;

  DrivesReply._() : super();
  factory DrivesReply({
    $core.Iterable<$core.String>? drives,
  }) {
    final _result = create();
    if (drives != null) {
      _result.drives.addAll(drives);
    }
    return _result;
  }
  factory DrivesReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DrivesReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DrivesReply clone() => DrivesReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DrivesReply copyWith(void Function(DrivesReply) updates) => super.copyWith((message) => updates(message as DrivesReply)) as DrivesReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DrivesReply create() => DrivesReply._();
  DrivesReply createEmptyInstance() => create();
  static $pb.PbList<DrivesReply> createRepeated() => $pb.PbList<DrivesReply>();
  @$core.pragma('dart2js:noInline')
  static DrivesReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DrivesReply>(create);
  static DrivesReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get drives => $_getList(0);
}

class DirectoryFilesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DirectoryFilesRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'anisort.files'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'path')
    ..hasRequiredFields = false
  ;

  DirectoryFilesRequest._() : super();
  factory DirectoryFilesRequest({
    $core.String? path,
  }) {
    final _result = create();
    if (path != null) {
      _result.path = path;
    }
    return _result;
  }
  factory DirectoryFilesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DirectoryFilesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DirectoryFilesRequest clone() => DirectoryFilesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DirectoryFilesRequest copyWith(void Function(DirectoryFilesRequest) updates) => super.copyWith((message) => updates(message as DirectoryFilesRequest)) as DirectoryFilesRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DirectoryFilesRequest create() => DirectoryFilesRequest._();
  DirectoryFilesRequest createEmptyInstance() => create();
  static $pb.PbList<DirectoryFilesRequest> createRepeated() => $pb.PbList<DirectoryFilesRequest>();
  @$core.pragma('dart2js:noInline')
  static DirectoryFilesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DirectoryFilesRequest>(create);
  static DirectoryFilesRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get path => $_getSZ(0);
  @$pb.TagNumber(1)
  set path($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPath() => $_has(0);
  @$pb.TagNumber(1)
  void clearPath() => clearField(1);
}

class DirectoryFilesReply_DirectoryFile extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DirectoryFilesReply.DirectoryFile', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'anisort.files'), createEmptyInstance: create)
    ..e<DirectoryFilesReply_DirectoryFileType>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: DirectoryFilesReply_DirectoryFileType.File, valueOf: DirectoryFilesReply_DirectoryFileType.valueOf, enumValues: DirectoryFilesReply_DirectoryFileType.values)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..hasRequiredFields = false
  ;

  DirectoryFilesReply_DirectoryFile._() : super();
  factory DirectoryFilesReply_DirectoryFile({
    DirectoryFilesReply_DirectoryFileType? type,
    $core.String? name,
  }) {
    final _result = create();
    if (type != null) {
      _result.type = type;
    }
    if (name != null) {
      _result.name = name;
    }
    return _result;
  }
  factory DirectoryFilesReply_DirectoryFile.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DirectoryFilesReply_DirectoryFile.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DirectoryFilesReply_DirectoryFile clone() => DirectoryFilesReply_DirectoryFile()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DirectoryFilesReply_DirectoryFile copyWith(void Function(DirectoryFilesReply_DirectoryFile) updates) => super.copyWith((message) => updates(message as DirectoryFilesReply_DirectoryFile)) as DirectoryFilesReply_DirectoryFile; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DirectoryFilesReply_DirectoryFile create() => DirectoryFilesReply_DirectoryFile._();
  DirectoryFilesReply_DirectoryFile createEmptyInstance() => create();
  static $pb.PbList<DirectoryFilesReply_DirectoryFile> createRepeated() => $pb.PbList<DirectoryFilesReply_DirectoryFile>();
  @$core.pragma('dart2js:noInline')
  static DirectoryFilesReply_DirectoryFile getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DirectoryFilesReply_DirectoryFile>(create);
  static DirectoryFilesReply_DirectoryFile? _defaultInstance;

  @$pb.TagNumber(1)
  DirectoryFilesReply_DirectoryFileType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(DirectoryFilesReply_DirectoryFileType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);
}

class DirectoryFilesReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DirectoryFilesReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'anisort.files'), createEmptyInstance: create)
    ..pc<DirectoryFilesReply_DirectoryFile>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'files', $pb.PbFieldType.PM, subBuilder: DirectoryFilesReply_DirectoryFile.create)
    ..hasRequiredFields = false
  ;

  DirectoryFilesReply._() : super();
  factory DirectoryFilesReply({
    $core.Iterable<DirectoryFilesReply_DirectoryFile>? files,
  }) {
    final _result = create();
    if (files != null) {
      _result.files.addAll(files);
    }
    return _result;
  }
  factory DirectoryFilesReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DirectoryFilesReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DirectoryFilesReply clone() => DirectoryFilesReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DirectoryFilesReply copyWith(void Function(DirectoryFilesReply) updates) => super.copyWith((message) => updates(message as DirectoryFilesReply)) as DirectoryFilesReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DirectoryFilesReply create() => DirectoryFilesReply._();
  DirectoryFilesReply createEmptyInstance() => create();
  static $pb.PbList<DirectoryFilesReply> createRepeated() => $pb.PbList<DirectoryFilesReply>();
  @$core.pragma('dart2js:noInline')
  static DirectoryFilesReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DirectoryFilesReply>(create);
  static DirectoryFilesReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<DirectoryFilesReply_DirectoryFile> get files => $_getList(0);
}

