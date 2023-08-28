import 'package:flutter/material.dart';

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
