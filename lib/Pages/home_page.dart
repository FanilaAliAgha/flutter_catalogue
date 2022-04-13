import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  int no_day = 30;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalogue App"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $no_day days of flutter"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
