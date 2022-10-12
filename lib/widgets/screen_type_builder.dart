import 'package:flutter/material.dart';
import 'package:anisort_ui/adaptive.dart';

typedef ScreenTypeWidgetBuilder = Widget Function(BuildContext context, ScreenType screenType);

class ScreenTypeBuilder extends StatelessWidget {
  final ScreenTypeWidgetBuilder builder;

  const ScreenTypeBuilder({super.key, required this.builder});

  @override
  Widget build(BuildContext context) {
    final screenType = getScreenType(context);

    return builder(context, screenType);
  }
}