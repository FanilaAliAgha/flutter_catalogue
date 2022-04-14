// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/Routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // to save something in this variable
  String name = "";
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/login.png",
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10),
            // ignore: prefer_const_constructors
            Text(
              "Welcome $name",
              // ignore: prefer_const_constructors
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 28),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              child: Column(
                children: [
                  TextFormField(
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                      labelText: "Username",
                      hintText: "Enter User Name",
                    ),
                    onChanged: (value) {
                      name = value;
//it is necessary to run the build function again
// to get you ui only then you will be able to see your name with welcome
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Enter Password",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
              style: TextButton.styleFrom(minimumSize: Size(150, 40)),
              onPressed: () {
                Navigator.pushNamed(context, MyRoute.homeRoute);
              },
              child: Text(
                "Login",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
