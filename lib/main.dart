
import 'package:anisort_ui/ioc.dart';
import 'package:anisort_ui/pages/base_page.dart';
import 'package:anisort_ui/service/theme_service.dart';
import 'package:anisort_ui/theme/swatches.dart';
import 'package:anisort_ui/widgets/jobs/queue.dart';
import 'package:anisort_ui/widgets/nav.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  await configureDependencies();
  runApp(AniSort(themeService: getIt.get<ThemeService>()));
}

class AniSort extends StatelessWidget {
  final ThemeService themeService;

  const AniSort({Key? key, required this.themeService}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: themeService.stream,
      builder: (context, snapshot) => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          brightness: Brightness.light,
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: slate,
          canvasColor: slate.shade50,
          backgroundColor: slate.shade400,
          cardColor: slate.shade200,
          primaryColor: slate.shade100,
          unselectedWidgetColor: slate.shade500,
          bottomAppBarTheme: BottomAppBarTheme(color: slate.shade800),
          appBarTheme: AppBarTheme(backgroundColor: slate.shade800),
          dialogTheme: DialogTheme(
            backgroundColor: slate.shade200,
          ),
          navigationRailTheme: NavigationRailThemeData(
              backgroundColor: slate.shade800,
              indicatorColor: slate.shade100,
              selectedIconTheme: IconThemeData(
                color: slate.shade100,
              ),
              unselectedIconTheme: IconThemeData(
                color: slate.shade400,
              )),
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: slate,
          canvasColor: slate.shade900,
          backgroundColor: slate.shade700,
          cardColor: slate.shade700,
          primaryColor: slate.shade100,
          unselectedWidgetColor: slate.shade500,
          bottomAppBarTheme: BottomAppBarTheme(color: slate.shade800),
          appBarTheme: AppBarTheme(backgroundColor: slate.shade800),
          dialogTheme: DialogTheme(
            backgroundColor: slate.shade900,
          ),
          navigationRailTheme: NavigationRailThemeData(
              backgroundColor: slate.shade800,
              indicatorColor: slate.shade100,
              selectedIconTheme: IconThemeData(
                color: slate.shade100,
              ),
              unselectedIconTheme: IconThemeData(
                color: slate.shade400,
              )),
        ),
        themeMode: snapshot.data ?? ThemeMode.system,
        home: const AniSortHomePage(title: 'AniSort'),
      ),
    );
  }
}

class AniSortHomePage extends StatefulWidget {
  const AniSortHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<AniSortHomePage> createState() => _AniSortHomePageState();
}

class _AniSortHomePageState extends State<AniSortHomePage> {
  @override
  Widget build(BuildContext context) {
    return BasePage(
      selectedIndex: AniSortPage.jobQueue,
      appBar: AppBar(title: const Text('AniSort')),
      body: Padding(padding: const EdgeInsets.all(8.0), child: JobQueue()),
    );
  }
}
