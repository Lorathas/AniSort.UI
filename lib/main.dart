import 'package:anisort_ui/ioc.dart';
import 'package:anisort_ui/theme/swatches.dart';
import 'package:anisort_ui/widgets/jobs/queue.dart';
import 'package:flutter/material.dart';

void main() {
  configureDependencies();
  runApp(const AniSort());
}

class AniSort extends StatelessWidget {
  const AniSort({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
        appBarTheme: AppBarTheme(
            backgroundColor: slate.shade900
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: slate,
        canvasColor: slate.shade900,
        backgroundColor: slate.shade700,
        appBarTheme: AppBarTheme(
          backgroundColor: slate.shade800
        ),
      ),
      themeMode: ThemeMode.system,
      home: const AniSortHomePage(title: 'AniSort'),
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
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: Container(margin: const EdgeInsets.all(4), child: JobQueue()));
  }
}
