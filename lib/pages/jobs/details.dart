import 'package:flutter/material.dart';

import '../../proto/generated/jobs.pb.dart';
import '../../widgets/jobs/details.dart';

class JobDetailsPage extends StatelessWidget {
  const JobDetailsPage({required this.job, Key? key}) : super(key: key);

  final JobReply job;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Job Details: ${job.name}')),
      body: Container(
        margin: const EdgeInsets.all(4),
        child: JobDetails(job: job)
      )
    );
  }

}