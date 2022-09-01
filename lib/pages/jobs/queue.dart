import 'package:flutter/material.dart';

import '../../widgets/jobs/queue.dart';

class QueuePage extends StatelessWidget {
  const QueuePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Job Queue')),
      body: JobQueue()
    );
  }
}