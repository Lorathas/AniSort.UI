///
//  Generated code. Do not modify.
//  source: settings.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'google/protobuf/empty.pb.dart' as $3;
import 'settings.pb.dart' as $6;
export 'settings.pb.dart';

class SettingsServiceClient extends $grpc.Client {
  static final _$getSettings = $grpc.ClientMethod<$3.Empty, $6.SettingsReply>(
      '/SettingsService/GetSettings',
      ($3.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.SettingsReply.fromBuffer(value));
  static final _$saveSettings =
      $grpc.ClientMethod<$6.SettingsReply, $6.SettingsReply>(
          '/SettingsService/SaveSettings',
          ($6.SettingsReply value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $6.SettingsReply.fromBuffer(value));
  static final _$activeUpdates =
      $grpc.ClientMethod<$6.SettingsReply, $6.SettingsReply>(
          '/SettingsService/ActiveUpdates',
          ($6.SettingsReply value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $6.SettingsReply.fromBuffer(value));

  SettingsServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$6.SettingsReply> getSettings($3.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSettings, request, options: options);
  }

  $grpc.ResponseFuture<$6.SettingsReply> saveSettings($6.SettingsReply request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$saveSettings, request, options: options);
  }

  $grpc.ResponseStream<$6.SettingsReply> activeUpdates(
      $async.Stream<$6.SettingsReply> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$activeUpdates, request, options: options);
  }
}

abstract class SettingsServiceBase extends $grpc.Service {
  $core.String get $name => 'SettingsService';

  SettingsServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.Empty, $6.SettingsReply>(
        'GetSettings',
        getSettings_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.Empty.fromBuffer(value),
        ($6.SettingsReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.SettingsReply, $6.SettingsReply>(
        'SaveSettings',
        saveSettings_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.SettingsReply.fromBuffer(value),
        ($6.SettingsReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.SettingsReply, $6.SettingsReply>(
        'ActiveUpdates',
        activeUpdates,
        true,
        true,
        ($core.List<$core.int> value) => $6.SettingsReply.fromBuffer(value),
        ($6.SettingsReply value) => value.writeToBuffer()));
  }

  $async.Future<$6.SettingsReply> getSettings_Pre(
      $grpc.ServiceCall call, $async.Future<$3.Empty> request) async {
    return getSettings(call, await request);
  }

  $async.Future<$6.SettingsReply> saveSettings_Pre(
      $grpc.ServiceCall call, $async.Future<$6.SettingsReply> request) async {
    return saveSettings(call, await request);
  }

  $async.Future<$6.SettingsReply> getSettings(
      $grpc.ServiceCall call, $3.Empty request);
  $async.Future<$6.SettingsReply> saveSettings(
      $grpc.ServiceCall call, $6.SettingsReply request);
  $async.Stream<$6.SettingsReply> activeUpdates(
      $grpc.ServiceCall call, $async.Stream<$6.SettingsReply> request);
}
