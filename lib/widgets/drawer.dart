// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // ignore: prefer_const_literals_to_create_immutables
      child: ListView(children: [
        DrawerHeader(
          padding: EdgeInsets.zero,
          margin: EdgeInsets.zero,
          child: UserAccountsDrawerHeader(
            accountName: Text("Fanila Ali Agha"),
            accountEmail: Text("fanilaali999@gmail.com"),
          ),
        ),
      ]),
    );
  }
}
