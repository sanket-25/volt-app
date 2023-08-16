import 'package:flutter/material.dart';
import 'package:code/nucleus/pages/connect.dart';
import 'package:code/nucleus/pages/chat.dart';
import 'package:code/nucleus/pages/training.dart';
import 'package:code/nucleus/pages/explore.dart';
import 'package:code/nucleus/pages/profile.dart';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Bottom Navigation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    connect(),
    chat(),
    training(),
    explore(),
    profile(),
  ];

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Icon(Icons.home, size: 30),
      Icon(Icons.search, size: 30),
      Icon(Icons.favorite, size: 30),
      Icon(Icons.settings, size: 30),
      Icon(Icons.person, size: 30),
    ];

    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        color: Color(0xffcf0e00),
        buttonBackgroundColor: Colors.white,
        height: 60,
        index: _currentIndex,
        items: items,
        onTap: (index) => setState(() => this._currentIndex = index),
      ),
    );
  }
}
