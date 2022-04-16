// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);
  final profileurl =
      "https://media-exp1.licdn.com/dms/image/C4D03AQFYRFcrY1djSg/profile-displayphoto-shrink_200_200/0/1645381763987?e=1652918400&v=beta&t=RiGuKYKqRUgp4giaEpEKYNpUNnyEfjTrEE_qbSpBYAY";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.deepPurple,
      // ignore: prefer_const_literals_to_create_immutables
      child: Container(
        color: Colors.deepPurple,
        child: ListView(children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            margin: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              accountName: Text("Fanila Ali Agha"),
              accountEmail: Text("fanilaali999@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(profileurl),
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.white,
            ),
            title: Text(
              "Home",
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.bell,
              color: Colors.white,
            ),
            title: Text(
              "Notification",
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.person,
              color: Colors.white,
            ),
            title: Text(
              "Profile",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ]),
      ),
    );
  }
}
