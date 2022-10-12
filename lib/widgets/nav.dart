import 'package:anisort_ui/widgets/jobs/queue.dart';
import 'package:anisort_ui/widgets/tappable_item.dart';
import 'package:flutter/material.dart';

import '../models/anisort_page.dart';
import '../pages/anime/list.dart';
import '../pages/files/list.dart';
import '../pages/jobs/queue.dart';
import '../pages/scheduled_jobs/list.dart';
import '../pages/settings.dart';
import '../theme/swatches.dart';

class NavigationPane extends StatefulWidget {
  const NavigationPane({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _NavigationPaneState();
}

class _NavigationPaneState extends State<NavigationPane> {
  bool _extended = false;
  int _selectedIndex = 1;
  
  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      destinations: const [
        NavigationRailDestination(icon: Icon(Icons.menu), label: Text('')),
        NavigationRailDestination(icon: Icon(Icons.queue), label: Text('Job Queue')),
        NavigationRailDestination(icon: Icon(Icons.timer), label: Text('Scheduled Jobs')),
        NavigationRailDestination(icon: Icon(Icons.file_copy), label: Text('Files')),
        NavigationRailDestination(icon: Icon(Icons.tv), label: Text('Anime')),
        NavigationRailDestination(icon: Icon(Icons.settings), label: Text('Settings')),
      ],
      selectedIndex: _selectedIndex,
      indicatorColor: slate.shade300,
      extended: _extended,
      onDestinationSelected: (index) {
        if (index == _selectedIndex) {
          return;
        }

        switch (index) {
          case 0:
            setState(() {_extended = !_extended;});
            break;
          case 1:
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const JobQueuePage()));
            break;
          case 2:
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ScheduledJobsPage()));
            break;
          case 3:
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const FileSearchPage()));
            break;
          case 4:
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const AnimePage()));
            break;
          case 5:
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SettingsPage()));
            break;
        }

        if (index != 0) {
          _selectedIndex = index;
        }
      },
    );
  }
}