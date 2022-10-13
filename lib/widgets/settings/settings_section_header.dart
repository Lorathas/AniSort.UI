import 'package:flutter/material.dart';

const double _headerFontSize = 24;
const double _headerHorizontalMargin = 16;

class SettingsSectionHeader extends StatelessWidget {
  final String title;

  const SettingsSectionHeader({super.key, required this.title});

  @override
  Widget build(BuildContext context) => Container(
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.only(left: _headerHorizontalMargin),
      child: Text(
        title,
        style: const TextStyle(fontSize: _headerFontSize),
      ));
}
