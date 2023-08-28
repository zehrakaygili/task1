import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test1/widgets/background.dart';

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
              "FREED",
              style: GoogleFonts.montserrat(
                  fontSize: 60, fontWeight: FontWeight.w300),
            ),
            Text("Let's take a legal escape",
                style: GoogleFonts.montserrat(
                    fontSize: 25, fontWeight: FontWeight.w200)),
            const SizedBox(
              height: 40,
            ),
            const WelcomeButton(),
          ],
        ),
      ),
    );
  }
}
