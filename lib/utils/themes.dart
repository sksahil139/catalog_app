import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) {
    var themeData = ThemeData(
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.white,
      canvasColor: creamColor,
      hintColor: darkBlueColor,
      dividerColor: darkBlueColor,
      hoverColor: Colors.transparent,
      buttonTheme: ButtonThemeData(buttonColor: darkBlueColor),
      appBarTheme: const AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle: TextStyle(color: Colors.black),
        toolbarTextStyle: TextStyle(color: Colors.black),
      ),
      textTheme: context.textTheme,
    );
    return themeData;
  }

  static ThemeData darkTheme(BuildContext context) {
    var themeData = ThemeData(
      brightness: Brightness.dark,
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.black,
      canvasColor: darkCreamColor,
      hintColor: Colors.white,
      dividerColor: lightBlueColor,
      buttonTheme: ButtonThemeData(buttonColor: lightBlueColor),
      hoverColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
        color: Colors.black,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.white),
        titleTextStyle: TextStyle(color: Colors.white),
        toolbarTextStyle: TextStyle(color: Colors.white),
      ),
      textTheme: Theme.of(context).textTheme,
    );
    return themeData;
  }

  //Colors
  static Color creamColor = const Color(0xfff5f5f5);
  static Color darkBlueColor = const Color(0xff403b58);
  static Color darkCreamColor = Vx.gray900;
  static Color lightBlueColor = Vx.indigo500;
}
