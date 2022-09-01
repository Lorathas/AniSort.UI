import 'dart:convert';
import 'dart:math';

import 'package:flutter/services.dart' show rootBundle;

import 'generated/jobs.pb.dart';

List<JobReply>? _allJobs;
Map<String, JobReply>? _jobIdMap;

double clamp(double value, double minValue, double maxValue) {
  return min(max(value, minValue), maxValue);
}

Future<List<JobReply>> listJobs() async {
  if (_allJobs == null) {
    final data = await rootBundle.loadString('assets/sample_data/listjobs.json');

    final json = jsonDecode(data);

    _allJobs = List<JobReply>.empty(growable: true);
    _jobIdMap = <String, JobReply>{};

    for (final item in json) {
      final job = JobReply.create();
      job.mergeFromProto3Json(item);

      if (job.status == JobStatus.Completed) {
        job.isFinished = true;
        job.percentComplete = 1;

        for (var step in job.steps) {
          step.status = JobStatus.Completed;
          step.percentComplete = 1;
        }
      } else {
        job.isFinished = false;
      }

      if (job.status == JobStatus.Created || job.status == JobStatus.Queued) {
        job.percentComplete = 0;
        job.clearStartedAt();
        job.clearCompletedAt();

        for (var step in job.steps) {
          step.status = JobStatus.Created;
          step.percentComplete = 0;
        }
      }

      final totalStepPercentage = job.steps.map((e) => e.percentComplete).reduce((value, element) => value + element);

      for (var idx = 0, percent = totalStepPercentage; idx < job.steps.length; idx++, percent--) {
        final stepPercent = clamp(percent, 0, 1);

        if (percent < 0 && job.hasCompletedAt()) {
          job.steps[idx].status = JobStatus.Failed;
        } else if (stepPercent == 1) {
          job.steps[idx].status = JobStatus.Completed;
        } else if (stepPercent == 0) {
          job.steps[idx].status = JobStatus.Created;
        } else if (job.hasCompletedAt()) {
          job.steps[idx].status = JobStatus.Failed;
        } else {
          job.steps[idx].status = JobStatus.Running;
        }

        job.steps[idx].percentComplete = stepPercent;
      }

      _allJobs!.add(job);
      _jobIdMap![job.jobId] = job;
    }
  }

  return _allJobs!;
}

Future<List<JobReply>> listFilteredJobs(FilteredJobsRequest filter) async {
  final jobs = (await listJobs())
      .where((job) =>
          (!filter.hasStatus() || filter.status == job.status) &&
          (!filter.hasType() || filter.type == job.type) &&
          (!filter.hasName() || job.name.toLowerCase().contains(filter.name.toLowerCase())) &&
          (!filter.hasStartTime() ||
              job.startedAt.toDateTime().isAfter(filter.startTime.toDateTime()) ||
              job.completedAt.toDateTime().isBefore(filter.endTime.toDateTime())) &&
          (!filter.hasEndTime() ||
              job.startedAt.toDateTime().isBefore(filter.endTime.toDateTime()) ||
              job.completedAt.toDateTime().isBefore(filter.endTime.toDateTime())))
      .toList();

  jobs.sort((a, b) => a.startedAt.toDateTime().compareTo(b.startedAt.toDateTime()));

  return jobs;
}

Future<JobReply?> getJob(String jobId) async {
  await listJobs();

  return _jobIdMap![jobId];
}
