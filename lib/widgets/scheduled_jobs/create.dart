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

class _CreateScheduledJobState extends State<CreateScheduledJob> {
  String? _name;
  JobType? _type;
  ScheduleType? _scheduleType;
  Struct _options = Struct();
  Struct _scheduleOptions = Struct();

  final _formKey = GlobalKey<FormState>();

  void _onFilePathChanged(String? value) {
    if (value?.isNotEmpty ?? false) {
      _options.fields['filePath'] = Value(stringValue: value);
    } else {
      _options.fields.remove('filePath');
    }
    setState(() {
      _options = _options;
    });
  }

  void _onDirectoryChanged(String? value) {
    if (value?.isNotEmpty ?? false) {
      _options.fields['directoryPath'] = Value(stringValue: value);
    } else {
      _options.fields.remove('directoryPath');
    }
    setState(() {
      _options = _options;
    });
  }

  Future<String?> _pickFilePath(BuildContext context) async {
    return showDialog<String?>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Choose File'),
          content: const RemoteFilePicker(),
          actions: [
            TextButton(
              style: TextButton.styleFrom(textStyle: Theme.of(context).textTheme.labelLarge),
              child: const Text('Cancel'),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        );
      }
    );
  }

  Widget _jobDetailsWidget() {
    switch (_type) {
      case JobType.SortFile:
      case JobType.HashFile:
        return SizedBox(
            width: formWidth,
            child: TextFormField(
              initialValue: _options.fields["filePath"]?.stringValue,
              decoration: const InputDecoration(labelText: 'File Path'),
              onChanged: _onFilePathChanged,
              onTap: () async => _onFilePathChanged(await _pickFilePath(context))
            ));
      case JobType.SortDirectory:
      case JobType.HashDirectory:
        return SizedBox(
            width: formWidth,
            child: TextFormField(
              initialValue: _options.fields['directoryPath']?.stringValue,
              decoration: const InputDecoration(labelText: 'Directory Path'),
              onChanged: _onDirectoryChanged,
            ));
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
