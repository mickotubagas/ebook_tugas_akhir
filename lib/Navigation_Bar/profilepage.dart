import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tugas_akhir/controller_main/auth_users.dart';
import 'package:tugas_akhir/models/user_model.dart';

class Profilpagee extends StatefulWidget {
  const Profilpagee({Key? key}) : super(key: key);

  @override
  State<Profilpagee> createState() => _ProfilpageeState();
}

class _ProfilpageeState extends State<Profilpagee> {
  User? users = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();

  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection("users")
        .doc(users!.uid)
        .get()
        .then((value) {
      loggedInUser = UserModel.fromMap(value.data());
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 212, 28, 28),
          title: const Text(
            "PROFIL PAGE",
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
            ),
          ),
          centerTitle: true,
        ),
        backgroundColor: const Color.fromARGB(255, 250, 88, 88),
        body: Padding(
            padding: const EdgeInsets.all(0),
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.fitWidth,
                colorFilter: ColorFilter.mode(
                    const Color.fromARGB(255, 250, 88, 88).withOpacity(0.2),
                    BlendMode.dstATop),
                image: const AssetImage("assets/logo2.png"),
              )),
              padding: const EdgeInsets.all(20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(
                      height: 20,
                    ),
                    const SizedBox(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 75,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 70,
                            backgroundImage:
                                AssetImage("assets/images/profil2.jpg"),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    SizedBox(
                      height: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            height: 35,
                            child: Text(
                              "${loggedInUser.username}",
                              style: const TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'times new roman',
                                  color: Colors.black),
                            ),
                          ),
                          SizedBox(
                              child: Text("${loggedInUser.email}",
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontFamily: 'times new roman',
                                      color: Colors.black))),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 43,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 95),
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size.fromHeight(30),
                          ),
                          icon: const Icon(
                            Icons.lock_open,
                            size: 25,
                          ),
                          label: const Text('Sign Out'),
                          onPressed: () => FirebaseAuth.instance.signOut(),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 43,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 95),
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size.fromHeight(30),
                          ),
                          icon: const Icon(
                            Icons.delete,
                            size: 25,
                          ),
                          label: const Text('Delete'),
                          onPressed: () => DeleteUser(),
                        ),
                      ),
                    ),
                  ]),
            )));
  }

  Future<void> logout(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 1));
    if (!mounted) return;
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const AuthUsers()));
  }

  DeleteUser() async {
    UserModel userModel = UserModel();
    bool step1 = true;
    bool step2 = false;
    bool step3 = false;
    bool step4 = false;
    while (true) {
      if (step1) {
        var delete = await FirebaseFirestore.instance
            .collection('users')
            .doc(users!.uid)
            .delete();
        step1 = false;
        step2 = true;
      }

      if (step2) {
        users!.delete();
        step2 = false;
        step3 = true;
      }

      if (step3) {
        await FirebaseAuth.instance.signOut();
        step3 = false;
        step4 = true;
      }

      if (step4) {
        await Navigator.pushNamed(context, '/');
        step4 = false;
      }

      if (!step1 && !step2 && !step3 && !step4) {
        break;
      }
    }
  }
}
