import 'package:tugas_akhir/components/detail/section_detail.dart';
import 'package:tugas_akhir/components/constant.dart';
import 'package:flutter/material.dart';

import '../../models/trend.dart';

class HeaderDetail extends StatelessWidget {
  const HeaderDetail({
    Key? key,
    required this.trend,
  }) : super(key: key);

  final Trend trend;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              trend.title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: blackColor,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Penulis :",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: blackColor,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              trend.creator,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: greyColor400,
              ),
            ),
            SizedBox(
              width: 350,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 15),
                  Text(
                    "Sinopsis",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: blackColor,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    trend.desk,
                    style: TextStyle(
                      fontSize: 14,
                      color: greyColor400,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    height: 60,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: greyColor100,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SectionDetail(
                          title: 'Rating',
                          value: trend.rate,
                        ),
                        const LineSection(),
                        SectionDetail(
                          title: 'Number of pages',
                          value: trend.hal,
                        ),
                        const LineSection(),
                        const SectionDetail(
                          title: 'Bahasa',
                          value: 'ENG/ID',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        const Spacer(),
      ],
    );
  }
}
