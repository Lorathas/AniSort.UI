import 'package:anisort_ui/widgets/jobs/queue.dart';
import 'package:anisort_ui/widgets/tappable_item.dart';
import 'package:flutter/material.dart';

import 'package:anisort_ui/pages/anime/list.dart';
import 'package:anisort_ui/pages/files/list.dart';
import 'package:anisort_ui/pages/jobs/queue.dart';
import 'package:anisort_ui/pages/scheduled_jobs/list.dart';
import 'package:anisort_ui/pages/settings.dart';
import 'package:anisort_ui/theme/swatches.dart';

class _NavigationItem {
  final IconData icon;
  final String label;
  final Function(BuildContext) onSelected;

  _NavigationItem(this.icon, this.label, this.onSelected);
}

class AniSortPage {
  static const unknown = -1;
  static const jobQueue = 0;
  static const scheduledJobs = 1;
  static const files = 2;
  static const anime = 3;
  static const settings = 4;
}

final _navigationItems = [
  _NavigationItem(Icons.queue, 'Job Queue', (context) => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const JobQueuePage()))),
  _NavigationItem(Icons.timer, 'Scheduled Jobs', (context) => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ScheduledJobsPage()))),
  _NavigationItem(Icons.file_copy, 'Files', (context) => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const FileSearchPage()))),
  _NavigationItem(Icons.tv, 'Anime', (context) => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const AnimePage()))),
  _NavigationItem(Icons.settings, 'Settings', (context) => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SettingsPage()))),
];

_onSelected(BuildContext context, int selectedIndex, Function(int)? onSelected) {
  return (index) {
    if (index == -1 || index == selectedIndex) {
      return;
    }

    if (index >= _navigationItems.length) {
      throw Exception('Nav item index out of range: $index');
    }

    _navigationItems[index].onSelected(context);
    onSelected?.call(index);
  };
}

class AniSortNavigationRail extends StatefulWidget {
  final int selectedIndex;
  final Function(int)? onSelected;

  const AniSortNavigationRail({Key? key, required this.selectedIndex, this.onSelected}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AniSortNavigationRailState();
}

class _AniSortNavigationRailState extends State<AniSortNavigationRail> {
  bool _extended = false;

  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      destinations: _navigationItems.map((i) => NavigationRailDestination(icon: Icon(i.icon), label: Text(i.label))).toList(),
      selectedIndex: widget.selectedIndex,
      indicatorColor: slate.shade300,
      extended: _extended,
      leading: IconButton(
          icon: const Icon(Icons.menu),
          color: Theme.of(context).navigationRailTheme.unselectedIconTheme?.color,
          onPressed: () => setState(() {
                _extended = !_extended;
              })),
      onDestinationSelected: _onSelected(context, widget.selectedIndex, widget.onSelected),
    );
  }
}

class AniSortBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int)? onSelected;

  const AniSortBottomNavigationBar({super.key, required this.selectedIndex, this.onSelected});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: slate.shade800,
      ),
      child: BottomNavigationBar(
        currentIndex: selectedIndex,
        items: _navigationItems.map((i) => BottomNavigationBarItem(icon: Icon(i.icon), label: i.label)).toList(),
        onTap: _onSelected(context, selectedIndex, onSelected),
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Theme.of(context).unselectedWidgetColor,
      ),
    );
  }
}
