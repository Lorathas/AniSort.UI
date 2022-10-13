import 'package:anisort_ui/extensions/string_extension.dart';
import 'package:anisort_ui/ioc.dart';
import 'package:anisort_ui/service/theme_service.dart';
import 'package:anisort_ui/widgets/settings/settings_section_header.dart';
import 'package:flutter/material.dart';

class AppSettings extends StatelessWidget {
  final themeService = getIt.get<ThemeService>();

  AppSettings({super.key});

  @override
  Widget build(BuildContext context) => Column(children: [
        const SettingsSectionHeader(title: 'App Settings'),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: StreamBuilder(
            stream: themeService.stream,
            builder: (context, snapshot) => DropdownButtonFormField<ThemeMode>(
                decoration: const InputDecoration(label: Text('Theme')),
                value: snapshot.data ?? ThemeMode.system,
                items: ThemeMode.values
                    .map((i) => DropdownMenuItem<ThemeMode>(
                          value: i,
                          child: Text(i.name.capitalize()),
                        ))
                    .toList(),
                onChanged: (themeMode) async => await themeService.changeTheme(themeMode!)),
          ),
        )
      ]);
}
