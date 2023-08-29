import 'package:flutter/material.dart';
import 'package:test1/constants.dart';
import 'package:test1/widgets/background.dart';

import 'home_page.dart';
import 'widgets/welcome_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 200,
            ),
            Text(
              welcomeTitleText,
              style: welcomeTitleStyle,
            ),
            Text(welcomeSubtitleText, style: welcomeSubtitleStyle),
            const SizedBox(
              height: 40,
            ),
            WelcomeButton(
              vertical: 15,
              horizontal: 50,
              text: welcomeButtonText,
              button: buttonColor,
              textColor: buttonTextColor,
              textstyle: welcomeButtonTextStyle,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const HomePage();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
