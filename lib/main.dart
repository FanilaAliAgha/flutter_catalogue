import 'package:flutter/material.dart';
import 'package:flutter_catalog/Pages/home_page.dart';
import 'package:flutter_catalog/Pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(primarySwatch: Colors.cyan),
      initialRoute: "/",
      routes: {
        "/": (context) => new HomePage(), //object
        "/login": (context) => LoginPage(),
      },
    );
  }
}

////////resume video from 1hr 18 mints on 43/4/2022
