import 'package:anisort_ui/proto/generated/files.pbgrpc.dart';
import 'package:flutter/material.dart';

import '../../proto/generated/google/protobuf/struct.pb.dart';
import '../../proto/generated/jobs.pbenum.dart';
import '../../proto/generated/scheduled_jobs.pbenum.dart';
import '../../util/enums.dart';
import '../files/file_picker.dart';

class CreateScheduledJob extends StatefulWidget {
  final String? jobId;

  const CreateScheduledJob({this.jobId, Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _CreateScheduledJobState();
}

const double formWidth = 384;

const filePathKey = "filePath";
const directoryPathKey = "directoryPath";

class _CreateScheduledJobState extends State<CreateScheduledJob> {
  String? _name;
  JobType? _type;
  ScheduleType? _scheduleType;
  Struct _options = Struct();
  Struct _scheduleOptions = Struct();

  final _formKey = GlobalKey<FormState>();
  final _pathController = TextEditingController();
  final _directoryController = TextEditingController();

  void _onFilePathChanged(String? value) {
    _pathController.text = value ?? "";
    if (value?.isNotEmpty ?? false) {
      _options.fields[filePathKey] = Value(stringValue: value);
    } else {
      _options.fields.remove(filePathKey);
    }
    setState(() {
      _options = _options;
    });
  }

  void _onDirectoryChanged(String? value) {
    _directoryController.text = value ?? "";
    if (value?.isNotEmpty ?? false) {
      _options.fields[directoryPathKey] = Value(stringValue: value);
    } else {
      _options.fields.remove(directoryPathKey);
    }
    setState(() {
      _options = _options;
    });
  }

  Future<String?> _pickFilePath(BuildContext context, DirectoryFilesReply_DirectoryFileType type) async {
    return showDialog<String?>(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Choose File'),
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

  Widget _jobDetailsWidget() {
    switch (_type) {
      case JobType.SortFile:
      case JobType.HashFile:
        return SizedBox(
          width: formWidth,
          child: TextFormField(
              mouseCursor: SystemMouseCursors.click,
              readOnly: true,
              controller: _pathController,
              decoration: const InputDecoration(labelText: 'File Path'),
              onChanged: _onFilePathChanged,
              onTap: () async => _onFilePathChanged(await _pickFilePath(context, DirectoryFilesReply_DirectoryFileType.File))),
        );
      case JobType.SortDirectory:
      case JobType.HashDirectory:
        return SizedBox(
          width: formWidth,
          child: TextFormField(
              mouseCursor: SystemMouseCursors.click,
              readOnly: true,
              controller: _directoryController,
              decoration: const InputDecoration(labelText: 'Directory Path'),
              onChanged: _onDirectoryChanged,
              onTap: () async => _onDirectoryChanged(await _pickFilePath(context, DirectoryFilesReply_DirectoryFileType.Directory))),
        );
      default:
        return const SizedBox.shrink();
    }
  }

  Widget _scheduleDetailsWidget() {
    switch (_scheduleType) {
      default:
        return const SizedBox.shrink();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center, children: [
        Container(
            width: formWidth,
            margin: const EdgeInsets.all(4),
            child: TextFormField(
                decoration: const InputDecoration(labelText: 'Name'),
                initialValue: _name,
                onChanged: (value) => setState(() {
                      _name = value;
                    }))),
        Container(
            width: formWidth,
            margin: const EdgeInsets.all(4),
            child: DropdownButtonFormField<JobType?>(
                decoration: const InputDecoration(border: UnderlineInputBorder(), labelText: 'Job'),
                value: _type,
                onChanged: (value) => setState(() {
                      _type = value;
                    }),
                items: [null, JobType.HashFile, JobType.HashDirectory, JobType.SortFile, JobType.SortDirectory, JobType.Defragment]
                    .map((val) => DropdownMenuItem<JobType?>(value: val, child: Text(enumToSpacedName(val) ?? 'None')))
                    .toList())),
        _jobDetailsWidget(),
        Container(
            width: formWidth,
            margin: const EdgeInsets.all(4),
            child: DropdownButtonFormField<ScheduleType?>(
                decoration: const InputDecoration(border: UnderlineInputBorder(), labelText: 'Schedule'),
                value: _scheduleType,
                onChanged: (value) => setState(() {
                      _scheduleType = value;
                    }),
                items: [null, ScheduleType.Timed, ScheduleType.FileChange]
                    .map((val) => DropdownMenuItem<ScheduleType?>(value: val, child: Text(enumToSpacedName(val) ?? 'None')))
                    .toList())),
        _scheduleDetailsWidget(),
        Container(
            width: 128,
            margin: const EdgeInsets.only(left: 4, right: 4, bottom: 4, top: 16),
            child: ElevatedButton(
              child: const Text('Submit'),
              onPressed: () {
                if (!_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Processing Data')));
                }
              },
            ))
      ])),
    );
  }
}
