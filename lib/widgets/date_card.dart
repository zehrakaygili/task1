import 'package:flutter/material.dart';
import 'package:test1/constants.dart';

class DateCard extends StatelessWidget {
  const DateCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: cardColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        splashColor: cardSplashColor,
        onTap: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                dateText,
                style: dateTextStyle,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "View",
                style: viewTextStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
