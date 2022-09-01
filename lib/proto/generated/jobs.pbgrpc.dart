///
//  Generated code. Do not modify.
//  source: jobs.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'jobs.pb.dart' as $0;
import 'common.pb.dart' as $1;
export 'jobs.pb.dart';

class JobServiceClient extends $grpc.Client {
  static final _$queueJob = $grpc.ClientMethod<$0.QueueJobRequest, $1.Empty>(
      '/anisort.JobService/QueueJob',
      ($0.QueueJobRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$listJobs =
      $grpc.ClientMethod<$0.FilteredJobsRequest, $0.JobReply>(
          '/anisort.JobService/ListJobs',
          ($0.FilteredJobsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.JobReply.fromBuffer(value));
  static final _$listenForJobChanges =
      $grpc.ClientMethod<$0.FilteredJobsRequest, $0.JobUpdateReply>(
          '/anisort.JobService/ListenForJobChanges',
          ($0.FilteredJobsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.JobUpdateReply.fromBuffer(value));
  static final _$getJobDetails =
      $grpc.ClientMethod<$0.JobDetailsRequest, $0.JobDetailsReply>(
          '/anisort.JobService/GetJobDetails',
          ($0.JobDetailsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.JobDetailsReply.fromBuffer(value));

  JobServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.Empty> queueJob($0.QueueJobRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$queueJob, request, options: options);
  }

  $grpc.ResponseStream<$0.JobReply> listJobs($0.FilteredJobsRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$listJobs, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$0.JobUpdateReply> listenForJobChanges(
      $0.FilteredJobsRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$listenForJobChanges, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$0.JobDetailsReply> getJobDetails(
      $0.JobDetailsRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getJobDetails, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class JobServiceBase extends $grpc.Service {
  $core.String get $name => 'anisort.JobService';

  JobServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.QueueJobRequest, $1.Empty>(
        'QueueJob',
        queueJob_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.QueueJobRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.FilteredJobsRequest, $0.JobReply>(
        'ListJobs',
        listJobs_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $0.FilteredJobsRequest.fromBuffer(value),
        ($0.JobReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.FilteredJobsRequest, $0.JobUpdateReply>(
        'ListenForJobChanges',
        listenForJobChanges_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $0.FilteredJobsRequest.fromBuffer(value),
        ($0.JobUpdateReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.JobDetailsRequest, $0.JobDetailsReply>(
        'GetJobDetails',
        getJobDetails_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.JobDetailsRequest.fromBuffer(value),
        ($0.JobDetailsReply value) => value.writeToBuffer()));
  }

  $async.Future<$1.Empty> queueJob_Pre(
      $grpc.ServiceCall call, $async.Future<$0.QueueJobRequest> request) async {
    return queueJob(call, await request);
  }

  $async.Stream<$0.JobReply> listJobs_Pre($grpc.ServiceCall call,
      $async.Future<$0.FilteredJobsRequest> request) async* {
    yield* listJobs(call, await request);
  }

  $async.Stream<$0.JobUpdateReply> listenForJobChanges_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.FilteredJobsRequest> request) async* {
    yield* listenForJobChanges(call, await request);
  }

  $async.Stream<$0.JobDetailsReply> getJobDetails_Pre($grpc.ServiceCall call,
      $async.Future<$0.JobDetailsRequest> request) async* {
    yield* getJobDetails(call, await request);
  }

  $async.Future<$1.Empty> queueJob(
      $grpc.ServiceCall call, $0.QueueJobRequest request);
  $async.Stream<$0.JobReply> listJobs(
      $grpc.ServiceCall call, $0.FilteredJobsRequest request);
  $async.Stream<$0.JobUpdateReply> listenForJobChanges(
      $grpc.ServiceCall call, $0.FilteredJobsRequest request);
  $async.Stream<$0.JobDetailsReply> getJobDetails(
      $grpc.ServiceCall call, $0.JobDetailsRequest request);
}
