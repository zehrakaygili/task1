import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test1/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome Screen',
      theme: ThemeData(
          fontFamily: 'Montserrat',
          primaryColor: Color(0xFF009688),
          scaffoldBackgroundColor: Colors.white),
      home: const WelcomeScreen(),
    );
  }
}
