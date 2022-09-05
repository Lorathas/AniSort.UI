import 'package:flutter/material.dart';

import '../../widgets/scheduled_jobs/create.dart';

class CreateScheduledJobPage extends StatelessWidget {
  final String? jobId;

  const CreateScheduledJobPage({this.jobId, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Create Scheduled Job')),
      body: CreateScheduledJob(jobId: jobId)
    );
  }

}