import 'dart:async';

import 'package:anisort_ui/paths/path_format_utils.dart';
import 'package:anisort_ui/proto/generated/files.pb.dart';
import 'package:anisort_ui/proto/generated/settings.pb.dart';
import 'package:anisort_ui/service/settings_service.dart';
import 'package:anisort_ui/widgets/settings/app_settings.dart';
import 'package:anisort_ui/widgets/settings/multi_path_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import '../../ioc.dart';

const double _headerFontSize = 24;
const double _headerHorizontalMargin = 16;
const double _headerVerticalMargin = 24;

const _headerMargin = EdgeInsets.symmetric(horizontal: _headerHorizontalMargin, vertical: _headerVerticalMargin);
const _textFieldMargin = EdgeInsets.symmetric(horizontal: _headerHorizontalMargin);

_requiredStringValidator(String fieldName) {
  return (value) {
    if (value == null || value.isEmpty) {
      return '$fieldName is required';
    }

    return null;
  };
}

@injectable
class Settings extends StatefulWidget {
  final SettingsService settingsService = getIt.get<SettingsService>();

  Settings({super.key});

  @override
  State<StatefulWidget> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> implements Disposable {
  late StreamSubscription<SettingsReply> updates;

  final _rootPathController = TextEditingController();
  final _tvPathController = TextEditingController();
  final _moviePathController = TextEditingController();
  final _formatController = TextEditingController();

  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _maxFileRetriesController = TextEditingController();
  final _fileSearchCooldownController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  final SettingsReply _settings = SettingsReply()
    ..aniDb = AniDbConfigReply()
    ..destination = DestinationConfigReply();

  Timer? _debounce;

  @override
  void initState() {
    super.initState();

    updates = widget.settingsService.listenForSettingsChanges().listen((updated) => setState(() {
          _settings.libraryPaths.clear();
          _settings.sources.clear();
          _settings.mergeFromMessage(updated);

          _updateControllerTextFromSettings();
        }));
  }

  _updateControllerTextFromSettings() {
    if (_rootPathController.text != _settings.destination.path) {
      _rootPathController.text = _settings.destination.path;
    }
    if (_tvPathController.text != _settings.destination.tvPath) {
      _tvPathController.text = _settings.destination.tvPath;
    }
    if (_moviePathController.text != _settings.destination.moviePath) {
      _moviePathController.text = _settings.destination.moviePath;
    }
    if (_formatController.text != _settings.destination.format) {
      _formatController.text = _settings.destination.format;
    }

    if (_usernameController.text != _settings.aniDb.username) {
      _usernameController.text = _settings.aniDb.username;
    }
    if (_passwordController.text != _settings.aniDb.password) {
      _passwordController.text = _settings.aniDb.password;
    }
    if (_maxFileRetriesController.text != _settings.aniDb.maxFileSearchRetries.toString()) {
      _maxFileRetriesController.text = _settings.aniDb.maxFileSearchRetries.toString();
    }
    if (_fileSearchCooldownController.text != _settings.aniDb.fileSearchCooldownMinutes.toString()) {
      _fileSearchCooldownController.text = _settings.aniDb.fileSearchCooldownMinutes.toString();
    }
  }

  _queueSave(Function()? mutator) {
    if (mutator != null) {
      setState(mutator);
    }

    _formKey.currentState!.validate();

    if (_debounce?.isActive ?? false) {
      _debounce!.cancel();
    }

    _debounce = Timer(const Duration(milliseconds: 500), () {
      if (_formKey.currentState!.validate()) {
        widget.settingsService.saveSettings(_settings);

        _debounce = null;
      }
    });
  }

  @override
  void activate() {
    super.activate();

    updates.resume();
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

    _rootPathController.dispose();
    _tvPathController.dispose();
    _moviePathController.dispose();
    _formatController.dispose();
    _usernameController.dispose();
    _passwordController.dispose();
    _maxFileRetriesController.dispose();
    _fileSearchCooldownController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Form(
            key: _formKey,
            child: Column(
              children: [
                AppSettings(),
                const Divider(),
                MultiPathPicker(
                    title: 'Library',
                    type: DirectoryFilesReply_DirectoryFileType.Directory,
                    paths: _settings.libraryPaths,
                    onPathsChanged: (paths) => _queueSave(() {
                          _settings.libraryPaths.clear();
                          _settings.libraryPaths.addAll(paths);
                        })),
                const Divider(),
                MultiPathPicker(
                  title: 'Import Paths',
                  type: DirectoryFilesReply_DirectoryFileType.Directory,
                  paths: _settings.sources,
                  onPathsChanged: (paths) => _queueSave(() {
                    _settings.sources.clear();
                    _settings.sources.addAll(paths);
                  }),
                ),
                const Divider(),
                Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.only(left: _headerHorizontalMargin),
                    child: const Text(
                      'Import',
                      style: TextStyle(fontSize: _headerFontSize),
                    )),
                SwitchListTile(
                  title: const Text('Debug'),
                  subtitle: const Text(
                      'Prevent the the program from making irreparable operations such as moving files or database changes that don\'t include settings'),
                  value: _settings.debug,
                  onChanged: (value) => _queueSave(() {
                    _settings.debug = value;
                  }),
                ),
                SwitchListTile(
                  title: const Text('Verbose'),
                  subtitle: const Text('Enable verbose logging to track more information'),
                  value: _settings.verbose,
                  onChanged: (value) => _queueSave(() {
                    _settings.verbose = value;
                  }),
                ),
                SwitchListTile(
                  title: const Text('Copy'),
                  subtitle: const Text('When sorting files from import directories it, copy the file instead of moving it'),
                  value: _settings.copy,
                  onChanged: (value) => _queueSave(() {
                    _settings.copy = value;
                  }),
                ),
                SwitchListTile(
                  title: const Text('Incremental Cleanup'),
                  value: _settings.incrementalCleanup,
                  onChanged: (value) => _queueSave(() {
                    _settings.incrementalCleanup = value;
                  }),
                ),
                CheckboxListTile(
                  title: const Text('Move Related Files'),
                  value: false,
                  enabled: false,
                  subtitle: const Text(
                      'Move files with identical titles, but different extensions when moving a file (Sorting "My Neighbor Totoro.mkv" would also move/copy "My Neighbor Totoro.ass" to where the video file goes)'),
                  onChanged: (value) => {},
                ),
                const Divider(),
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
                    controller: _rootPathController,
                    validator: _requiredStringValidator('Root Path'),
                    onChanged: (value) => _queueSave(() {
                      _settings.destination.path = value;
                    }),
                  ),
                ),
                Container(
                  margin: _textFieldMargin,
                  child: TextFormField(
                    decoration: const InputDecoration(labelText: 'TV Path'),
                    controller: _tvPathController,
                    validator: _requiredStringValidator('TV Path'),
                    onChanged: (value) => _queueSave(() {
                      _settings.destination.tvPath = value;
                    }),
                  ),
                ),
                Container(
                  margin: _textFieldMargin,
                  child: TextFormField(
                    decoration: const InputDecoration(labelText: 'Movie Path'),
                    controller: _moviePathController,
                    validator: _requiredStringValidator('Movie Path'),
                    onChanged: (value) => _queueSave(() {
                      _settings.destination.moviePath = value;
                    }),
                  ),
                ),
                CheckboxListTile(
                    title: const Text('Fragment Series'),
                    value: _settings.destination.fragmentSeries,
                    subtitle: const Text('Move files to root path instead of library path with existing files for the series'),
                    onChanged: (value) => _queueSave(() {
                          _settings.destination.fragmentSeries = value!;
                        })),
                const Divider(),
                Container(
                    alignment: Alignment.centerLeft,
                    margin: _headerMargin,
                    child: const Text(
                      'Filename Formatting',
                      style: TextStyle(fontSize: _headerFontSize),
                    )),
                Container(
                  margin: _textFieldMargin,
                  child: TextFormField(
                    decoration: const InputDecoration(labelText: 'Filename Format'),
                    controller: _formatController,
                    validator: _requiredStringValidator('Filename Format'),
                    onChanged: (value) => _queueSave(() {
                      _settings.destination.format = value;
                    }),
                  ),
                ),
                LayoutBuilder(
                  builder: (context, constraints) => ConstrainedBox(
                    constraints: BoxConstraints(minWidth: constraints.maxWidth),
                    child: DataTable(
                      columns: const [
                        DataColumn(label: Text('Sample Type')),
                        DataColumn(label: Text('Sample Path')),
                      ],
                      rows: [
                        DataRow(cells: [
                          const DataCell(Text('TV')),
                          DataCell(
                              buildRichTextTvPathFromFormat(context, _settings.destination.path, _settings.destination.tvPath, _settings.destination.format))
                        ]),
                        DataRow(cells: [
                          const DataCell(Text('Movie')),
                          DataCell(buildRichTextMoviePathFromFormat(
                              context, _settings.destination.path, _settings.destination.moviePath, _settings.destination.format)),
                        ]),
                      ],
                    ),
                  ),
                ),
                const Divider(),
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
                    controller: _usernameController,
                    validator: _requiredStringValidator('Username'),
                    onChanged: (value) => _queueSave(() {
                      _settings.aniDb.username = value;
                    }),
                  ),
                ),
                Container(
                  margin: _textFieldMargin,
                  child: TextFormField(
                    decoration: const InputDecoration(labelText: 'Password'),
                    controller: _passwordController,
                    validator: _requiredStringValidator('Password'),
                    onChanged: (value) => _queueSave(() {
                      _settings.aniDb.password = value;
                    }),
                  ),
                ),
                Container(
                  margin: _textFieldMargin,
                  child: TextFormField(
                    decoration: const InputDecoration(labelText: 'Max File Retries'),
                    keyboardType: TextInputType.number,
                    controller: _maxFileRetriesController,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    onChanged: (value) => _queueSave(() {
                      _settings.aniDb.maxFileSearchRetries = int.parse(value);
                    }),
                  ),
                ),
                Container(
                  margin: _textFieldMargin,
                  child: TextFormField(
                    decoration: const InputDecoration(labelText: 'File Search Cooldown (In Minutes)'),
                    keyboardType: TextInputType.number,
                    controller: _fileSearchCooldownController,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    onChanged: (value) => _queueSave(() {
                      _settings.aniDb.fileSearchCooldownMinutes = int.parse(value);
                    }),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
