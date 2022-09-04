// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:grpc/grpc.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;

import 'app_module.dart' as _i8;
import 'proto/generated/anime.pbgrpc.dart' as _i7;
import 'proto/generated/files.pbgrpc.dart' as _i5;
import 'proto/generated/jobs.pbgrpc.dart' as _i4;
import 'proto/generated/scheduled_jobs.pbgrpc.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final appModule = _$AppModule();
  await gh.singletonAsync<_i3.ClientChannel>(() => appModule.clientChannel,
      preResolve: true);
  gh.factory<_i4.JobServiceClient>(
      () => appModule.jobServiceClient(get<_i3.ClientChannel>()));
  gh.factory<_i5.LocalFileServiceClient>(
      () => appModule.localFileServiceClient(get<_i3.ClientChannel>()));
  gh.factory<_i6.ScheduledJobServiceClient>(
      () => appModule.scheduledJobServiceClient(get<_i3.ClientChannel>()));
  gh.factory<_i7.AnimeServiceClient>(
      () => appModule.animeServiceClient(get<_i3.ClientChannel>()));
  return get;
}

class _$AppModule extends _i8.AppModule {}
