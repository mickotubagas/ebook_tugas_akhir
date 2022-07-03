import 'package:flutter/material.dart';
import 'package:tugas_akhir/Login_Regis_users/login_users.dart';
import 'package:tugas_akhir/Login_Regis_users/regis_users.dart';

class AuthUsers extends StatefulWidget {
  const AuthUsers({Key? key}) : super(key: key);

  @override
  State<AuthUsers> createState() => _AuthUsersState();
}

class _AuthUsersState extends State<AuthUsers> {
  bool isLogin = true;

  @override
  Widget build(BuildContext context) => isLogin
      ? LoginScreenUsers(onClickedSignUp: toggle)
      : RegisScreen(onClickedSignIn: toggle);

  void toggle() => setState(() => isLogin = !isLogin);
}
