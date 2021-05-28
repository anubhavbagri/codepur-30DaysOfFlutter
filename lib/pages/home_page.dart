import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/drawer.dart';

// ignore: use_key_in_widget_constructors
class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Anubhav";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Catalogue App",
          // style: TextStyle(color: Colors.black),
        ),
        // leading: Text("Catalogue App"),
      ),
      body: Center(
        child: SizedBox(
          //string interpolation
          child: Text("Welcome to $days Days of Flutter by " + name),
        ),
      ),
      // bottomSheet: BottomSheet(),
      // bottomNavigationBar: BottomNavigationBar(items: items),
      drawer: MyDrawer(),
    );
  }
}
