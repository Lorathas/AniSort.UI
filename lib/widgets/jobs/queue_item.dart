import 'package:anisort_ui/proto/generated/jobs.pb.dart';
import 'package:anisort_ui/widgets/tappable_item.dart';
import 'package:flutter/material.dart';

import '../../theme/swatches.dart';
import '../../pages/jobs/details.dart';

Color _statusColor(JobStatus status) {
  switch (status) {
    case JobStatus.Completed:
      return Colors.greenAccent.shade400;
    case JobStatus.Failed:
      return Colors.redAccent.shade400;
    case JobStatus.Running:
      return Colors.orangeAccent.shade400;
    default:
      return Colors.grey.shade500;
  }
}

Color? _backgroundColor(JobReply job, JobStep step) {
  return null;
}

double? _jobPercent(JobStatus status, double percentComplete) {
  return status == JobStatus.Running ? null : percentComplete;
}

class JobQueueItem extends StatelessWidget {
  final JobReply job;

  const JobQueueItem({required this.job, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TappableItem(
        padding: const EdgeInsets.all(4),
        child: Row(
          children: [
            SizedBox(width: 192, child: Text(job.name, overflow: TextOverflow.ellipsis)),
            ConstrainedBox(
                constraints: const BoxConstraints(
                  minWidth: 32,
                  maxWidth: 256,
                  maxHeight: 16,
                  minHeight: 16,
                ),
                child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(4)),
                    child: LinearProgressIndicator(value: _jobPercent(job.status, job.percentComplete), color: _statusColor(job.status)))),
          ],
        ),
        onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => JobDetailsPage(job: job))));
  }
}
