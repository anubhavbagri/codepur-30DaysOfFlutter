import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key)

  @override
  Widget build(BuildContext context) {

    // double p = 66.39;
    // bool isMale = true;
    // num temp = 30.5;

    // var day = "Thursday";
    // var dayNum = 4;
    // const pi = 3.14;

    // final

    return MaterialApp(
      home: HomePage(),
    );
  }
}
