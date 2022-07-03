import 'package:flutter/material.dart';
import 'package:tugas_akhir/components/recent.dart';
import 'package:tugas_akhir/components/search.dart';
import 'package:tugas_akhir/components/title.dart';

import '../models/recent.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 406 - 80,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40)),
        color: Color.fromARGB(255, 250, 88, 88),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 30),
          const SearchField(),
          const SectionTitle(title: "Lanjutkan Membaca"),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: recents.map((recent) {
                int index = recents.indexOf(recent);
                return CardRecent(recent, index: index);
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
