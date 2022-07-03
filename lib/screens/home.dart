import 'package:flutter/material.dart';
import 'package:tugas_akhir/components/constant.dart';
import '../components/header.dart';
import '../components/ilmu.dart';
import '../components/novel.dart';
import '../components/title.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyColor100,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Header(),
            const SizedBox(height: 25),
            const SectionTitle(title: "Pilihan Novel Terbaik"),
            const TrendingList(),
            SizedBox(height: spacer),
            const SizedBox(height: 15),
            const SectionTitle(title: "Mari Menambah Ilmu Baru"),
            const Buku(),
            SizedBox(height: spacer),
          ],
        ),
      ),
    );
  }
}
