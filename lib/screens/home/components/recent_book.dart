// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import 'package:ebook/themes.dart';

class RecentBook extends StatelessWidget {
  const RecentBook({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        border: Border.all(color: borderColorRecentBook),
      ),
      child: Row(
        children: [
          Image.asset(
            image,
            width: 90,
          ),
          const SizedBox(width: 18),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: semiBoldText14.copyWith(color: blackColor2),
              ),
              CircularPercentIndicator(
                radius: 30,
                lineWidth: 7,
                animation: true,
                percent: 0.5,
                circularStrokeCap: CircularStrokeCap.round,
                progressColor: greenColor,
                reverse: true,
              ),
              Text(
                '50% Completed',
                style: mediumText12.copyWith(color: greyColorRecentBook),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
