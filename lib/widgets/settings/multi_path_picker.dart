import 'package:anisort_ui/extensions/string_extension.dart';
import 'package:anisort_ui/proto/generated/files.pbenum.dart';
import 'package:anisort_ui/widgets/files/file_picker.dart';
import 'package:anisort_ui/widgets/settings/settings_section_header.dart';
import 'package:flutter/material.dart';

Future<String?> _pickDirectoryPath(BuildContext context, DirectoryFilesReply_DirectoryFileType type) async {
  return showDialog<String?>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Choose ${type.name.capitalize()}'),
          content: RemoteFilePicker(type: type),
          actions: [
            TextButton(
              style: TextButton.styleFrom(textStyle: Theme.of(context).textTheme.labelLarge),
              child: const Text('Cancel'),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        );
      });
}

class MultiPathPicker extends StatefulWidget {
  final List<String> paths;
  final Function(List<String>) onPathsChanged;
  final DirectoryFilesReply_DirectoryFileType type;
  final String title;

  const MultiPathPicker({super.key, required this.paths, required this.onPathsChanged, required this.type, required this.title});

  @override
  State<StatefulWidget> createState() => _MultiPathPickerState();
}

class _MultiPathPickerState extends State<MultiPathPicker> {
  final List<String> _pendingPaths = List.empty(growable: true);

  _removeRow(index) {
    if (index > widget.paths.length + _pendingPaths.length || index < 0) {
      return;
    }

    final allPaths = List<String>.from(widget.paths, growable: true);
    allPaths.addAll(_pendingPaths);

    allPaths.removeAt(index);

    setState(() {
      _pendingPaths.clear();
    });
    widget.onPathsChanged(allPaths);
  }

  _updatePath(index, value) {
    if (value == null || index > widget.paths.length + _pendingPaths.length || index < 0) {
      return;
    }

    final allPaths = List<String>.from(widget.paths, growable: true);
    allPaths.addAll(_pendingPaths);

    allPaths[index] = value;

    setState(() {
      _pendingPaths.clear();
    });
    widget.onPathsChanged(allPaths);
  }

  @override
  Widget build(BuildContext context) {
    final rows = List<DataRow>.empty(growable: true);

    for (var idx = 0; idx < widget.paths.length; idx++) {
      final path = widget.paths[idx];

      rows.add(DataRow(cells: [
        DataCell(Text(path.isEmpty ? 'Path' : path), showEditIcon: true, placeholder: path.isEmpty, onTap: () async => _updatePath(idx, await _pickDirectoryPath(context, widget.type))),
        DataCell(IconButton(icon: const Icon(Icons.remove), onPressed: () => _removeRow(idx))),
      ]));
    }

    for (var idx = 0; idx < _pendingPaths.length; idx++) {
      final path = _pendingPaths[idx];

      rows.add(
        DataRow(cells: [
          DataCell(Text(path.isEmpty ? 'Path' : path), showEditIcon: true, placeholder: path.isEmpty, onTap: () async => _updatePath(idx + widget.paths.length, await _pickDirectoryPath(context, widget.type))),
          DataCell(IconButton(icon: const Icon(Icons.remove), onPressed: () => _removeRow(idx)))
        ]),
      );
    }

    return Column(children: [
      Row(
        children: [
          Expanded(
            child: SettingsSectionHeader(title: widget.title)
          ),
          IntrinsicWidth(
              child: IconButton(
                icon: const Icon(Icons.add),
                onPressed: () => setState(() {
                  _pendingPaths.add("");
                }),
              )),
        ],
      ),
      LayoutBuilder(
          builder: (context, constraints) => ConstrainedBox(
              constraints: BoxConstraints(minWidth: constraints.maxWidth),
              child: DataTable(
                columns: const [
                  DataColumn(label: Text('Path')),
                  DataColumn(label: Text(''), numeric: true),
                ],
                rows: rows,
              ))),
    ]);
  }
}