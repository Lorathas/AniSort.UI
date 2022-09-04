///
//  Generated code. Do not modify.
//  source: files.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use importStatusDescriptor instead')
const ImportStatus$json = const {
  '1': 'ImportStatus',
  '2': const [
    const {'1': 'NotYetImported', '2': 0},
    const {'1': 'Imported', '2': 1},
    const {'1': 'Error', '2': 2},
    const {'1': 'NoFileFound', '2': 3},
    const {'1': 'ImportedMissingData', '2': 4},
    const {'1': 'Hashed', '2': 5},
  ],
};

/// Descriptor for `ImportStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List importStatusDescriptor = $convert.base64Decode('CgxJbXBvcnRTdGF0dXMSEgoOTm90WWV0SW1wb3J0ZWQQABIMCghJbXBvcnRlZBABEgkKBUVycm9yEAISDwoLTm9GaWxlRm91bmQQAxIXChNJbXBvcnRlZE1pc3NpbmdEYXRhEAQSCgoGSGFzaGVkEAU=');
@$core.Deprecated('Use fileActionTypeDescriptor instead')
const FileActionType$json = const {
  '1': 'FileActionType',
  '2': const [
    const {'1': 'Hash', '2': 0},
    const {'1': 'Search', '2': 1},
    const {'1': 'Copy', '2': 2},
    const {'1': 'Move', '2': 3},
    const {'1': 'Delete', '2': 4},
    const {'1': 'Copied', '2': 5},
  ],
};

/// Descriptor for `FileActionType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List fileActionTypeDescriptor = $convert.base64Decode('Cg5GaWxlQWN0aW9uVHlwZRIICgRIYXNoEAASCgoGU2VhcmNoEAESCAoEQ29weRACEggKBE1vdmUQAxIKCgZEZWxldGUQBBIKCgZDb3BpZWQQBQ==');
@$core.Deprecated('Use localFileSortByDescriptor instead')
const LocalFileSortBy$json = const {
  '1': 'LocalFileSortBy',
  '2': const [
    const {'1': 'Path', '2': 0},
    const {'1': 'Length', '2': 1},
    const {'1': 'SortByHash', '2': 2},
    const {'1': 'Status', '2': 3},
    const {'1': 'CreatedAt', '2': 4},
    const {'1': 'UpdatedAt', '2': 5},
  ],
};

/// Descriptor for `LocalFileSortBy`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List localFileSortByDescriptor = $convert.base64Decode('Cg9Mb2NhbEZpbGVTb3J0QnkSCAoEUGF0aBAAEgoKBkxlbmd0aBABEg4KClNvcnRCeUhhc2gQAhIKCgZTdGF0dXMQAxINCglDcmVhdGVkQXQQBBINCglVcGRhdGVkQXQQBQ==');
@$core.Deprecated('Use localFileReplyDescriptor instead')
const LocalFileReply$json = const {
  '1': 'LocalFileReply',
  '2': const [
    const {'1': 'localFileId', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'localFileId', '17': true},
    const {'1': 'episodeFileId', '3': 2, '4': 1, '5': 5, '9': 1, '10': 'episodeFileId', '17': true},
    const {'1': 'episodeFile', '3': 12, '4': 1, '5': 11, '6': '.anisort.EpisodeFileReply', '9': 2, '10': 'episodeFile', '17': true},
    const {'1': 'path', '3': 3, '4': 1, '5': 9, '10': 'path'},
    const {'1': 'ed2kHash', '3': 4, '4': 1, '5': 12, '9': 3, '10': 'ed2kHash', '17': true},
    const {'1': 'md5Hash', '3': 5, '4': 1, '5': 12, '9': 4, '10': 'md5Hash', '17': true},
    const {'1': 'sha3_512Hash', '3': 6, '4': 1, '5': 12, '9': 5, '10': 'sha3512Hash', '17': true},
    const {'1': 'fileLength', '3': 7, '4': 1, '5': 3, '10': 'fileLength'},
    const {'1': 'fileActions', '3': 8, '4': 3, '5': 11, '6': '.anisort.files.FileActionReply', '10': 'fileActions'},
    const {'1': 'status', '3': 9, '4': 1, '5': 14, '6': '.anisort.files.ImportStatus', '10': 'status'},
    const {'1': 'createdAt', '3': 10, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    const {'1': 'updatedAt', '3': 11, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedAt'},
  ],
  '8': const [
    const {'1': '_localFileId'},
    const {'1': '_episodeFileId'},
    const {'1': '_episodeFile'},
    const {'1': '_ed2kHash'},
    const {'1': '_md5Hash'},
    const {'1': '_sha3_512Hash'},
  ],
};

/// Descriptor for `LocalFileReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List localFileReplyDescriptor = $convert.base64Decode('Cg5Mb2NhbEZpbGVSZXBseRIlCgtsb2NhbEZpbGVJZBgBIAEoCUgAUgtsb2NhbEZpbGVJZIgBARIpCg1lcGlzb2RlRmlsZUlkGAIgASgFSAFSDWVwaXNvZGVGaWxlSWSIAQESQAoLZXBpc29kZUZpbGUYDCABKAsyGS5hbmlzb3J0LkVwaXNvZGVGaWxlUmVwbHlIAlILZXBpc29kZUZpbGWIAQESEgoEcGF0aBgDIAEoCVIEcGF0aBIfCghlZDJrSGFzaBgEIAEoDEgDUghlZDJrSGFzaIgBARIdCgdtZDVIYXNoGAUgASgMSARSB21kNUhhc2iIAQESJgoMc2hhM181MTJIYXNoGAYgASgMSAVSC3NoYTM1MTJIYXNoiAEBEh4KCmZpbGVMZW5ndGgYByABKANSCmZpbGVMZW5ndGgSQAoLZmlsZUFjdGlvbnMYCCADKAsyHi5hbmlzb3J0LmZpbGVzLkZpbGVBY3Rpb25SZXBseVILZmlsZUFjdGlvbnMSMwoGc3RhdHVzGAkgASgOMhsuYW5pc29ydC5maWxlcy5JbXBvcnRTdGF0dXNSBnN0YXR1cxI4CgljcmVhdGVkQXQYCiABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgljcmVhdGVkQXQSOAoJdXBkYXRlZEF0GAsgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIJdXBkYXRlZEF0Qg4KDF9sb2NhbEZpbGVJZEIQCg5fZXBpc29kZUZpbGVJZEIOCgxfZXBpc29kZUZpbGVCCwoJX2VkMmtIYXNoQgoKCF9tZDVIYXNoQg8KDV9zaGEzXzUxMkhhc2g=');
@$core.Deprecated('Use localFileUpdateReplyDescriptor instead')
const LocalFileUpdateReply$json = const {
  '1': 'LocalFileUpdateReply',
  '2': const [
    const {'1': 'updateType', '3': 13, '4': 1, '5': 14, '6': '.anisort.HubUpdate', '10': 'updateType'},
    const {'1': 'localFileId', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'localFileId', '17': true},
    const {'1': 'episodeFileId', '3': 2, '4': 1, '5': 5, '9': 1, '10': 'episodeFileId', '17': true},
    const {'1': 'episodeFile', '3': 12, '4': 1, '5': 11, '6': '.anisort.EpisodeFileReply', '9': 2, '10': 'episodeFile', '17': true},
    const {'1': 'path', '3': 3, '4': 1, '5': 9, '10': 'path'},
    const {'1': 'ed2kHash', '3': 4, '4': 1, '5': 12, '9': 3, '10': 'ed2kHash', '17': true},
    const {'1': 'md5Hash', '3': 5, '4': 1, '5': 12, '9': 4, '10': 'md5Hash', '17': true},
    const {'1': 'sha3_512Hash', '3': 6, '4': 1, '5': 12, '9': 5, '10': 'sha3512Hash', '17': true},
    const {'1': 'fileLength', '3': 7, '4': 1, '5': 3, '10': 'fileLength'},
    const {'1': 'fileActions', '3': 8, '4': 3, '5': 11, '6': '.anisort.files.FileActionReply', '10': 'fileActions'},
    const {'1': 'status', '3': 9, '4': 1, '5': 14, '6': '.anisort.files.ImportStatus', '10': 'status'},
    const {'1': 'createdAt', '3': 10, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    const {'1': 'updatedAt', '3': 11, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedAt'},
  ],
  '8': const [
    const {'1': '_localFileId'},
    const {'1': '_episodeFileId'},
    const {'1': '_episodeFile'},
    const {'1': '_ed2kHash'},
    const {'1': '_md5Hash'},
    const {'1': '_sha3_512Hash'},
  ],
};

/// Descriptor for `LocalFileUpdateReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List localFileUpdateReplyDescriptor = $convert.base64Decode('ChRMb2NhbEZpbGVVcGRhdGVSZXBseRIyCgp1cGRhdGVUeXBlGA0gASgOMhIuYW5pc29ydC5IdWJVcGRhdGVSCnVwZGF0ZVR5cGUSJQoLbG9jYWxGaWxlSWQYASABKAlIAFILbG9jYWxGaWxlSWSIAQESKQoNZXBpc29kZUZpbGVJZBgCIAEoBUgBUg1lcGlzb2RlRmlsZUlkiAEBEkAKC2VwaXNvZGVGaWxlGAwgASgLMhkuYW5pc29ydC5FcGlzb2RlRmlsZVJlcGx5SAJSC2VwaXNvZGVGaWxliAEBEhIKBHBhdGgYAyABKAlSBHBhdGgSHwoIZWQya0hhc2gYBCABKAxIA1IIZWQya0hhc2iIAQESHQoHbWQ1SGFzaBgFIAEoDEgEUgdtZDVIYXNoiAEBEiYKDHNoYTNfNTEySGFzaBgGIAEoDEgFUgtzaGEzNTEySGFzaIgBARIeCgpmaWxlTGVuZ3RoGAcgASgDUgpmaWxlTGVuZ3RoEkAKC2ZpbGVBY3Rpb25zGAggAygLMh4uYW5pc29ydC5maWxlcy5GaWxlQWN0aW9uUmVwbHlSC2ZpbGVBY3Rpb25zEjMKBnN0YXR1cxgJIAEoDjIbLmFuaXNvcnQuZmlsZXMuSW1wb3J0U3RhdHVzUgZzdGF0dXMSOAoJY3JlYXRlZEF0GAogASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIJY3JlYXRlZEF0EjgKCXVwZGF0ZWRBdBgLIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCXVwZGF0ZWRBdEIOCgxfbG9jYWxGaWxlSWRCEAoOX2VwaXNvZGVGaWxlSWRCDgoMX2VwaXNvZGVGaWxlQgsKCV9lZDJrSGFzaEIKCghfbWQ1SGFzaEIPCg1fc2hhM181MTJIYXNo');
@$core.Deprecated('Use fileActionReplyDescriptor instead')
const FileActionReply$json = const {
  '1': 'FileActionReply',
  '2': const [
    const {'1': 'fileActionId', '3': 1, '4': 1, '5': 9, '10': 'fileActionId'},
    const {'1': 'type', '3': 2, '4': 1, '5': 14, '6': '.anisort.files.FileActionType', '10': 'type'},
    const {'1': 'success', '3': 3, '4': 1, '5': 8, '10': 'success'},
    const {'1': 'info', '3': 4, '4': 1, '5': 9, '10': 'info'},
    const {'1': 'exception', '3': 5, '4': 1, '5': 9, '9': 0, '10': 'exception', '17': true},
    const {'1': 'localFileId', '3': 6, '4': 1, '5': 9, '9': 1, '10': 'localFileId', '17': true},
    const {'1': 'localFile', '3': 7, '4': 1, '5': 11, '6': '.anisort.files.LocalFileReply', '9': 2, '10': 'localFile', '17': true},
    const {'1': 'createdAt', '3': 8, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    const {'1': 'updatedAt', '3': 9, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedAt'},
  ],
  '8': const [
    const {'1': '_exception'},
    const {'1': '_localFileId'},
    const {'1': '_localFile'},
  ],
};

/// Descriptor for `FileActionReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fileActionReplyDescriptor = $convert.base64Decode('Cg9GaWxlQWN0aW9uUmVwbHkSIgoMZmlsZUFjdGlvbklkGAEgASgJUgxmaWxlQWN0aW9uSWQSMQoEdHlwZRgCIAEoDjIdLmFuaXNvcnQuZmlsZXMuRmlsZUFjdGlvblR5cGVSBHR5cGUSGAoHc3VjY2VzcxgDIAEoCFIHc3VjY2VzcxISCgRpbmZvGAQgASgJUgRpbmZvEiEKCWV4Y2VwdGlvbhgFIAEoCUgAUglleGNlcHRpb26IAQESJQoLbG9jYWxGaWxlSWQYBiABKAlIAVILbG9jYWxGaWxlSWSIAQESQAoJbG9jYWxGaWxlGAcgASgLMh0uYW5pc29ydC5maWxlcy5Mb2NhbEZpbGVSZXBseUgCUglsb2NhbEZpbGWIAQESOAoJY3JlYXRlZEF0GAggASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIJY3JlYXRlZEF0EjgKCXVwZGF0ZWRBdBgJIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCXVwZGF0ZWRBdEIMCgpfZXhjZXB0aW9uQg4KDF9sb2NhbEZpbGVJZEIMCgpfbG9jYWxGaWxl');
@$core.Deprecated('Use filteredLocalFilesRequestDescriptor instead')
const FilteredLocalFilesRequest$json = const {
  '1': 'FilteredLocalFilesRequest',
  '2': const [
    const {'1': 'page', '3': 1, '4': 1, '5': 5, '10': 'page'},
    const {'1': 'search', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'search', '17': true},
    const {'1': 'startTime', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '9': 1, '10': 'startTime', '17': true},
    const {'1': 'endTime', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '9': 2, '10': 'endTime', '17': true},
    const {'1': 'status', '3': 5, '4': 1, '5': 14, '6': '.anisort.files.ImportStatus', '9': 3, '10': 'status', '17': true},
    const {'1': 'sort', '3': 6, '4': 1, '5': 14, '6': '.anisort.SortDirection', '9': 4, '10': 'sort', '17': true},
    const {'1': 'sortBy', '3': 7, '4': 1, '5': 14, '6': '.anisort.files.LocalFileSortBy', '9': 5, '10': 'sortBy', '17': true},
  ],
  '8': const [
    const {'1': '_search'},
    const {'1': '_startTime'},
    const {'1': '_endTime'},
    const {'1': '_status'},
    const {'1': '_sort'},
    const {'1': '_sortBy'},
  ],
};

/// Descriptor for `FilteredLocalFilesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List filteredLocalFilesRequestDescriptor = $convert.base64Decode('ChlGaWx0ZXJlZExvY2FsRmlsZXNSZXF1ZXN0EhIKBHBhZ2UYASABKAVSBHBhZ2USGwoGc2VhcmNoGAIgASgJSABSBnNlYXJjaIgBARI9CglzdGFydFRpbWUYAyABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wSAFSCXN0YXJ0VGltZYgBARI5CgdlbmRUaW1lGAQgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcEgCUgdlbmRUaW1liAEBEjgKBnN0YXR1cxgFIAEoDjIbLmFuaXNvcnQuZmlsZXMuSW1wb3J0U3RhdHVzSANSBnN0YXR1c4gBARIvCgRzb3J0GAYgASgOMhYuYW5pc29ydC5Tb3J0RGlyZWN0aW9uSARSBHNvcnSIAQESOwoGc29ydEJ5GAcgASgOMh4uYW5pc29ydC5maWxlcy5Mb2NhbEZpbGVTb3J0QnlIBVIGc29ydEJ5iAEBQgkKB19zZWFyY2hCDAoKX3N0YXJ0VGltZUIKCghfZW5kVGltZUIJCgdfc3RhdHVzQgcKBV9zb3J0QgkKB19zb3J0Qnk=');
@$core.Deprecated('Use localFileRequestDescriptor instead')
const LocalFileRequest$json = const {
  '1': 'LocalFileRequest',
  '2': const [
    const {'1': 'localFileId', '3': 1, '4': 1, '5': 9, '10': 'localFileId'},
  ],
};

/// Descriptor for `LocalFileRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List localFileRequestDescriptor = $convert.base64Decode('ChBMb2NhbEZpbGVSZXF1ZXN0EiAKC2xvY2FsRmlsZUlkGAEgASgJUgtsb2NhbEZpbGVJZA==');
@$core.Deprecated('Use drivesReplyDescriptor instead')
const DrivesReply$json = const {
  '1': 'DrivesReply',
  '2': const [
    const {'1': 'drives', '3': 1, '4': 3, '5': 9, '10': 'drives'},
  ],
};

/// Descriptor for `DrivesReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List drivesReplyDescriptor = $convert.base64Decode('CgtEcml2ZXNSZXBseRIWCgZkcml2ZXMYASADKAlSBmRyaXZlcw==');
@$core.Deprecated('Use directoryFilesRequestDescriptor instead')
const DirectoryFilesRequest$json = const {
  '1': 'DirectoryFilesRequest',
  '2': const [
    const {'1': 'path', '3': 1, '4': 1, '5': 9, '10': 'path'},
  ],
};

/// Descriptor for `DirectoryFilesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List directoryFilesRequestDescriptor = $convert.base64Decode('ChVEaXJlY3RvcnlGaWxlc1JlcXVlc3QSEgoEcGF0aBgBIAEoCVIEcGF0aA==');
@$core.Deprecated('Use directoryFilesReplyDescriptor instead')
const DirectoryFilesReply$json = const {
  '1': 'DirectoryFilesReply',
  '2': const [
    const {'1': 'files', '3': 1, '4': 3, '5': 11, '6': '.anisort.files.DirectoryFilesReply.DirectoryFile', '10': 'files'},
  ],
  '3': const [DirectoryFilesReply_DirectoryFile$json],
  '4': const [DirectoryFilesReply_DirectoryFileType$json],
};

@$core.Deprecated('Use directoryFilesReplyDescriptor instead')
const DirectoryFilesReply_DirectoryFile$json = const {
  '1': 'DirectoryFile',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.anisort.files.DirectoryFilesReply.DirectoryFileType', '10': 'type'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

@$core.Deprecated('Use directoryFilesReplyDescriptor instead')
const DirectoryFilesReply_DirectoryFileType$json = const {
  '1': 'DirectoryFileType',
  '2': const [
    const {'1': 'File', '2': 0},
    const {'1': 'Directory', '2': 1},
  ],
};

/// Descriptor for `DirectoryFilesReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List directoryFilesReplyDescriptor = $convert.base64Decode('ChNEaXJlY3RvcnlGaWxlc1JlcGx5EkYKBWZpbGVzGAEgAygLMjAuYW5pc29ydC5maWxlcy5EaXJlY3RvcnlGaWxlc1JlcGx5LkRpcmVjdG9yeUZpbGVSBWZpbGVzGm0KDURpcmVjdG9yeUZpbGUSSAoEdHlwZRgBIAEoDjI0LmFuaXNvcnQuZmlsZXMuRGlyZWN0b3J5RmlsZXNSZXBseS5EaXJlY3RvcnlGaWxlVHlwZVIEdHlwZRISCgRuYW1lGAIgASgJUgRuYW1lIiwKEURpcmVjdG9yeUZpbGVUeXBlEggKBEZpbGUQABINCglEaXJlY3RvcnkQAQ==');
