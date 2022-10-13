///
//  Generated code. Do not modify.
//  source: anime.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name, depend_on_referenced_packages, no_leading_underscores_for_local_identifiers

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/timestamp.pb.dart' as $7;
import 'episode_files.pb.dart' as $8;

class AnimeReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AnimeReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'anisort.anime'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'animeId', $pb.PbFieldType.O3, protoName: 'animeId')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalEpisodes', $pb.PbFieldType.O3, protoName: 'totalEpisodes')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'highestEpisodeNumber', $pb.PbFieldType.O3, protoName: 'highestEpisodeNumber')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'year', $pb.PbFieldType.O3)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'romajiName', protoName: 'romajiName')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'kanjiName', protoName: 'kanjiName')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'englishName', protoName: 'englishName')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'otherName', protoName: 'otherName')
    ..pPS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'synonyms')
    ..pc<Episode>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'episodes', $pb.PbFieldType.PM, subBuilder: Episode.create)
    ..aOM<$7.Timestamp>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', protoName: 'createdAt', subBuilder: $7.Timestamp.create)
    ..aOM<$7.Timestamp>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedAt', protoName: 'updatedAt', subBuilder: $7.Timestamp.create)
    ..hasRequiredFields = false
  ;

  AnimeReply._() : super();
  factory AnimeReply({
    $core.int? animeId,
    $core.int? totalEpisodes,
    $core.int? highestEpisodeNumber,
    $core.int? year,
    $core.String? type,
    $core.String? romajiName,
    $core.String? kanjiName,
    $core.String? englishName,
    $core.String? otherName,
    $core.Iterable<$core.String>? synonyms,
    $core.Iterable<Episode>? episodes,
    $7.Timestamp? createdAt,
    $7.Timestamp? updatedAt,
  }) {
    final _result = create();
    if (animeId != null) {
      _result.animeId = animeId;
    }
    if (totalEpisodes != null) {
      _result.totalEpisodes = totalEpisodes;
    }
    if (highestEpisodeNumber != null) {
      _result.highestEpisodeNumber = highestEpisodeNumber;
    }
    if (year != null) {
      _result.year = year;
    }
    if (type != null) {
      _result.type = type;
    }
    if (romajiName != null) {
      _result.romajiName = romajiName;
    }
    if (kanjiName != null) {
      _result.kanjiName = kanjiName;
    }
    if (englishName != null) {
      _result.englishName = englishName;
    }
    if (otherName != null) {
      _result.otherName = otherName;
    }
    if (synonyms != null) {
      _result.synonyms.addAll(synonyms);
    }
    if (episodes != null) {
      _result.episodes.addAll(episodes);
    }
    if (createdAt != null) {
      _result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      _result.updatedAt = updatedAt;
    }
    return _result;
  }
  factory AnimeReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AnimeReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AnimeReply clone() => AnimeReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AnimeReply copyWith(void Function(AnimeReply) updates) => super.copyWith((message) => updates(message as AnimeReply)) as AnimeReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AnimeReply create() => AnimeReply._();
  AnimeReply createEmptyInstance() => create();
  static $pb.PbList<AnimeReply> createRepeated() => $pb.PbList<AnimeReply>();
  @$core.pragma('dart2js:noInline')
  static AnimeReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AnimeReply>(create);
  static AnimeReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get animeId => $_getIZ(0);
  @$pb.TagNumber(1)
  set animeId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAnimeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAnimeId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get totalEpisodes => $_getIZ(1);
  @$pb.TagNumber(2)
  set totalEpisodes($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTotalEpisodes() => $_has(1);
  @$pb.TagNumber(2)
  void clearTotalEpisodes() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get highestEpisodeNumber => $_getIZ(2);
  @$pb.TagNumber(3)
  set highestEpisodeNumber($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasHighestEpisodeNumber() => $_has(2);
  @$pb.TagNumber(3)
  void clearHighestEpisodeNumber() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get year => $_getIZ(3);
  @$pb.TagNumber(4)
  set year($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasYear() => $_has(3);
  @$pb.TagNumber(4)
  void clearYear() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get type => $_getSZ(4);
  @$pb.TagNumber(5)
  set type($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasType() => $_has(4);
  @$pb.TagNumber(5)
  void clearType() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get romajiName => $_getSZ(5);
  @$pb.TagNumber(6)
  set romajiName($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasRomajiName() => $_has(5);
  @$pb.TagNumber(6)
  void clearRomajiName() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get kanjiName => $_getSZ(6);
  @$pb.TagNumber(7)
  set kanjiName($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasKanjiName() => $_has(6);
  @$pb.TagNumber(7)
  void clearKanjiName() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get englishName => $_getSZ(7);
  @$pb.TagNumber(8)
  set englishName($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasEnglishName() => $_has(7);
  @$pb.TagNumber(8)
  void clearEnglishName() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get otherName => $_getSZ(8);
  @$pb.TagNumber(9)
  set otherName($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasOtherName() => $_has(8);
  @$pb.TagNumber(9)
  void clearOtherName() => clearField(9);

  @$pb.TagNumber(10)
  $core.List<$core.String> get synonyms => $_getList(9);

  @$pb.TagNumber(11)
  $core.List<Episode> get episodes => $_getList(10);

  @$pb.TagNumber(12)
  $7.Timestamp get createdAt => $_getN(11);
  @$pb.TagNumber(12)
  set createdAt($7.Timestamp v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasCreatedAt() => $_has(11);
  @$pb.TagNumber(12)
  void clearCreatedAt() => clearField(12);
  @$pb.TagNumber(12)
  $7.Timestamp ensureCreatedAt() => $_ensure(11);

  @$pb.TagNumber(13)
  $7.Timestamp get updatedAt => $_getN(12);
  @$pb.TagNumber(13)
  set updatedAt($7.Timestamp v) { setField(13, v); }
  @$pb.TagNumber(13)
  $core.bool hasUpdatedAt() => $_has(12);
  @$pb.TagNumber(13)
  void clearUpdatedAt() => clearField(13);
  @$pb.TagNumber(13)
  $7.Timestamp ensureUpdatedAt() => $_ensure(12);
}

class Episode extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Episode', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'anisort.anime'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'episodeId', $pb.PbFieldType.O3, protoName: 'episodeId')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'animeId', $pb.PbFieldType.O3, protoName: 'animeId')
    ..aOM<AnimeReply>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'anime', subBuilder: AnimeReply.create)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'number')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'englishName', protoName: 'englishName')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'romajiName', protoName: 'romajiName')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'kanjiName', protoName: 'kanjiName')
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rating', $pb.PbFieldType.O3)
    ..a<$core.int>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'voteCount', $pb.PbFieldType.O3, protoName: 'voteCount')
    ..pc<$8.EpisodeFileReply>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'files', $pb.PbFieldType.PM, subBuilder: $8.EpisodeFileReply.create)
    ..hasRequiredFields = false
  ;

  Episode._() : super();
  factory Episode({
    $core.int? episodeId,
    $core.int? animeId,
    AnimeReply? anime,
    $core.String? number,
    $core.String? englishName,
    $core.String? romajiName,
    $core.String? kanjiName,
    $core.int? rating,
    $core.int? voteCount,
    $core.Iterable<$8.EpisodeFileReply>? files,
  }) {
    final _result = create();
    if (episodeId != null) {
      _result.episodeId = episodeId;
    }
    if (animeId != null) {
      _result.animeId = animeId;
    }
    if (anime != null) {
      _result.anime = anime;
    }
    if (number != null) {
      _result.number = number;
    }
    if (englishName != null) {
      _result.englishName = englishName;
    }
    if (romajiName != null) {
      _result.romajiName = romajiName;
    }
    if (kanjiName != null) {
      _result.kanjiName = kanjiName;
    }
    if (rating != null) {
      _result.rating = rating;
    }
    if (voteCount != null) {
      _result.voteCount = voteCount;
    }
    if (files != null) {
      _result.files.addAll(files);
    }
    return _result;
  }
  factory Episode.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Episode.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Episode clone() => Episode()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Episode copyWith(void Function(Episode) updates) => super.copyWith((message) => updates(message as Episode)) as Episode; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Episode create() => Episode._();
  Episode createEmptyInstance() => create();
  static $pb.PbList<Episode> createRepeated() => $pb.PbList<Episode>();
  @$core.pragma('dart2js:noInline')
  static Episode getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Episode>(create);
  static Episode? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get episodeId => $_getIZ(0);
  @$pb.TagNumber(1)
  set episodeId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEpisodeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearEpisodeId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get animeId => $_getIZ(1);
  @$pb.TagNumber(2)
  set animeId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAnimeId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAnimeId() => clearField(2);

  @$pb.TagNumber(3)
  AnimeReply get anime => $_getN(2);
  @$pb.TagNumber(3)
  set anime(AnimeReply v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasAnime() => $_has(2);
  @$pb.TagNumber(3)
  void clearAnime() => clearField(3);
  @$pb.TagNumber(3)
  AnimeReply ensureAnime() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get number => $_getSZ(3);
  @$pb.TagNumber(4)
  set number($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasNumber() => $_has(3);
  @$pb.TagNumber(4)
  void clearNumber() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get englishName => $_getSZ(4);
  @$pb.TagNumber(5)
  set englishName($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasEnglishName() => $_has(4);
  @$pb.TagNumber(5)
  void clearEnglishName() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get romajiName => $_getSZ(5);
  @$pb.TagNumber(6)
  set romajiName($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasRomajiName() => $_has(5);
  @$pb.TagNumber(6)
  void clearRomajiName() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get kanjiName => $_getSZ(6);
  @$pb.TagNumber(7)
  set kanjiName($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasKanjiName() => $_has(6);
  @$pb.TagNumber(7)
  void clearKanjiName() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get rating => $_getIZ(7);
  @$pb.TagNumber(8)
  set rating($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasRating() => $_has(7);
  @$pb.TagNumber(8)
  void clearRating() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get voteCount => $_getIZ(8);
  @$pb.TagNumber(9)
  set voteCount($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasVoteCount() => $_has(8);
  @$pb.TagNumber(9)
  void clearVoteCount() => clearField(9);

  @$pb.TagNumber(10)
  $core.List<$8.EpisodeFileReply> get files => $_getList(9);
}

class FileIdRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FileIdRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'anisort.anime'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'episodeFileId', $pb.PbFieldType.O3, protoName: 'episodeFileId')
    ..hasRequiredFields = false
  ;

  FileIdRequest._() : super();
  factory FileIdRequest({
    $core.int? episodeFileId,
  }) {
    final _result = create();
    if (episodeFileId != null) {
      _result.episodeFileId = episodeFileId;
    }
    return _result;
  }
  factory FileIdRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FileIdRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FileIdRequest clone() => FileIdRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FileIdRequest copyWith(void Function(FileIdRequest) updates) => super.copyWith((message) => updates(message as FileIdRequest)) as FileIdRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FileIdRequest create() => FileIdRequest._();
  FileIdRequest createEmptyInstance() => create();
  static $pb.PbList<FileIdRequest> createRepeated() => $pb.PbList<FileIdRequest>();
  @$core.pragma('dart2js:noInline')
  static FileIdRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FileIdRequest>(create);
  static FileIdRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get episodeFileId => $_getIZ(0);
  @$pb.TagNumber(1)
  set episodeFileId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEpisodeFileId() => $_has(0);
  @$pb.TagNumber(1)
  void clearEpisodeFileId() => clearField(1);
}

class FileHashRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FileHashRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'anisort.anime'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ed2kHash', $pb.PbFieldType.OY, protoName: 'ed2kHash')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fileSize', protoName: 'fileSize')
    ..hasRequiredFields = false
  ;

  FileHashRequest._() : super();
  factory FileHashRequest({
    $core.List<$core.int>? ed2kHash,
    $fixnum.Int64? fileSize,
  }) {
    final _result = create();
    if (ed2kHash != null) {
      _result.ed2kHash = ed2kHash;
    }
    if (fileSize != null) {
      _result.fileSize = fileSize;
    }
    return _result;
  }
  factory FileHashRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FileHashRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FileHashRequest clone() => FileHashRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FileHashRequest copyWith(void Function(FileHashRequest) updates) => super.copyWith((message) => updates(message as FileHashRequest)) as FileHashRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FileHashRequest create() => FileHashRequest._();
  FileHashRequest createEmptyInstance() => create();
  static $pb.PbList<FileHashRequest> createRepeated() => $pb.PbList<FileHashRequest>();
  @$core.pragma('dart2js:noInline')
  static FileHashRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FileHashRequest>(create);
  static FileHashRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get ed2kHash => $_getN(0);
  @$pb.TagNumber(1)
  set ed2kHash($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEd2kHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearEd2kHash() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get fileSize => $_getI64(1);
  @$pb.TagNumber(2)
  set fileSize($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFileSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearFileSize() => clearField(2);
}

