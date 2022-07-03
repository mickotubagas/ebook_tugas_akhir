import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(141, 35, 35, 1),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 75,
                child: Text(
                  "About App",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                  height: 200,
                  child: Image.asset(
                    "assets/logo2.png",
                    fit: BoxFit.contain,
                  )),
              const SizedBox(
                height: 25,
              ),
              Container(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                child: const Text(
                  "E-book.id merupakan aplikasi untuk membaca buku secara online. Kalian dapat melihat buku-buku rekomendasi. Terdapat resensi buku yang lengkap hingga rating buku yang dapat memudahkan kalian dalam\nmencari buku yang sesuai.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                padding: const EdgeInsets.only(top: 10),
                child: const Text(
                  "Versi 1.0.0\n\nCopyright Ⓒ 2022 Universitas Esa Unggul",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white54,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
