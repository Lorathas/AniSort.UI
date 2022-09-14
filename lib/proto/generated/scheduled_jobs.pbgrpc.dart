///
//  Generated code. Do not modify.
//  source: scheduled_jobs.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'google/protobuf/empty.pb.dart' as $3;
import 'scheduled_jobs.pb.dart' as $5;
export 'scheduled_jobs.pb.dart';

class ScheduledJobServiceClient extends $grpc.Client {
  static final _$listScheduledJobs =
      $grpc.ClientMethod<$3.Empty, $5.ScheduledJob>(
          '/anisort.ScheduledJobService/ListScheduledJobs',
          ($3.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $5.ScheduledJob.fromBuffer(value));
  static final _$createScheduledJob =
      $grpc.ClientMethod<$5.ScheduledJob, $5.ScheduledJob>(
          '/anisort.ScheduledJobService/CreateScheduledJob',
          ($5.ScheduledJob value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $5.ScheduledJob.fromBuffer(value));
  static final _$updateScheduledJob =
      $grpc.ClientMethod<$5.ScheduledJob, $5.ScheduledJob>(
          '/anisort.ScheduledJobService/UpdateScheduledJob',
          ($5.ScheduledJob value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $5.ScheduledJob.fromBuffer(value));

  ScheduledJobServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$5.ScheduledJob> listScheduledJobs($3.Empty request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$listScheduledJobs, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$5.ScheduledJob> createScheduledJob(
      $5.ScheduledJob request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createScheduledJob, request, options: options);
  }

  $grpc.ResponseFuture<$5.ScheduledJob> updateScheduledJob(
      $5.ScheduledJob request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateScheduledJob, request, options: options);
  }
}

abstract class ScheduledJobServiceBase extends $grpc.Service {
  $core.String get $name => 'anisort.ScheduledJobService';

  ScheduledJobServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.Empty, $5.ScheduledJob>(
        'ListScheduledJobs',
        listScheduledJobs_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $3.Empty.fromBuffer(value),
        ($5.ScheduledJob value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.ScheduledJob, $5.ScheduledJob>(
        'CreateScheduledJob',
        createScheduledJob_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.ScheduledJob.fromBuffer(value),
        ($5.ScheduledJob value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.ScheduledJob, $5.ScheduledJob>(
        'UpdateScheduledJob',
        updateScheduledJob_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.ScheduledJob.fromBuffer(value),
        ($5.ScheduledJob value) => value.writeToBuffer()));
  }

  $async.Stream<$5.ScheduledJob> listScheduledJobs_Pre(
      $grpc.ServiceCall call, $async.Future<$3.Empty> request) async* {
    yield* listScheduledJobs(call, await request);
  }

  $async.Future<$5.ScheduledJob> createScheduledJob_Pre(
      $grpc.ServiceCall call, $async.Future<$5.ScheduledJob> request) async {
    return createScheduledJob(call, await request);
  }

  $async.Future<$5.ScheduledJob> updateScheduledJob_Pre(
      $grpc.ServiceCall call, $async.Future<$5.ScheduledJob> request) async {
    return updateScheduledJob(call, await request);
  }

  $async.Stream<$5.ScheduledJob> listScheduledJobs(
      $grpc.ServiceCall call, $3.Empty request);
  $async.Future<$5.ScheduledJob> createScheduledJob(
      $grpc.ServiceCall call, $5.ScheduledJob request);
  $async.Future<$5.ScheduledJob> updateScheduledJob(
      $grpc.ServiceCall call, $5.ScheduledJob request);
}
