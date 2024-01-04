import 'package:flutter/material.dart';
// import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  final int selectedIndex;

  BottomNavBar(
      {super.key, required this.onTabChange, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Color(0xffEDAC02),
                size: 25,
              ),
              label: 'Home',
              backgroundColor: Colors.blueGrey),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.backpack,
                color: Color(0xffEDAC02),
                size: 25,
              ),
              label: 'Student',
              backgroundColor: Color(0xff002184)),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                color: Color(0xffEDAC02),
                size: 25,
              ),
              label: 'Setting',
              backgroundColor: Colors.purple),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Color(0xffEDAC02),
                size: 25,
              ),
              label: 'User',
              backgroundColor: Colors.blue),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Color(0xffEDAC02),
        onTap: onTabChange,
      ),
    );
  }
}
