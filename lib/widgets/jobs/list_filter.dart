import 'package:flutter/material.dart';

import '../../proto/generated/common.pbenum.dart';
import '../../proto/generated/jobs.pbenum.dart';

class JobFilter extends StatelessWidget {
  const JobFilter(
      {this.status,
      this.name,
      this.type,
      this.startTime,
      this.endTime,
      this.onStatusChange,
      this.onNameChange,
      this.onTypeChange,
      this.onStartTimeChange,
      this.onEndTimeChange,
      Key? key})
      : super(key: key);

  final JobStatus? status;
  final Function(JobStatus?)? onStatusChange;
  final String? name;
  final Function(String?)? onNameChange;
  final JobType? type;
  final Function(JobType?)? onTypeChange;
  final DateTime? startTime;
  final Function(DateTime?)? onStartTimeChange;
  final DateTime? endTime;
  final Function(DateTime?)? onEndTimeChange;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
                child: Container(
                    margin: const EdgeInsets.only(right: 4),
                    child: DropdownButtonFormField<JobStatus?>(
                        decoration: const InputDecoration(border: UnderlineInputBorder(), labelText: 'Status'),
                        value: status,
                        onChanged: (value) => onStatusChange!(value),
                        items: [null, JobStatus.Created, JobStatus.Queued, JobStatus.Running, JobStatus.Failed, JobStatus.Completed]
                            .map((val) => DropdownMenuItem<JobStatus?>(value: val, child: Text(val?.toString() ?? 'None')))
                            .toList()))),
            Expanded(
                child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    child: DropdownButtonFormField<JobType?>(
                        decoration: const InputDecoration(border: UnderlineInputBorder(), labelText: 'Type'),
                        value: type,
                        onChanged: (value) => onTypeChange!(value),
                        items: [null, JobType.HashFile, JobType.HashDirectory, JobType.SortFile, JobType.SortDirectory, JobType.Defragment]
                            .map((val) => DropdownMenuItem<JobType?>(value: val, child: Text(val?.toString() ?? 'None')))
                            .toList()))),
            Expanded(
                child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    child: TextFormField(
                        decoration: const InputDecoration(border: UnderlineInputBorder(), labelText: 'Search'),
                        initialValue: name,
                        onChanged: (text) => onNameChange!(text)))),
            Expanded(
                child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    child: TextFormField(
                      initialValue: startTime?.toString(),
                      decoration: const InputDecoration(border: UnderlineInputBorder(), labelText: 'Start'),
                      onTap: () async => onStartTimeChange?.call(await showDatePicker(
                          context: context, firstDate: DateTime(1970, 1, 1), lastDate: endTime ?? DateTime.now(), initialDate: startTime ?? DateTime.now())),
                    ))),
            Expanded(
                child: Container(
                    margin: const EdgeInsets.only(left: 4),
                    child: TextFormField(
                      initialValue: endTime?.toString(),
                      decoration: const InputDecoration(border: UnderlineInputBorder(), labelText: 'End'),
                      onTap: () async => onEndTimeChange?.call(await showDatePicker(
                          context: context, firstDate: startTime ?? DateTime(1970, 1, 1), lastDate: DateTime.now(), initialDate: endTime ?? DateTime.now())),
                    )))
          ],
        ));
  }
}
