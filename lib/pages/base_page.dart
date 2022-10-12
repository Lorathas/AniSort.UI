import 'package:anisort_ui/adaptive.dart';
import 'package:anisort_ui/widgets/nav.dart';
import 'package:anisort_ui/widgets/screen_type_builder.dart';
import 'package:flutter/material.dart';

class BasePage extends StatelessWidget {
  final PreferredSizeWidget? appBar;
  final Widget body;
  final int selectedIndex;

  const BasePage({super.key, this.appBar, required this.body, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {

    final screenType = getScreenType(context);

    Widget screenTypeBody;
    Widget? bottomNavigationBar;

    switch (screenType) {
      case ScreenType.desktop:
      case ScreenType.tablet:
        screenTypeBody = Row(
            children: [
              IntrinsicWidth(child: AniSortNavigationRail(selectedIndex: selectedIndex)),
              Expanded(child: body),
            ]
        );
        break;
      default:
          screenTypeBody = body;
          bottomNavigationBar = AniSortBottomNavigationBar(selectedIndex: selectedIndex);
      break;
    }

    return Scaffold(
      appBar: appBar,
      body: screenTypeBody,
      bottomNavigationBar: bottomNavigationBar,
    );
  }

}