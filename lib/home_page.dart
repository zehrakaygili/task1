import 'package:flutter/material.dart';
import 'package:test1/widgets/date_card.dart';
import 'package:test1/widgets/request_leave_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF009688),
      appBar: AppBar(
        backgroundColor: const Color(0xFF009688),
        toolbarHeight: 40,
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage("assets/images/avatar.png"),
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
    );
  }
}
