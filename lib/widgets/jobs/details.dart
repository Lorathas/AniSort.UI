import 'package:flutter/material.dart';

import '../../proto/generated/jobs.pb.dart';

class JobDetails extends StatelessWidget {
  const JobDetails({required this.job, Key? key}) : super(key: key);

  final JobReply job;

  Future<JobDetails> _loadJobDetails() {
    return Future<JobDetails>.error('');
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [

      ]
    );
  }

}