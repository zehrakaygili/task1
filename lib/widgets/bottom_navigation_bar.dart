import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(
              Icons.check_circle_outline,
              size: 30,
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.check_circle_outline,
              size: 30,
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications_none,
              size: 30,
            ),
            label: ""),
      ],
      currentIndex: _currentIndex,
      selectedItemColor: Colors.grey[900],
      unselectedItemColor: Colors.grey[600],
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
    );
  }
}
