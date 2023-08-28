import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_page.dart';

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

class WelcomeButton extends StatelessWidget {
  const WelcomeButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF303030),
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 55),
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              color: Color(0xFF303030),
              width: 3,
            ),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return HomePage();
              },
            ),
          );
        },
        child: Text("Let's Go",
            style: GoogleFonts.montserrat(
                fontSize: 18, fontWeight: FontWeight.w400)));
  }
}

class Background extends StatelessWidget {
  final Widget child;

  const Background({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 0,
            right: 0,
            child: Image.asset(
              "assets/images/up.png",
              width: size.width * 0.27,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              "assets/images/down.png",
              width: size.width * 0.7,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
