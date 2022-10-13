import 'package:anisort_ui/pages/base_page.dart';
import 'package:anisort_ui/widgets/nav.dart';
import 'package:flutter/material.dart';

import '../../widgets/jobs/queue.dart';

class JobQueuePage extends StatelessWidget {
  const JobQueuePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasePage(
      selectedIndex: AniSortPage.jobQueue,
      appBar: AppBar(title: const Text('Job Queue')),
      body: Padding(padding: const EdgeInsets.all(8.0), child: JobQueue()),
    );
  }
}
