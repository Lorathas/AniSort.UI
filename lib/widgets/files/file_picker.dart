import 'dart:async';

import 'package:anisort_ui/ioc.dart';
import 'package:anisort_ui/proto/generated/files.pbgrpc.dart';
import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:path/path.dart' as p;

import '../tappable_item.dart';

class RemoteFilePicker extends StatefulWidget {
  const RemoteFilePicker({Key? key, this.type = DirectoryFilesReply_DirectoryFileType.File}) : super(key: key);

  final DirectoryFilesReply_DirectoryFileType type;

  @override
  State<StatefulWidget> createState() => _RemoteFilePickerState();
}

class _RemoteFilePickerState extends State<RemoteFilePicker> {
  _RemoteFilePickerState({localFileClient}) : _localFileClient = localFileClient ?? getIt.get<LocalFileServiceClient>();

  final LocalFileServiceClient _localFileClient;
  final _pathRequestStream = StreamController<DirectoryFilesRequest>.broadcast();

  ResponseStream<DirectoryFilesReply>? _currentDirectoryFilesStream;

  get _directoryFilesStream => _currentDirectoryFilesStream ??= _localFileClient.getFilesInDirectory(_pathRequestStream.stream);

  String _path = "";

  _setPath(String path) {
    _path = path;
    _pathRequestStream
        .add(DirectoryFilesRequest(path: _path, includeDrives: true, excludeFiles: widget.type == DirectoryFilesReply_DirectoryFileType.Directory));
  }

  _moveUp() {
    final paths = p.split(_path);

    if (paths.length > 1) {
      _path = p.joinAll(paths.sublist(0, paths.length - 1));
      _pathRequestStream
          .add(DirectoryFilesRequest(path: _path, includeDrives: true, excludeFiles: widget.type == DirectoryFilesReply_DirectoryFileType.Directory));
    }
  }

  @override
  void deactivate() {
    _currentDirectoryFilesStream?.cancel();
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<DirectoryFilesReply>(
        stream: _directoryFilesStream,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            final grpcError = snapshot.error as GrpcError;

            FlutterError.presentError(FlutterErrorDetails(exception: grpcError));

            return Center(child: Text(grpcError.message ?? 'An unknown error has occurred'));
          } else {
            if (snapshot.hasData) {
              _path = snapshot.data!.currentPath;
            }

            final paths = snapshot.hasData
                ? snapshot.data!.files.where((p) => widget.type != DirectoryFilesReply_DirectoryFileType.Directory || widget.type == p.type).toList()
                : List.empty();

            return ConstrainedBox(
              constraints: const BoxConstraints.expand(width: 768),
              child: Row(
                children: [
                  ConstrainedBox(
                    constraints: const BoxConstraints.expand(width: 128),
                    child: Column(children: [
                      Container(alignment: Alignment.centerLeft, padding: const EdgeInsets.all(4), child: const Text('Drives', style: TextStyle(fontSize: 20))),
                      snapshot.hasData
                          ? ListView.builder(
                              controller: ScrollController(),
                              shrinkWrap: true,
                              itemCount: snapshot.data!.drives.length,
                              itemBuilder: (context, index) {
                                final drive = snapshot.data!.drives[index];

                                return TappableItem(
                                    padding: const EdgeInsets.all(4),
                                    onTap: () => _setPath(drive),
                                    child: Row(children: [
                                      const SizedBox(width: 24, height: 24, child: Icon(Icons.storage, size: 20)),
                                      Expanded(child: Container(margin: const EdgeInsets.only(left: 4), child: Text(drive, overflow: TextOverflow.ellipsis)))
                                    ]));
                              })
                          : Expanded(child: Container()),
                    ]),
                  ),
                  Expanded(
                    child: Column(children: [
                      Container(
                          margin: const EdgeInsets.only(right: 4),
                          alignment: Alignment.centerLeft,
                          child: const Text('Contents', style: TextStyle(fontSize: 20))),
                      Row(
                        children: [
                          Expanded(
                              child: ClipRRect(
                            borderRadius: const BorderRadius.all(Radius.circular(4)),
                            child: Container(
                                decoration: BoxDecoration(color: Theme.of(context).unselectedWidgetColor), padding: const EdgeInsets.all(6), child: Text(_path)),
                          )),
                          IconButton(
                            icon: const Icon(Icons.keyboard_return),
                            onPressed: () => _moveUp(),
                          ),
                          widget.type == DirectoryFilesReply_DirectoryFileType.Directory
                              ? ElevatedButton(onPressed: () => Navigator.pop(context, _path), child: const Text('Select'))
                              : const SizedBox.shrink(),
                        ],
                      ),
                      Expanded(
                        child: snapshot.hasData
                            ? ListView.builder(
                                controller: ScrollController(),
                                shrinkWrap: true,
                                itemCount: paths.length,
                                itemBuilder: (context, index) => _DirectoryContentsItem(
                                      selectorType: widget.type,
                                      directoryFile: paths[index],
                                      onPathChanged: (value) => _setPath(value),
                                      onFileSelected: (value) => Navigator.pop(context, value),
                                    ))
                            : const Center(child: CircularProgressIndicator()),
                      ),
                    ]),
                  ),
                ],
              ),
            );
          }
        });
  }
}

class _DirectoryContentsItem extends StatelessWidget {
  final DirectoryFilesReply_DirectoryFile directoryFile;
  final DirectoryFilesReply_DirectoryFileType selectorType;
  final Function(String)? onPathChanged;
  final Function(String)? onFileSelected;

  const _DirectoryContentsItem({super.key, required this.directoryFile, required this.selectorType, this.onPathChanged, this.onFileSelected});

  void _onTap() {
    switch (directoryFile.type) {
      case DirectoryFilesReply_DirectoryFileType.Directory:
        onPathChanged?.call(directoryFile.path);
        break;
      case DirectoryFilesReply_DirectoryFileType.File:
        onFileSelected?.call(directoryFile.path);
        break;
    }
  }

  void _onDoubleTap() {
    switch (directoryFile.type) {
      case DirectoryFilesReply_DirectoryFileType.Directory:
        onPathChanged?.call(directoryFile.path);
        break;
      case DirectoryFilesReply_DirectoryFileType.File:
        _onTap();
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: directoryFile.name,
      child: TappableItem(
          onTap: _onTap,
          onDoubleTap: _onDoubleTap,
          child: SizedBox(
              height: 36,
              child: Row(children: [
                SizedBox(
                    width: 24,
                    height: 24,
                    child: Icon(directoryFile.type == DirectoryFilesReply_DirectoryFileType.Directory ? Icons.folder : Icons.description, size: 20)),
                Expanded(
                    child: Container(
                        margin: const EdgeInsets.only(left: 4),
                        child: Text(
                          directoryFile.name,
                          overflow: TextOverflow.ellipsis,
                        )))
              ]))),
    );
  }
}
