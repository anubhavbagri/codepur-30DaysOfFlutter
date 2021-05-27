import 'package:flutter/material.dart';
import 'pages/login_page.dart';
import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key)
  @override
  Widget build(BuildContext context) {
    // bringVegetables(rupees: 50);
    // bringVegetables(thaila: true);
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.light,
      // themeMode: ThemeMode.dark,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      darkTheme:
          ThemeData(brightness: Brightness.dark, primarySwatch: Colors.red),
      initialRoute: "/home",
      routes: {
        "/": (context) => LoginPage(),
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage(),
      },
    );
  }

  //default value of rupees is 100 and thaila is false
  // bringVegetables({
  //   @required bool? thaila, //supplying thaila's value is compulsory
  //   int rupees = 100,
  // }) {
  //   // Take cycle
  //   //Go to Sec 16 market
  // }
}
