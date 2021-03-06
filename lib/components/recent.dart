import 'package:tugas_akhir/components/constant.dart';
import 'package:tugas_akhir/models/recent.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CardRecent extends StatelessWidget {
  const CardRecent(
    this.recent, {
    Key? key,
    required this.index,
  }) : super(key: key);

  final Recent recent;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 228,
      height: 150,
      margin: EdgeInsets.only(
        right: 20,
        bottom: 10,
        top: 10,
        left: index == 0 ? 30 : 0,
      ),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 0),
            spreadRadius: 2,
            color: greyColor200,
          ),
        ],
      ),
      child: Row(
        children: [
          Image.asset(recent.image),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                recent.title,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: blackColor,
                ),
              ),
              CircularPercentIndicator(
                radius: 35,
                lineWidth: 6,
                percent: recent.percent.toDouble() / 100,
                progressColor: greenColor,
                reverse: true,
              ),
              Text(
                "${recent.percent}% Completed",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: greyColor500,
                ),
              ),
              Text(
                recent.page,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: blackColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
