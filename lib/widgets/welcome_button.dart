import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test1/constants.dart';
import 'package:test1/home_page.dart';

class WelcomeButton extends StatelessWidget {
  final Color button, textColor;
  final String text;
  final TextStyle textstyle;
  final Function press;
  final double vertical, horizontal;
  const WelcomeButton({
    super.key,
    required this.button,
    required this.textColor,
    required this.text,
    required this.textstyle,
    required this.press,
    required this.vertical,
    required this.horizontal,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        padding:
            EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      onPressed: () {
        press();
      },
      child: Text(text, style: textstyle),
    );
  }
}
