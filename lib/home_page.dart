import 'package:flutter/material.dart';
import 'package:test1/constants.dart';
import 'package:test1/widgets/bottom_navigation_bar.dart';
import 'package:test1/widgets/date_section.dart';
import 'package:test1/widgets/profile_photo.dart';
import 'package:test1/widgets/welcome_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: homePageBackgroundColor,
        toolbarHeight: 40,
      ),
      backgroundColor: homePageBackgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const ProfilePhoto(),
            const SizedBox(
              height: 10,
            ),
            Text(
              nameText,
              style: nameTextStyle,
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(departmentNameText),
            const SizedBox(
              height: 10,
            ),
            WelcomeButton(
                button: buttonColor,
                textColor: buttonTextColor,
                text: repuestLeaveButtonText,
                textstyle: repuestLeaveButtonTextStyle,
                press: () {},
                vertical: 10,
                horizontal: 50),
            const SizedBox(
              height: 15,
            ),
            const Expanded(
              child: DateSection(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
