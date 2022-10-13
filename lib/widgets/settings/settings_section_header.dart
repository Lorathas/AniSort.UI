import 'package:flutter/material.dart';

const double _headerFontSize = 24;
const double _headerTopMargin = 24;
const double _headerHorizontalMargin = 16;
const double _headerVerticalMargin = 24;

class SettingsSectionHeader extends StatelessWidget {
  final String title;

  const SettingsSectionHeader({super.key, required this.title});

  @override
  Widget build(BuildContext context) => Container(
        alignment: Alignment.centerLeft,
        margin: const EdgeInsets.only(left: _headerHorizontalMargin),
        child: const Text(
          'Import',
          style: TextStyle(fontSize: _headerFontSize),
        ));
}