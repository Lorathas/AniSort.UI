import 'dart:async';

import 'package:anisort_ui/proto/generated/settings.pb.dart';
import 'package:anisort_ui/service/settings_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:protobuf/protobuf.dart';
import '../ioc.dart';

@injectable
class SettingsWidget extends StatefulWidget {
  final SettingsService settingsService = getIt.get<SettingsService>();

  SettingsWidget({super.key});

  @override
  State<StatefulWidget> createState() => _SettingsState();
}

const double _headerFontSize = 24;
const double _headerTopMargin = 24;
const double _headerHorizontalMargin = 16;
const double _headerVerticalMargin = 24;

const _headerMargin = EdgeInsets.symmetric(horizontal: _headerHorizontalMargin, vertical: _headerVerticalMargin);
const _textFieldMargin = EdgeInsets.symmetric(horizontal: _headerHorizontalMargin);

class _SettingsState extends State<SettingsWidget> implements Disposable {
  late StreamSubscription<SettingsReply> updates;

  @override
  void initState() {
    super.initState();

    widget.settingsService.listenForSettingsChanges()
        .listen((updated) => _settings.mergeFromMessage(updated));
  }

  final _formKey = GlobalKey<FormState>();

  final SettingsReply _settings = SettingsReply()
    ..aniDb = AniDbConfigReply()
    ..destination = DestinationConfigReply();

  Timer? _debounce;

  _queueSave(Function()? mutator) {
    if (mutator != null) {
      setState(mutator);
    }

    if (_debounce?.isActive ?? false) {
      _debounce!.cancel();
    }

    _debounce = Timer(const Duration(milliseconds: 500), () {
      widget.settingsService.saveSettings(_settings);
      _debounce = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Form(
            key: _formKey,
            child: Column(
              children: [
                Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.only(left: _headerHorizontalMargin),
                    child: const Text(
                      'Import',
                      style: TextStyle(fontSize: _headerFontSize),
                    )),
                CheckboxListTile(
                  title: const Text('Debug'),
                  subtitle: const Text('Prevent the the program from making irreparable operations such as moving files or database changes that don\'t include settings'),
                  value: _settings.debug,
                  onChanged: (value) =>
                      _queueSave(() {
                        _settings.debug = value!;
                      }),
                ),
                CheckboxListTile(
                  title: const Text('Verbose'),
                  subtitle: const Text('Enable verbose logging to track more information'),
                  value: _settings.verbose,
                  onChanged: (value) =>
                      _queueSave(() {
                        _settings.verbose = value!;
                      }),
                ),
                CheckboxListTile(
                  title: const Text('Copy'),
                  subtitle: const Text('When sorting files from import directories it, copy the file instead of moving it'),
                  value: _settings.copy,
                  onChanged: (value) =>
                      _queueSave(() {
                        _settings.copy = value!;
                      }),
                ),
                CheckboxListTile(
                  title: const Text('Incremental Cleanup'),
                  value: _settings.incrementalCleanup,
                  onChanged: (value) =>
                      _queueSave(() {
                        _settings.incrementalCleanup = value!;
                      }),
                ),
                CheckboxListTile(
                  title: const Text('Move Related Files'),
                  value: false,
                  enabled: false,
                  subtitle: const Text('Move files with identical titles, but different extensions when moving a file (Sorting "My Neighbor Totoro.mkv" would also move/copy "My Neighbor Totoro.ass" to where the video file goes)'),
                  onChanged: (value) => {},
                ),
                Container(
                    alignment: Alignment.centerLeft,
                    margin: _headerMargin,
                    child: const Text(
                      'Destination',
                      style: TextStyle(fontSize: _headerFontSize),
                    )),
                Container(
                  margin: _textFieldMargin,
                  child: TextFormField(
                    decoration: const InputDecoration(labelText: 'Root Path'),
                    initialValue: _settings.destination.path,
                    onChanged: (value) =>
                        _queueSave(() {
                          _settings.destination.path = value;
                        }),
                  ),
                ),
                Container(
                  margin: _textFieldMargin,
                  child: TextFormField(
                    decoration: const InputDecoration(labelText: 'Filename Format'),
                    initialValue: _settings.destination.format,
                    onChanged: (value) => _queueSave(() {
                          _settings.destination.format = value;
                        }),
                  ),
                ),
                Container(
                  margin: _textFieldMargin,
                  child: TextFormField(
                    decoration: const InputDecoration(labelText: 'TV Path'),
                    initialValue: _settings.destination.tvPath,
                    onChanged: (value) =>
                        _queueSave(() {
                          _settings.destination.tvPath = value;
                        }),
                  ),
                ),
                Container(
                  margin: _textFieldMargin,
                  child: TextFormField(
                    decoration: const InputDecoration(labelText: 'Movie Path'),
                    initialValue: _settings.destination.moviePath,
                    onChanged: (value) =>
                        _queueSave(() {
                          _settings.destination.moviePath = value;
                        }),
                  ),
                ),
                CheckboxListTile(
                    title: const Text('Fragment Series'),
                    value: _settings.destination.fragmentSeries,
                    onChanged: (value) =>
                        _queueSave(() {
                          _settings.destination.fragmentSeries = value!;
                        })),
                Container(
                    alignment: Alignment.centerLeft,
                    margin: _headerMargin,
                    child: const Text(
                      'AniDB',
                      style: TextStyle(fontSize: _headerFontSize),
                    )),
                Container(
                  margin: _textFieldMargin,
                  child: TextFormField(
                    decoration: const InputDecoration(labelText: 'Username'),
                    initialValue: _settings.aniDb.username,
                    onChanged: (value) =>
                        _queueSave(() {
                          _settings.aniDb.username = value;
                        }),
                  ),
                ),
                Container(
                  margin: _textFieldMargin,
                  child: TextFormField(
                    decoration: const InputDecoration(labelText: 'Password'),
                    initialValue: _settings.aniDb.password,
                    onChanged: (value) =>
                        _queueSave(() {
                          _settings.aniDb.password = value;
                        }),
                  ),
                ),
                Container(
                  margin: _textFieldMargin,
                  child: TextFormField(
                    decoration: const InputDecoration(labelText: 'Max File Retries'),
                    keyboardType: TextInputType.number,
                    initialValue: _settings.aniDb.maxFileSearchRetries.toString(),
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    onChanged: (value) =>
                        _queueSave(() {
                          _settings.aniDb.maxFileSearchRetries = int.parse(value);
                        }),
                  ),
                ),
                Container(
                  margin: _textFieldMargin,
                  child: TextFormField(
                    decoration: const InputDecoration(labelText: 'File Search Cooldown (In Minutes)'),
                    keyboardType: TextInputType.number,
                    initialValue: _settings.aniDb.fileSearchCooldownMinutes.toString(),
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    onChanged: (value) =>
                        _queueSave(() {
                          _settings.aniDb.fileSearchCooldownMinutes = int.parse(value);
                        }),
                  ),
                ),
                Container(
                  margin: _headerMargin,
                  child: ElevatedButton(
                    child: const Text('Save'),
                    onPressed: () => {},
                  ),
                )
              ],
            )),
      ),
    );
  }

  @override
  void activate() {
    super.activate();

    if (updates.isPaused) {
      updates.resume();
    }
  }

  @override
  void deactivate() {
    super.deactivate();

    updates.pause();
  }

  @override
  FutureOr onDispose() {
    if (_debounce != null) {
      widget.settingsService.saveSettings(_settings);
      _debounce!.cancel();
    }
    updates.cancel();
    super.dispose();
  }
}
