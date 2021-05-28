import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/drawer.dart';


//DAY 11 - WE LEARNT ABOUT BUILD CONTEXT, CONSTRAINTS, TREE STRUCTURE

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
        ),
      ),
      body: Center(
        child: SizedBox(
          //string interpolation
          child: Text(context.runtimeType.toString()),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
