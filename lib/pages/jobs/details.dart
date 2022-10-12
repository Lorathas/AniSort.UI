import 'package:anisort_ui/pages/base_page.dart';
import 'package:anisort_ui/widgets/nav.dart';
import 'package:flutter/material.dart';

import '../../proto/generated/jobs.pb.dart';
import '../../widgets/jobs/details.dart';

class JobDetailsPage extends StatelessWidget {
  const JobDetailsPage({required this.job, Key? key}) : super(key: key);

  final JobReply job;

  @override
  Widget build(BuildContext context) {
    return BasePage(
      selectedIndex: AniSortPage.unknown,
      appBar: AppBar(title: Text('Job Details: ${job.name}')),
      body: Container(
        margin: const EdgeInsets.all(4),
        child: JobDetails(job: job)
      ),
    );
  }

}