import 'package:flutter/material.dart';
import 'package:tugas_akhir/controller_main/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    //Setelah 3 detik loading login page
    Future.delayed(const Duration(seconds: 3), (() {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const MainController(),
          ));
    }));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Column(
          children: [
            Expanded(child: _getLogo()),
            const SizedBox(
              height: 20,
              width: 20,
            ),
            const Text("v 0.0.1"),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }

  Widget _getLogo() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/logo.png",
          height: 200,
          width: 200,
        ),
        Container(
          padding:
              const EdgeInsets.only(top: 150, left: 20, right: 20, bottom: 10),
          child: const Text(
            "Simple book",
            style: TextStyle(
                fontSize: 20, fontFamily: 'times new roman', color: Colors.red),
          ),
        ),
        const SizedBox(
          height: 30,
          child: Text(
            'Enjoy Reading..',
            style: TextStyle(
                fontSize: 18, fontFamily: 'times new roman', color: Colors.red),
          ),
        )
      ],
    );
  }
}
