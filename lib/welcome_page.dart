import 'package:flutter/material.dart';

import 'home_page.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return const Background(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 200,
          ),
          Text(
            "FREED",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 60),
          ),
          Text(
            "Let's take a legal escape",
            style: TextStyle(fontSize: 25),
          ),
          SizedBox(
            height: 40,
          ),
          Button(),
        ],
      ),
    );
  }
}

class Button extends StatelessWidget {
  const Button({
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
        child: const Text(
          "Let's Go",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ));
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
