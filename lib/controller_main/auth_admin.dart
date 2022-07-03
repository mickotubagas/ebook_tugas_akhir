import 'package:flutter/material.dart';
import 'package:tugas_akhir/Login_Admin/login_admin.dart';
import 'package:tugas_akhir/Login_Regis_users/regis_users.dart';

class AuthAdmin extends StatefulWidget {
  const AuthAdmin({Key? key}) : super(key: key);

  @override
  State<AuthAdmin> createState() => _AuthAdminState();
}

class _AuthAdminState extends State<AuthAdmin> {
  bool isLogin = true;

  @override
  Widget build(BuildContext context) => isLogin
      ? LoginScreenAdmin(onClickedSignUp: toggle)
      : RegisScreen(onClickedSignIn: toggle);

  void toggle() => setState(() => isLogin = !isLogin);
}
