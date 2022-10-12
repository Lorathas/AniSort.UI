import 'package:flutter/material.dart';

class FormFactor {
  static double desktop = 900;
  static double tablet = 600;
  static double phone = 300;
}

enum ScreenType {
  desktop,
  tablet,
  phone,
  watch
}

getScreenType(BuildContext context) {
  final deviceWidth = MediaQuery.of(context).size.shortestSide;

  if (deviceWidth > FormFactor.desktop) {
    return ScreenType.desktop;
  }

  if (deviceWidth > FormFactor.tablet) {
    return ScreenType.tablet;
  }

  if (deviceWidth > FormFactor.phone) {
    return ScreenType.phone;
  }

  return ScreenType.watch;
}