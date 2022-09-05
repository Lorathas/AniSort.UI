import 'package:anisort_ui/ioc.dart';
import 'package:anisort_ui/proto/generated/google/protobuf/empty.pb.dart';
import 'package:anisort_ui/proto/generated/scheduled_jobs.pbgrpc.dart';
import 'package:flutter/material.dart';

import '../../pages/scheduled_jobs/create.dart';

class ScheduledJobs extends StatefulWidget {
  const ScheduledJobs({Key? key}) : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  State<StatefulWidget> createState() => _ScheduledJobsState(scheduledJobsClient: getIt.get<ScheduledJobServiceClient>());
}

class _ScheduledJobsState extends State<ScheduledJobs> {
  _ScheduledJobsState({required this.scheduledJobsClient});

  final ScheduledJobServiceClient scheduledJobsClient;

  Future<List<ScheduledJob>> _loadScheduledJobs() async {
    final response = scheduledJobsClient.listScheduledJobs(Empty());

    return await response.toList();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: const EdgeInsets.all(4),
            alignment: AlignmentDirectional.centerEnd,
            child: ElevatedButton(
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const CreateScheduledJobPage())),
                child: const Text('Create'))),
        Expanded(
            child: Container(
                margin: const EdgeInsets.all(4),
                child: FutureBuilder<List<ScheduledJob>>(
                    future: _loadScheduledJobs(),
                    builder: (context, snapshot) {
                      if (snapshot.hasError) {
                        return Center(child: Text(snapshot.error?.toString() ?? 'An unknown error has occurred'));
                      } else if (snapshot.hasData) {
                        return snapshot.data!.isNotEmpty
                            ? ListView.builder(
                                itemCount: snapshot.data!.length,
                                itemBuilder: (context, index) {
                                  final scheduledJob = snapshot.data![index];

                                  return Text(scheduledJob.name);
                                })
                            : const Center(child: Text('No scheduled jobs to display'));
                      } else {
                        return const Center(child: CircularProgressIndicator());
                      }
                    })))
      ],
    );
  }
}
