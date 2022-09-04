import 'package:anisort_ui/proto/generated/anime.pbgrpc.dart';
import 'package:anisort_ui/proto/generated/files.pbgrpc.dart';
import 'package:anisort_ui/proto/generated/jobs.pbgrpc.dart';
import 'package:anisort_ui/proto/generated/scheduled_jobs.pbgrpc.dart';
import 'package:anisort_ui/service/grpc_service.dart';
import 'package:grpc/grpc.dart';
import 'package:injectable/injectable.dart';

@module
abstract class AppModule {
  @preResolve
  @singleton
  Future<ClientChannel> get clientChannel => GrpcService.init();

  @factoryMethod
  JobServiceClient jobServiceClient(ClientChannel channel) => JobServiceClient(channel);

  @factoryMethod
  LocalFileServiceClient localFileServiceClient(ClientChannel channel) => LocalFileServiceClient(channel);

  @factoryMethod
  AnimeServiceClient animeServiceClient(ClientChannel channel) => AnimeServiceClient(channel);

  @factoryMethod
  ScheduledJobServiceClient scheduledJobServiceClient(ClientChannel channel) => ScheduledJobServiceClient(channel);
}