///
//  Generated code. Do not modify.
//  source: files.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class ImportStatus extends $pb.ProtobufEnum {
  static const ImportStatus NotYetImported = ImportStatus._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NotYetImported');
  static const ImportStatus Imported = ImportStatus._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Imported');
  static const ImportStatus Error = ImportStatus._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Error');
  static const ImportStatus NoFileFound = ImportStatus._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NoFileFound');
  static const ImportStatus ImportedMissingData = ImportStatus._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ImportedMissingData');
  static const ImportStatus Hashed = ImportStatus._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Hashed');

  static const $core.List<ImportStatus> values = <ImportStatus> [
    NotYetImported,
    Imported,
    Error,
    NoFileFound,
    ImportedMissingData,
    Hashed,
  ];

  static final $core.Map<$core.int, ImportStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ImportStatus? valueOf($core.int value) => _byValue[value];

  const ImportStatus._($core.int v, $core.String n) : super(v, n);
}

class FileActionType extends $pb.ProtobufEnum {
  static const FileActionType Hash = FileActionType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Hash');
  static const FileActionType Search = FileActionType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Search');
  static const FileActionType Copy = FileActionType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Copy');
  static const FileActionType Move = FileActionType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Move');
  static const FileActionType Delete = FileActionType._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Delete');
  static const FileActionType Copied = FileActionType._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Copied');

  static const $core.List<FileActionType> values = <FileActionType> [
    Hash,
    Search,
    Copy,
    Move,
    Delete,
    Copied,
  ];

  static final $core.Map<$core.int, FileActionType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static FileActionType? valueOf($core.int value) => _byValue[value];

  const FileActionType._($core.int v, $core.String n) : super(v, n);
}

class LocalFileSortBy extends $pb.ProtobufEnum {
  static const LocalFileSortBy Path = LocalFileSortBy._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Path');
  static const LocalFileSortBy Length = LocalFileSortBy._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Length');
  static const LocalFileSortBy SortByHash = LocalFileSortBy._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SortByHash');
  static const LocalFileSortBy Status = LocalFileSortBy._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Status');
  static const LocalFileSortBy CreatedAt = LocalFileSortBy._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CreatedAt');
  static const LocalFileSortBy UpdatedAt = LocalFileSortBy._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UpdatedAt');

  static const $core.List<LocalFileSortBy> values = <LocalFileSortBy> [
    Path,
    Length,
    SortByHash,
    Status,
    CreatedAt,
    UpdatedAt,
  ];

  static final $core.Map<$core.int, LocalFileSortBy> _byValue = $pb.ProtobufEnum.initByValue(values);
  static LocalFileSortBy? valueOf($core.int value) => _byValue[value];

  const LocalFileSortBy._($core.int v, $core.String n) : super(v, n);
}

class DirectoryFilesReply_DirectoryFileType extends $pb.ProtobufEnum {
  static const DirectoryFilesReply_DirectoryFileType File = DirectoryFilesReply_DirectoryFileType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'File');
  static const DirectoryFilesReply_DirectoryFileType Directory = DirectoryFilesReply_DirectoryFileType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Directory');

  static const $core.List<DirectoryFilesReply_DirectoryFileType> values = <DirectoryFilesReply_DirectoryFileType> [
    File,
    Directory,
  ];

  static final $core.Map<$core.int, DirectoryFilesReply_DirectoryFileType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DirectoryFilesReply_DirectoryFileType? valueOf($core.int value) => _byValue[value];

  const DirectoryFilesReply_DirectoryFileType._($core.int v, $core.String n) : super(v, n);
}

