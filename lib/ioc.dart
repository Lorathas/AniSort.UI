import 'package:injectable/injectable.dart';
import 'package:get_it/get_it.dart';

import 'ioc.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies() async => await $initGetIt(getIt);