import 'package:flutter/material.dart';
import 'package:wan/StackPage.dart';

import 'ButtonPage.dart';
import 'MondayPage.dart';
import 'SystemPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: ' 学习'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late int _currentIndex = 0;
  final List<Widget> _children = [
    StackPage(),
    ButtonPage(),
    SystemPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          elevation: 30,
        ),
        body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 30,
          fixedColor: Colors.green,
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: onTabTapped,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
            BottomNavigationBarItem(icon: Icon(Icons.category), label: "项目"),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: "我的")
          ],
        ));
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}