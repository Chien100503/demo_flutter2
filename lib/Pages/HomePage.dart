import 'package:flutter/material.dart';
import 'package:flutterexam/Pages/HomeExplore.dart';
import 'package:flutterexam/Pages/Manager.dart';
import 'package:flutterexam/Pages/Profile.dart';
import 'package:flutterexam/Pages/Setting.dart';

import '../Components/Bottom_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void navigationBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

// Page ------
  final List<Widget> _pages = const [
    HomeExplore(),
    HomeManager(),
    Setting(),
    Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: BottomNavBar(
        selectedIndex: _selectedIndex,
        onTabChange: (index) => navigationBar(index),
      ),
      body:_pages[_selectedIndex],
    );
  }
}
