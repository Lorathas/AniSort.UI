import 'package:anisort_ui/proto/generated/jobs.pb.dart';
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

class JobQueueItem extends StatefulWidget {
  final JobReply job;

  const JobQueueItem({required this.job, Key? key}) : super(key: key);

  @override
  State<JobQueueItem> createState() => _JobQueueItemState();
}

class _JobQueueItemState extends State<JobQueueItem> {
  bool _hovered = false;

  Color? get _backgroundColor => _hovered ? slate.shade800 : null;

  MouseCursor get _cursor => _hovered ? SystemMouseCursors.click : MouseCursor.defer;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: MouseRegion(
          onEnter: (_) => setState(() {
            _hovered = true;
          }),
          onExit: (_) => setState(() {
            _hovered = false;
          }),
          cursor: _cursor,
          child: AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              curve: Curves.fastOutSlowIn,
              decoration: BoxDecoration(color: _backgroundColor),
              padding: const EdgeInsets.all(4),
              child: Row(
                children: [
                  SizedBox(width: 192, child: Text(widget.job.name, overflow: TextOverflow.ellipsis)),
                  ConstrainedBox(
                      constraints: const BoxConstraints(
                        minWidth: 32,
                        maxWidth: 256,
                        maxHeight: 16,
                        minHeight: 16,
                      ),
                      child: ClipRRect(
                          borderRadius: const BorderRadius.all(Radius.circular(4)),
                          child: LinearProgressIndicator(
                              value: _jobPercent(widget.job.status, widget.job.percentComplete), color: _statusColor(widget.job.status)))),
                ],
              )),
        ),
        onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => JobDetailsPage(job: widget.job))));
  }
}
