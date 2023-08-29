import 'package:flutter/material.dart';

class ProfilePhoto extends StatelessWidget {
  const ProfilePhoto({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      minRadius: 40,
      backgroundColor: Colors.transparent,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Image.asset(
          "assets/images/avatar.png",
          height: 90,
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}
