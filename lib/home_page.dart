import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test1/widgets/date_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF009688),
      appBar: AppBar(
        backgroundColor: Color(0xFF009688),
        toolbarHeight: 40,
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage("assets/images/avatar.png"),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Aman Vishwakarma",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
            ),
            SizedBox(
              height: 5,
            ),
            Text("B.Tech CSE"),
            SizedBox(
              height: 10,
            ),
            RequestLeaveButton(),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
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
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Escape Records",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    DateCard(),
                    DateCard(),
                    DateCard(),
                    DateCard(),
                    DateCard(),
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

class RequestLeaveButton extends StatelessWidget {
  const RequestLeaveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF303030),
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 45),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        onPressed: () {},
        child: const Text(
          "Request Leave",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900),
        ));
  }
}
