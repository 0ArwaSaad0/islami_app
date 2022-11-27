import 'package:flutter/material.dart';

class MyThemeData {
  static Color blackColor = const Color.fromRGBO(36, 36, 36, 1.0);
  static Color goldColor = const Color.fromRGBO(183, 147, 95, 1.0);
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    textTheme:  TextTheme(
      headline1: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: blackColor,
      ),
      subtitle1: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.normal,
        color: blackColor,
      ),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
    ),
  );
  static ThemeData daarkTheme = ThemeData(
    textTheme: const TextTheme(
      headline1: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
    ),
  );
}
