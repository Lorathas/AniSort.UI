import 'dart:async';

import 'package:anisort_ui/proto/generated/settings.pbgrpc.dart';
import 'package:grpc/grpc.dart';
import 'package:injectable/injectable.dart';

@singleton
class SettingsService {
  final SettingsServiceClient settingsClient;
  late final ResponseStream<SettingsReply> _settingsUpdateStream;
  late final Stream<SettingsReply> _settingsBroadcastStream;
  late final StreamController<SettingsReply> _settingsWriteStream;
  SettingsReply? _lastSettings;

  SettingsService(this.settingsClient) {
    _settingsWriteStream = StreamController<SettingsReply>();
    _settingsUpdateStream = settingsClient.activeUpdates(_settingsWriteStream.stream);
    _settingsBroadcastStream = _settingsUpdateStream.asBroadcastStream();
    _settingsBroadcastStream.listen((settings) => _lastSettings = settings);
  }

  saveSettings(SettingsReply settings) {
    _settingsWriteStream.add(settings);
  }

  Stream<SettingsReply> listenForSettingsChanges() {
    final controller = StreamController<SettingsReply>();

    if (_lastSettings != null) {
      controller.add(_lastSettings!);
    }

    controller.addStream(_settingsBroadcastStream);

    return controller.stream;
  }
}