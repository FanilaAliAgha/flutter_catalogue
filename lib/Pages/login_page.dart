import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Image.asset(
            "assets/login.png",
            fit: BoxFit.cover,
          ),
          SizedBox(height: 10),
          Text(
            "Welcome",
            style: TextStyle(
                color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 30),
          ),
          SizedBox(height: 10),
          TextFormField(
            decoration: InputDecoration(
              labelText: "Username",
              hintText: "Enter User Name",
            ),
          ),
          SizedBox(height: 10),
          TextFormField(
            decoration: InputDecoration(
              labelText: "Password",
              hintText: "Enter Password",
            ),
          ),
        ],
      ),
    );
  }
}
