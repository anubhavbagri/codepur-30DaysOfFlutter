import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.indigo,
        fontFamily: GoogleFonts.inter().fontFamily,
        cardColor: Colors.white,
        canvasColor: creamColor,
        buttonColor: blueish,
        accentColor: blueish,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          textTheme: Theme.of(context).textTheme,
        ),
      );
  static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
        fontFamily: GoogleFonts.inter().fontFamily,
        cardColor: Colors.black,
        canvasColor: darkCreamColor,
        buttonColor: lightblueish,
        accentColor: Colors.white,
        appBarTheme: AppBarTheme(
          // color: Colors.black,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.white),
          textTheme: Theme.of(context).textTheme.copyWith(
                headline6:
                    context.textTheme.headline6?.copyWith(color: Colors.white),
              ),
        ),
      );

  //colors
  static Color creamColor = Color(0xfff5f5f5);
  static Color darkCreamColor = Vx.gray800;
  static Color blueish = Color(0xff403b58);
  static Color lightblueish = Vx.indigo500;
}
