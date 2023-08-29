import 'package:flutter/material.dart';
import 'package:test1/constants.dart';
import 'package:test1/widgets/date_card.dart';

class DateSection extends StatelessWidget {
  const DateSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        color: containerColor,
      ),
      child: Column(
        children: [
          Container(
            color: containerColor,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(dateSectionText, style: dateSectionTextStyle),
          const SizedBox(
            height: 5,
          ),
          const DateCard(),
          const DateCard(),
          const DateCard(),
          const DateCard(),
          const DateCard(),
        ],
      ),
    );
  }
}
