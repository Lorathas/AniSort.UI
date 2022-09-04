///
//  Generated code. Do not modify.
//  source: anime.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'anime.pb.dart' as $0;
export 'anime.pb.dart';

class AnimeServiceClient extends $grpc.Client {
  static final _$getForFileId =
      $grpc.ClientMethod<$0.FileIdRequest, $0.AnimeReply>(
          '/anisort.anime.AnimeService/GetForFileId',
          ($0.FileIdRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.AnimeReply.fromBuffer(value));
  static final _$getForFileHash =
      $grpc.ClientMethod<$0.FileHashRequest, $0.AnimeReply>(
          '/anisort.anime.AnimeService/GetForFileHash',
          ($0.FileHashRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.AnimeReply.fromBuffer(value));

  AnimeServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.AnimeReply> getForFileId($0.FileIdRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getForFileId, request, options: options);
  }

  $grpc.ResponseFuture<$0.AnimeReply> getForFileHash($0.FileHashRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getForFileHash, request, options: options);
  }
}

abstract class AnimeServiceBase extends $grpc.Service {
  $core.String get $name => 'anisort.anime.AnimeService';

  AnimeServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.FileIdRequest, $0.AnimeReply>(
        'GetForFileId',
        getForFileId_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.FileIdRequest.fromBuffer(value),
        ($0.AnimeReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.FileHashRequest, $0.AnimeReply>(
        'GetForFileHash',
        getForFileHash_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.FileHashRequest.fromBuffer(value),
        ($0.AnimeReply value) => value.writeToBuffer()));
  }

  $async.Future<$0.AnimeReply> getForFileId_Pre(
      $grpc.ServiceCall call, $async.Future<$0.FileIdRequest> request) async {
    return getForFileId(call, await request);
  }

  $async.Future<$0.AnimeReply> getForFileHash_Pre(
      $grpc.ServiceCall call, $async.Future<$0.FileHashRequest> request) async {
    return getForFileHash(call, await request);
  }

  $async.Future<$0.AnimeReply> getForFileId(
      $grpc.ServiceCall call, $0.FileIdRequest request);
  $async.Future<$0.AnimeReply> getForFileHash(
      $grpc.ServiceCall call, $0.FileHashRequest request);
}
