import 'package:anisort_ui/proto/generated/common.pb.dart';
import 'package:anisort_ui/proto/sample_data.dart' show listFilteredJobs;
import 'package:anisort_ui/widgets/jobs/queue_item.dart';
import 'package:flutter/material.dart';
import '../../ioc.dart';
import '../../proto/generated/jobs.pbgrpc.dart';
import '../../proto/generated/google/protobuf/timestamp.pb.dart';
import 'list_filter.dart';

class JobQueue extends StatefulWidget {
  late final JobServiceClient _stub;

  JobQueue({Key? key}) : super(key: key) {
    _stub = getIt.get<JobServiceClient>();
  }

  @override
  State<JobQueue> createState() => _JobQueueState();
}

class _JobQueueState extends State<JobQueue> {
  DateTime? _startTime;
  DateTime? _endTime;
  JobStatus? _status;

  String? _name;
  JobType? _type;
  FilterDirection _sort = FilterDirection.Descending;
  JobFilterSortBy _sortBy = JobFilterSortBy.QueuedAt;

  Future<List<JobReply>> _loadJobs() async {
    // final stub = JobServiceClient(appChannel);
    //
    // final jobs = List<JobReply>.empty(growable: true);
    //
    // await for (var job in stub.listJobs(_filteredJobsRequest())) {
    //   jobs.add(job);
    // }
    //
    // return jobs;

    return listFilteredJobs(_filteredJobsRequest());
  }

  FilteredJobsRequest _filteredJobsRequest() {
    final req = FilteredJobsRequest()
      ..sort = _sort
      ..sortBy = _sortBy;

    if (_status != null) {
      req.status = _status!;
    }

    if (_name != null) {
      req.name = _name!;
    }

    if (_type != null) {
      req.type = _type!;
    }

    if (_startTime != null) {
      req.startTime = Timestamp.fromDateTime(_startTime!);
    }

    if (_endTime != null) {
      req.endTime = Timestamp.fromDateTime(_endTime!);
    }

    return req;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        JobFilter(
          status: _status,
          name: _name,
          type: _type,
          startTime: _startTime,
          endTime: _endTime,
          onStatusChange: (status) => setState(() {
            _status = status;
          }),
          onNameChange: (name) => setState(() {
            _name = name;
          }),
          onTypeChange: (type) => setState(() {
            _type = type;
          }),
          onStartTimeChange: (startTime) => setState(() {
            _startTime = startTime;
          }),
          onEndTimeChange: (endTime) => setState(() {
            _endTime = endTime;
          }),
        ),
        Expanded(
            child: FutureBuilder<List<JobReply>>(
                future: _loadJobs(),
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return Center(child: Text(snapshot.error?.toString() ?? 'An unknown error has occurred'));
                  } else if (snapshot.hasData) {
                    return ListView.builder(itemCount: snapshot.data!.length, itemBuilder: (context, index) => JobQueueItem(job: snapshot.requireData[index]));
                  } else {
                    return const Center(child: CircularProgressIndicator());
                  }
                })),
      ],
    );
  }
}
