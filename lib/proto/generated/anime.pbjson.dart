///
//  Generated code. Do not modify.
//  source: anime.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use animeReplyDescriptor instead')
const AnimeReply$json = const {
  '1': 'AnimeReply',
  '2': const [
    const {'1': 'animeId', '3': 1, '4': 1, '5': 5, '10': 'animeId'},
    const {'1': 'totalEpisodes', '3': 2, '4': 1, '5': 5, '10': 'totalEpisodes'},
    const {'1': 'highestEpisodeNumber', '3': 3, '4': 1, '5': 5, '10': 'highestEpisodeNumber'},
    const {'1': 'year', '3': 4, '4': 1, '5': 5, '10': 'year'},
    const {'1': 'type', '3': 5, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'romajiName', '3': 6, '4': 1, '5': 9, '10': 'romajiName'},
    const {'1': 'kanjiName', '3': 7, '4': 1, '5': 9, '10': 'kanjiName'},
    const {'1': 'englishName', '3': 8, '4': 1, '5': 9, '10': 'englishName'},
    const {'1': 'otherName', '3': 9, '4': 1, '5': 9, '9': 0, '10': 'otherName', '17': true},
    const {'1': 'synonyms', '3': 10, '4': 3, '5': 9, '10': 'synonyms'},
    const {'1': 'episodes', '3': 11, '4': 3, '5': 11, '6': '.anisort.anime.Episode', '10': 'episodes'},
    const {'1': 'createdAt', '3': 12, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    const {'1': 'updatedAt', '3': 13, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedAt'},
  ],
  '8': const [
    const {'1': '_otherName'},
  ],
};

/// Descriptor for `AnimeReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List animeReplyDescriptor = $convert.base64Decode('CgpBbmltZVJlcGx5EhgKB2FuaW1lSWQYASABKAVSB2FuaW1lSWQSJAoNdG90YWxFcGlzb2RlcxgCIAEoBVINdG90YWxFcGlzb2RlcxIyChRoaWdoZXN0RXBpc29kZU51bWJlchgDIAEoBVIUaGlnaGVzdEVwaXNvZGVOdW1iZXISEgoEeWVhchgEIAEoBVIEeWVhchISCgR0eXBlGAUgASgJUgR0eXBlEh4KCnJvbWFqaU5hbWUYBiABKAlSCnJvbWFqaU5hbWUSHAoJa2FuamlOYW1lGAcgASgJUglrYW5qaU5hbWUSIAoLZW5nbGlzaE5hbWUYCCABKAlSC2VuZ2xpc2hOYW1lEiEKCW90aGVyTmFtZRgJIAEoCUgAUglvdGhlck5hbWWIAQESGgoIc3lub255bXMYCiADKAlSCHN5bm9ueW1zEjIKCGVwaXNvZGVzGAsgAygLMhYuYW5pc29ydC5hbmltZS5FcGlzb2RlUghlcGlzb2RlcxI4CgljcmVhdGVkQXQYDCABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgljcmVhdGVkQXQSOAoJdXBkYXRlZEF0GA0gASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIJdXBkYXRlZEF0QgwKCl9vdGhlck5hbWU=');
@$core.Deprecated('Use episodeDescriptor instead')
const Episode$json = const {
  '1': 'Episode',
  '2': const [
    const {'1': 'episodeId', '3': 1, '4': 1, '5': 5, '10': 'episodeId'},
    const {'1': 'animeId', '3': 2, '4': 1, '5': 5, '9': 0, '10': 'animeId', '17': true},
    const {'1': 'anime', '3': 3, '4': 1, '5': 11, '6': '.anisort.anime.AnimeReply', '9': 1, '10': 'anime', '17': true},
    const {'1': 'number', '3': 4, '4': 1, '5': 9, '10': 'number'},
    const {'1': 'englishName', '3': 5, '4': 1, '5': 9, '10': 'englishName'},
    const {'1': 'romajiName', '3': 6, '4': 1, '5': 9, '10': 'romajiName'},
    const {'1': 'kanjiName', '3': 7, '4': 1, '5': 9, '10': 'kanjiName'},
    const {'1': 'rating', '3': 8, '4': 1, '5': 5, '9': 2, '10': 'rating', '17': true},
    const {'1': 'voteCount', '3': 9, '4': 1, '5': 5, '9': 3, '10': 'voteCount', '17': true},
    const {'1': 'files', '3': 10, '4': 3, '5': 11, '6': '.anisort.EpisodeFileReply', '10': 'files'},
  ],
  '8': const [
    const {'1': '_animeId'},
    const {'1': '_anime'},
    const {'1': '_rating'},
    const {'1': '_voteCount'},
  ],
};

/// Descriptor for `Episode`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List episodeDescriptor = $convert.base64Decode('CgdFcGlzb2RlEhwKCWVwaXNvZGVJZBgBIAEoBVIJZXBpc29kZUlkEh0KB2FuaW1lSWQYAiABKAVIAFIHYW5pbWVJZIgBARI0CgVhbmltZRgDIAEoCzIZLmFuaXNvcnQuYW5pbWUuQW5pbWVSZXBseUgBUgVhbmltZYgBARIWCgZudW1iZXIYBCABKAlSBm51bWJlchIgCgtlbmdsaXNoTmFtZRgFIAEoCVILZW5nbGlzaE5hbWUSHgoKcm9tYWppTmFtZRgGIAEoCVIKcm9tYWppTmFtZRIcCglrYW5qaU5hbWUYByABKAlSCWthbmppTmFtZRIbCgZyYXRpbmcYCCABKAVIAlIGcmF0aW5niAEBEiEKCXZvdGVDb3VudBgJIAEoBUgDUgl2b3RlQ291bnSIAQESLwoFZmlsZXMYCiADKAsyGS5hbmlzb3J0LkVwaXNvZGVGaWxlUmVwbHlSBWZpbGVzQgoKCF9hbmltZUlkQggKBl9hbmltZUIJCgdfcmF0aW5nQgwKCl92b3RlQ291bnQ=');
@$core.Deprecated('Use fileIdRequestDescriptor instead')
const FileIdRequest$json = const {
  '1': 'FileIdRequest',
  '2': const [
    const {'1': 'episodeFileId', '3': 1, '4': 1, '5': 5, '10': 'episodeFileId'},
  ],
};

/// Descriptor for `FileIdRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fileIdRequestDescriptor = $convert.base64Decode('Cg1GaWxlSWRSZXF1ZXN0EiQKDWVwaXNvZGVGaWxlSWQYASABKAVSDWVwaXNvZGVGaWxlSWQ=');
@$core.Deprecated('Use fileHashRequestDescriptor instead')
const FileHashRequest$json = const {
  '1': 'FileHashRequest',
  '2': const [
    const {'1': 'ed2kHash', '3': 1, '4': 1, '5': 12, '10': 'ed2kHash'},
    const {'1': 'fileSize', '3': 2, '4': 1, '5': 3, '10': 'fileSize'},
  ],
};

/// Descriptor for `FileHashRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fileHashRequestDescriptor = $convert.base64Decode('Cg9GaWxlSGFzaFJlcXVlc3QSGgoIZWQya0hhc2gYASABKAxSCGVkMmtIYXNoEhoKCGZpbGVTaXplGAIgASgDUghmaWxlU2l6ZQ==');
