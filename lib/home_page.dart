import 'package:flutter/material.dart';
import 'package:test1/widgets/date_card.dart';
import 'package:test1/widgets/request_leave_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF009688),
        toolbarHeight: 40,
      ),
      backgroundColor: const Color(0xFF009688),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            CircleAvatar(
              minRadius: 40,
              backgroundColor: Colors.transparent,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  "assets/images/avatar.png",
                  height: 90,
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Aman Vishwakarma",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text("B.Tech CSE"),
            const SizedBox(
              height: 10,
            ),
            const RequestLeaveButton(),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Container(
                      color: Colors.white,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Escape Records",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const DateCard(),
                    const DateCard(),
                    const DateCard(),
                    const DateCard(),
                    const DateCard(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
        selectedItemColor: Colors.grey[600],
        unselectedItemColor: Colors.grey[900],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
