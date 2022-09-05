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

class NavigationPane extends StatelessWidget {
  const NavigationPane({required this.currentPage, Key? key}) : super(key: key);

  final AniSortPage currentPage;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(border: Border(right: BorderSide(width: 2.0, color: slate.shade700)), color: slate.shade800),
        margin: const EdgeInsets.only(right: 4),
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: ListView(
          children: [
            _NavigationPaneItem(title: 'Job Queue', page: AniSortPage.jobQueue, currentPage: currentPage, icon: Icons.queue),
            _NavigationPaneItem(title: 'Scheduled Jobs', page: AniSortPage.scheduledJobs, currentPage: currentPage, icon: Icons.timer),
            _NavigationPaneItem(title: 'Files', page: AniSortPage.files, currentPage: currentPage, icon: Icons.folder),
            _NavigationPaneItem(title: 'Anime', page: AniSortPage.anime, currentPage: currentPage, icon: Icons.tv),
            _NavigationPaneItem(title: 'Settings', page: AniSortPage.settings, currentPage: currentPage, icon: Icons.settings),
          ],
        ));
  }
}

class _NavigationPaneItem extends StatelessWidget {
  const _NavigationPaneItem({required this.title, required this.page, required this.currentPage, this.icon});

  final String title;
  final AniSortPage page;
  final AniSortPage currentPage;
  final IconData? icon;

  void _onClick(BuildContext context) {
    // ignore: missing_enum_constant_in_switch
    switch (page) {
      case AniSortPage.jobQueue:
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const JobQueuePage()));
        break;
      case AniSortPage.files:
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const FileSearchPage()));
        break;
      case AniSortPage.anime:
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const AnimePage()));
        break;
      case AniSortPage.settings:
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SettingsPage()));
        break;
      case AniSortPage.scheduledJobs:
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ScheduledJobsPage()));
        break;
    }
  }

  static const double iconFrameSize = 24;
  static const double iconSize = 22;

  @override
  Widget build(BuildContext context) {
    return TappableItem(
        onTap: () => _onClick(context),
        highlightColor: slate.shade700,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        child: Row(children: [
          SizedBox(
              width: iconFrameSize,
              height: iconFrameSize,
              child: Icon(
                icon,
                size: iconSize,
              )),
          Expanded(
              child: Container(
                  margin: const EdgeInsets.only(left: 8),
                  child: Text(
                    title,
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ))),
        ]));
  }
}
