///
//  Generated code. Do not modify.
//  source: jobs.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'jobs.pb.dart' as $3;
import 'common.pb.dart' as $2;
export 'jobs.pb.dart';

class JobServiceClient extends $grpc.Client {
  static final _$queueJob = $grpc.ClientMethod<$3.QueueJobRequest, $3.JobReply>(
      '/anisort.JobService/QueueJob',
      ($3.QueueJobRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.JobReply.fromBuffer(value));
  static final _$listJobs =
      $grpc.ClientMethod<$3.FilteredJobsRequest, $3.JobReply>(
          '/anisort.JobService/ListJobs',
          ($3.FilteredJobsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $3.JobReply.fromBuffer(value));
  static final _$listenForJobChanges =
      $grpc.ClientMethod<$3.FilteredJobsRequest, $3.JobUpdateReply>(
          '/anisort.JobService/ListenForJobChanges',
          ($3.FilteredJobsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $3.JobUpdateReply.fromBuffer(value));
  static final _$getJobDetails =
      $grpc.ClientMethod<$3.JobDetailsRequest, $3.JobDetailsReply>(
          '/anisort.JobService/GetJobDetails',
          ($3.JobDetailsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.JobDetailsReply.fromBuffer(value));
  static final _$listenForJobDetailUpdates =
      $grpc.ClientMethod<$3.JobDetailsRequest, $3.JobDetailsReply>(
          '/anisort.JobService/ListenForJobDetailUpdates',
          ($3.JobDetailsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.JobDetailsReply.fromBuffer(value));
  static final _$getPageInfo =
      $grpc.ClientMethod<$3.FilteredJobsRequest, $2.PagesInfo>(
          '/anisort.JobService/GetPageInfo',
          ($3.FilteredJobsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.PagesInfo.fromBuffer(value));

  JobServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$3.JobReply> queueJob($3.QueueJobRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$queueJob, request, options: options);
  }

  $grpc.ResponseStream<$3.JobReply> listJobs($3.FilteredJobsRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$listJobs, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$3.JobUpdateReply> listenForJobChanges(
      $3.FilteredJobsRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$listenForJobChanges, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$3.JobDetailsReply> getJobDetails(
      $3.JobDetailsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getJobDetails, request, options: options);
  }

  $grpc.ResponseStream<$3.JobDetailsReply> listenForJobDetailUpdates(
      $3.JobDetailsRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$listenForJobDetailUpdates, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$2.PagesInfo> getPageInfo($3.FilteredJobsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPageInfo, request, options: options);
  }
}

abstract class JobServiceBase extends $grpc.Service {
  $core.String get $name => 'anisort.JobService';

  JobServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.QueueJobRequest, $3.JobReply>(
        'QueueJob',
        queueJob_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.QueueJobRequest.fromBuffer(value),
        ($3.JobReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.FilteredJobsRequest, $3.JobReply>(
        'ListJobs',
        listJobs_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $3.FilteredJobsRequest.fromBuffer(value),
        ($3.JobReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.FilteredJobsRequest, $3.JobUpdateReply>(
        'ListenForJobChanges',
        listenForJobChanges_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $3.FilteredJobsRequest.fromBuffer(value),
        ($3.JobUpdateReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.JobDetailsRequest, $3.JobDetailsReply>(
        'GetJobDetails',
        getJobDetails_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.JobDetailsRequest.fromBuffer(value),
        ($3.JobDetailsReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.JobDetailsRequest, $3.JobDetailsReply>(
        'ListenForJobDetailUpdates',
        listenForJobDetailUpdates_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $3.JobDetailsRequest.fromBuffer(value),
        ($3.JobDetailsReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.FilteredJobsRequest, $2.PagesInfo>(
        'GetPageInfo',
        getPageInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $3.FilteredJobsRequest.fromBuffer(value),
        ($2.PagesInfo value) => value.writeToBuffer()));
  }

  $async.Future<$3.JobReply> queueJob_Pre(
      $grpc.ServiceCall call, $async.Future<$3.QueueJobRequest> request) async {
    return queueJob(call, await request);
  }

  $async.Stream<$3.JobReply> listJobs_Pre($grpc.ServiceCall call,
      $async.Future<$3.FilteredJobsRequest> request) async* {
    yield* listJobs(call, await request);
  }

  $async.Stream<$3.JobUpdateReply> listenForJobChanges_Pre(
      $grpc.ServiceCall call,
      $async.Future<$3.FilteredJobsRequest> request) async* {
    yield* listenForJobChanges(call, await request);
  }

  $async.Future<$3.JobDetailsReply> getJobDetails_Pre($grpc.ServiceCall call,
      $async.Future<$3.JobDetailsRequest> request) async {
    return getJobDetails(call, await request);
  }

  $async.Stream<$3.JobDetailsReply> listenForJobDetailUpdates_Pre(
      $grpc.ServiceCall call,
      $async.Future<$3.JobDetailsRequest> request) async* {
    yield* listenForJobDetailUpdates(call, await request);
  }

  $async.Future<$2.PagesInfo> getPageInfo_Pre($grpc.ServiceCall call,
      $async.Future<$3.FilteredJobsRequest> request) async {
    return getPageInfo(call, await request);
  }

  $async.Future<$3.JobReply> queueJob(
      $grpc.ServiceCall call, $3.QueueJobRequest request);
  $async.Stream<$3.JobReply> listJobs(
      $grpc.ServiceCall call, $3.FilteredJobsRequest request);
  $async.Stream<$3.JobUpdateReply> listenForJobChanges(
      $grpc.ServiceCall call, $3.FilteredJobsRequest request);
  $async.Future<$3.JobDetailsReply> getJobDetails(
      $grpc.ServiceCall call, $3.JobDetailsRequest request);
  $async.Stream<$3.JobDetailsReply> listenForJobDetailUpdates(
      $grpc.ServiceCall call, $3.JobDetailsRequest request);
  $async.Future<$2.PagesInfo> getPageInfo(
      $grpc.ServiceCall call, $3.FilteredJobsRequest request);
}
