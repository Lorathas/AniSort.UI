import 'dart:async';

import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@singleton
@injectable
class ThemeService {
  final _streamController = StreamController<ThemeMode>();
  late Stream<ThemeMode> _broadcastStream;
  ThemeMode? _lastTheme;
  
  Future<ThemeMode> _getSavedTheme() async {
    final prefs = await SharedPreferences.getInstance();

    final themeText = prefs.getString('theme');

    switch (themeText) {
      case 'light':
        return ThemeMode.light;
      case 'dark':
        return ThemeMode.dark;
      default:
        return ThemeMode.system;
    }
  }
  
  ThemeService() {
    _broadcastStream = _streamController.stream.asBroadcastStream();
    _getSavedTheme().then((value) => _streamController.add(value));
    _broadcastStream.listen((theme) => _lastTheme = theme);
  }

  changeTheme(ThemeMode themeMode) async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setString('theme', themeMode.toString());

    _streamController.add(themeMode);
  }

  Stream<ThemeMode> get stream {
    final controller = StreamController<ThemeMode>();

    if (_lastTheme != null) {
      controller.add(_lastTheme!);
    }

    controller.addStream(_broadcastStream);

    return controller.stream;
  }
}