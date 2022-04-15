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

  //boolean to add animation on button click
  bool changebutton = false;

  //form key so that we can eccess it globally and apply validation
  final formKey = GlobalKey<FormState>();

  //new function
  movetoHome(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      setState(() {
        changebutton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      Navigator.pushNamed(
          context,
          MyRoute
              .homeRoute); //we use await to change the icon on button o text if we came back to login scrn from dashboard
      setState(() {
        changebutton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Image.asset(
                "assets/hey.png",
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
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                child: Column(
                  children: [
                    TextFormField(
                      // ignore: prefer_const_constructors
                      decoration: InputDecoration(
                        labelText: "Username",
                        hintText: "Enter User Name",
                      ),
                      ////////////for Validation for username
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Username can not be empty";
                        }
                        return null;
                      },
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
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Password can not be empty";
                        } else if (value.length < 6) {
                          return "Password length should be atleast of 6";
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Material(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(changebutton ? 50 : 8),
                child: InkWell(
                  splashColor: Colors.red,
                  onTap: () => {movetoHome(context)},
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    height: 150,
                    width: changebutton
                        ? 50
                        : 150, //if changebutton is true then width =150 else 50
                    alignment: Alignment.center,
                    // decoration: BoxDecoration(
                    // shape: changebutton
                    //     ? BoxShape.circle
                    //     : BoxShape
                    //         .rectangle, //if button pressed is true then box shape should be cicrcle else rectangel

                    child: changebutton
                        ? Icon(Icons.done, color: Colors.white)
                        : Text(
                            "Login",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
