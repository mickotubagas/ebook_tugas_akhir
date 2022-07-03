// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:tugas_akhir/Navigation_Bar/about.dart';
import 'package:tugas_akhir/Navigation_Bar/profilepage.dart';
import 'package:tugas_akhir/screens/home.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int currentIndex = 1;
  final screens = [
    const HomePage(),
    const HomeScreen(),
    const Profilpagee(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        selectedItemColor: const Color.fromARGB(255, 3, 194, 252),
        unselectedItemColor: Colors.grey,
        iconSize: 30,
        showUnselectedLabels: false,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.info),
              label: 'About',
              backgroundColor: Colors.blue), // BottomNavigationBarItem
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book_outlined),
            label: 'Library',
            backgroundColor: Colors.blue,
          ), // BottomNavigationBarItem
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Colors.green,
          ), // BottomNavigation BarItem // BottomNavigationBarItem
        ],
      ), // BottomNavigationBar
      // Scaffold
    );
  }
}
