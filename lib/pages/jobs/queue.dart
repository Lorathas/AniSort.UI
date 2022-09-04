import 'package:anisort_ui/models/anisort_page.dart';
import 'package:anisort_ui/widgets/nav.dart';
import 'package:flutter/material.dart';

import '../../widgets/jobs/queue.dart';

class JobQueuePage extends StatelessWidget {
  const JobQueuePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Job Queue')),
        body: Row(
          children: [const SizedBox(width: 192, child: NavigationPane(currentPage: AniSortPage.jobQueue)), Expanded(child: JobQueue())],
        ));
  }
}
