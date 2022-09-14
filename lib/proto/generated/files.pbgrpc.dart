///
//  Generated code. Do not modify.
//  source: files.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'files.pb.dart' as $1;
import 'common.pb.dart' as $2;
import 'google/protobuf/empty.pb.dart' as $3;
export 'files.pb.dart';

class LocalFileServiceClient extends $grpc.Client {
  static final _$listFiles =
      $grpc.ClientMethod<$1.FilteredLocalFilesRequest, $1.LocalFileReply>(
          '/anisort.files.LocalFileService/ListFiles',
          ($1.FilteredLocalFilesRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.LocalFileReply.fromBuffer(value));
  static final _$listenForFileUpdates =
      $grpc.ClientMethod<$1.LocalFileRequest, $1.LocalFileUpdateReply>(
          '/anisort.files.LocalFileService/ListenForFileUpdates',
          ($1.LocalFileRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.LocalFileUpdateReply.fromBuffer(value));
  static final _$listenForAllFileUpdates =
      $grpc.ClientMethod<$1.FilteredLocalFilesRequest, $1.LocalFileUpdateReply>(
          '/anisort.files.LocalFileService/ListenForAllFileUpdates',
          ($1.FilteredLocalFilesRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.LocalFileUpdateReply.fromBuffer(value));
  static final _$getFileDetails =
      $grpc.ClientMethod<$1.LocalFileRequest, $1.LocalFileReply>(
          '/anisort.files.LocalFileService/GetFileDetails',
          ($1.LocalFileRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.LocalFileReply.fromBuffer(value));
  static final _$getPageInfo =
      $grpc.ClientMethod<$1.FilteredLocalFilesRequest, $2.PagesInfo>(
          '/anisort.files.LocalFileService/GetPageInfo',
          ($1.FilteredLocalFilesRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.PagesInfo.fromBuffer(value));
  static final _$getDrives = $grpc.ClientMethod<$3.Empty, $1.DrivesReply>(
      '/anisort.files.LocalFileService/GetDrives',
      ($3.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.DrivesReply.fromBuffer(value));
  static final _$getFilesInDirectory =
      $grpc.ClientMethod<$1.DirectoryFilesRequest, $1.DirectoryFilesReply>(
          '/anisort.files.LocalFileService/GetFilesInDirectory',
          ($1.DirectoryFilesRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.DirectoryFilesReply.fromBuffer(value));

  LocalFileServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$1.LocalFileReply> listFiles(
      $1.FilteredLocalFilesRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$listFiles, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$1.LocalFileUpdateReply> listenForFileUpdates(
      $1.LocalFileRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$listenForFileUpdates, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$1.LocalFileUpdateReply> listenForAllFileUpdates(
      $1.FilteredLocalFilesRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$listenForAllFileUpdates, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$1.LocalFileReply> getFileDetails(
      $1.LocalFileRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getFileDetails, request, options: options);
  }

  $grpc.ResponseFuture<$2.PagesInfo> getPageInfo(
      $1.FilteredLocalFilesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPageInfo, request, options: options);
  }

  $grpc.ResponseFuture<$1.DrivesReply> getDrives($3.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getDrives, request, options: options);
  }

  $grpc.ResponseStream<$1.DirectoryFilesReply> getFilesInDirectory(
      $async.Stream<$1.DirectoryFilesRequest> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$getFilesInDirectory, request,
        options: options);
  }
}

abstract class LocalFileServiceBase extends $grpc.Service {
  $core.String get $name => 'anisort.files.LocalFileService';

  LocalFileServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$1.FilteredLocalFilesRequest, $1.LocalFileReply>(
            'ListFiles',
            listFiles_Pre,
            false,
            true,
            ($core.List<$core.int> value) =>
                $1.FilteredLocalFilesRequest.fromBuffer(value),
            ($1.LocalFileReply value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.LocalFileRequest, $1.LocalFileUpdateReply>(
            'ListenForFileUpdates',
            listenForFileUpdates_Pre,
            false,
            true,
            ($core.List<$core.int> value) =>
                $1.LocalFileRequest.fromBuffer(value),
            ($1.LocalFileUpdateReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.FilteredLocalFilesRequest,
            $1.LocalFileUpdateReply>(
        'ListenForAllFileUpdates',
        listenForAllFileUpdates_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $1.FilteredLocalFilesRequest.fromBuffer(value),
        ($1.LocalFileUpdateReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.LocalFileRequest, $1.LocalFileReply>(
        'GetFileDetails',
        getFileDetails_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.LocalFileRequest.fromBuffer(value),
        ($1.LocalFileReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.FilteredLocalFilesRequest, $2.PagesInfo>(
        'GetPageInfo',
        getPageInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.FilteredLocalFilesRequest.fromBuffer(value),
        ($2.PagesInfo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.Empty, $1.DrivesReply>(
        'GetDrives',
        getDrives_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.Empty.fromBuffer(value),
        ($1.DrivesReply value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.DirectoryFilesRequest, $1.DirectoryFilesReply>(
            'GetFilesInDirectory',
            getFilesInDirectory,
            true,
            true,
            ($core.List<$core.int> value) =>
                $1.DirectoryFilesRequest.fromBuffer(value),
            ($1.DirectoryFilesReply value) => value.writeToBuffer()));
  }

  $async.Stream<$1.LocalFileReply> listFiles_Pre($grpc.ServiceCall call,
      $async.Future<$1.FilteredLocalFilesRequest> request) async* {
    yield* listFiles(call, await request);
  }

  $async.Stream<$1.LocalFileUpdateReply> listenForFileUpdates_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.LocalFileRequest> request) async* {
    yield* listenForFileUpdates(call, await request);
  }

  $async.Stream<$1.LocalFileUpdateReply> listenForAllFileUpdates_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.FilteredLocalFilesRequest> request) async* {
    yield* listenForAllFileUpdates(call, await request);
  }

  $async.Future<$1.LocalFileReply> getFileDetails_Pre($grpc.ServiceCall call,
      $async.Future<$1.LocalFileRequest> request) async {
    return getFileDetails(call, await request);
  }

  $async.Future<$2.PagesInfo> getPageInfo_Pre($grpc.ServiceCall call,
      $async.Future<$1.FilteredLocalFilesRequest> request) async {
    return getPageInfo(call, await request);
  }

  $async.Future<$1.DrivesReply> getDrives_Pre(
      $grpc.ServiceCall call, $async.Future<$3.Empty> request) async {
    return getDrives(call, await request);
  }

  $async.Stream<$1.LocalFileReply> listFiles(
      $grpc.ServiceCall call, $1.FilteredLocalFilesRequest request);
  $async.Stream<$1.LocalFileUpdateReply> listenForFileUpdates(
      $grpc.ServiceCall call, $1.LocalFileRequest request);
  $async.Stream<$1.LocalFileUpdateReply> listenForAllFileUpdates(
      $grpc.ServiceCall call, $1.FilteredLocalFilesRequest request);
  $async.Future<$1.LocalFileReply> getFileDetails(
      $grpc.ServiceCall call, $1.LocalFileRequest request);
  $async.Future<$2.PagesInfo> getPageInfo(
      $grpc.ServiceCall call, $1.FilteredLocalFilesRequest request);
  $async.Future<$1.DrivesReply> getDrives(
      $grpc.ServiceCall call, $3.Empty request);
  $async.Stream<$1.DirectoryFilesReply> getFilesInDirectory(
      $grpc.ServiceCall call, $async.Stream<$1.DirectoryFilesRequest> request);
}
