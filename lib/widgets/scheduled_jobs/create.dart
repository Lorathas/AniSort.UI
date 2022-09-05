import 'package:flutter/material.dart';

import '../../proto/generated/google/protobuf/struct.pb.dart';
import '../../proto/generated/jobs.pbenum.dart';
import '../../proto/generated/scheduled_jobs.pbenum.dart';

class CreateScheduledJob extends StatefulWidget {

  final String? jobId;

  const CreateScheduledJob({this.jobId, Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _CreateScheduledJobState();
}

class _CreateScheduledJobState extends State<CreateScheduledJob> {

  String? _name;
  JobType? _type;
  ScheduleType? _scheduleType;
  Struct _options = Struct();
  Struct _scheduleOptions = Struct();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: []
    );
  }

}