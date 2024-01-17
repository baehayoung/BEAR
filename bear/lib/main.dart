import 'package:bear/component/tab/tabbar.dart';
import 'package:bear/views/home_page.dart';
import 'package:bear/views/input_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:bear/model/model.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BEAR',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 241, 131, 28)),
        useMaterial3: true,
      ),
      home: const App(title: 'BEAR'),
    );
  }
}

class App extends StatefulWidget {
  const App({super.key, required this.title});
  final String title;

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
          centerTitle: true,
        ),
        body: SafeArea(
            child: Center(
          child: CustomTabBar(
              TabInfo(pages: [
                const HomePage(),
                const InputPage(),
                const HomePage(),
                const HomePage(),
                const HomePage()
              ], tabs: [
                const BottomNavigationBarItem(
                    label: '홈',
                    icon: Icon(
                      Icons.home_outlined,
                    )),
                const BottomNavigationBarItem(
                    label: '입력',
                    icon: Icon(
                      Icons.edit,
                    )),
                const BottomNavigationBarItem(
                    label: '목록',
                    icon: Icon(
                      Icons.list,
                    )),
                const BottomNavigationBarItem(
                    label: '대시보드',
                    icon: Icon(
                      Icons.dashboard_rounded,
                    )),
                const BottomNavigationBarItem(
                    label: '설정',
                    icon: Icon(
                      Icons.settings,
                    ))
              ]),
              0),
        )));
  }
}
