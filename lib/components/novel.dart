import 'package:tugas_akhir/components/constant.dart';
import 'package:flutter/material.dart';
import '../models/trend.dart';
import '../screens/detailscreen.dart';

class TrendingList extends StatelessWidget {
  const TrendingList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: trends.map((trend) {
          int index = trends.indexOf(trend);
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => DetailScreen(trend: trend)),
              );
            },
            child: Container(
              width: 110,
              height: 207,
              margin: EdgeInsets.only(
                right: 20,
                left: (index == 0) ? spacer : 0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: Image.asset(trend.image),
                  ),
                  Text(
                    trend.creator,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: greyColor400,
                    ),
                  ),
                  Text(
                    trend.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                      color: darkColor,
                    ),
                  ),
                  Text(
                    trend.rate,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: darkColor,
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
