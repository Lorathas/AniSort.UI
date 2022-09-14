import 'package:anisort_ui/ioc.dart';
import 'package:anisort_ui/proto/generated/files.pbgrpc.dart';
import 'package:flutter/material.dart';

class RemoteFilePickerDialog extends StatefulWidget {
  const RemoteFilePickerDialog({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _RemoteFilePickerDialogState();
}

class _RemoteFilePickerDialogState extends State<RemoteFilePickerDialog> {
  final LocalFileServiceClient localFileClient;

  _RemoteFilePickerDialogState({localFileClient})
      : localFileClient = localFileClient ?? getIt.get<LocalFileServiceClient>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

}