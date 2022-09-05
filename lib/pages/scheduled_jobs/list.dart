import 'package:flutter/material.dart';

import '../../widgets/scheduled_jobs/list.dart';

class ScheduledJobsPage extends StatelessWidget {
  const ScheduledJobsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Scheduled Jobs')),
      body: const ScheduledJobs()
    );
  }

}