import 'package:anisort_ui/pages/base_page.dart';
import 'package:anisort_ui/widgets/nav.dart';
import 'package:flutter/material.dart';

import '../widgets/settings/settings_widget.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasePage(
        selectedIndex: AniSortPage.settings,
        appBar: AppBar(title: const Text('Settings')),
        body: Padding(padding: const EdgeInsets.all(8.0), child: Settings()));
  }
}
