import 'package:flutter/material.dart';
import 'package:tugas_akhir/controller_main/auth_admin.dart';

import 'package:tugas_akhir/controller_main/auth_users.dart';

class AccountSwitchUsers extends StatefulWidget {
  const AccountSwitchUsers({Key? key}) : super(key: key);

  @override
  State<AccountSwitchUsers> createState() => _AccountSwitchUsersState();
}

class _AccountSwitchUsersState extends State<AccountSwitchUsers> {
  List<String> akun = [
    'Users',
    'Admin',
  ];
  String currentAkun = '';

  @override
  void initState() {
    super.initState();
    currentAkun = 'Users';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          margin: const EdgeInsets.only(top: 15.0),
          child: Column(
            children: <Widget>[
              //dropdown
              DropdownButton<String>(
                  value: currentAkun,
                  items: akun.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: const TextStyle(fontSize: 20.0),
                      ),
                    );
                  }).toList(),
                  onChanged: (akun) {
                    if (currentAkun != 'Admin') {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return const AuthAdmin();
                          });
                    } else {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return const AuthUsers();
                          });
                    }
                  }),
              //width
            ],
          )),
    );
  }
}
