import 'package:anisort_ui/pages/base_page.dart';
import 'package:anisort_ui/widgets/anime/list.dart';
import 'package:anisort_ui/widgets/nav.dart';
import 'package:flutter/material.dart';

class AnimePage extends StatelessWidget {
  const AnimePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasePage(
      selectedIndex: AniSortPage.anime,
      appBar: AppBar(title: const Text('Anime')),
      body: const Anime(),
    );
  }
}