import 'package:flutter/material.dart';

class MyThemeData {
  static Color blackColor = const Color.fromRGBO(36, 36, 36, 1.0);
  static Color goldColor = const Color.fromRGBO(183, 147, 95, 1.0);
  static Color darkBlue=const Color.fromRGBO(20, 26, 46, 1.0);
  static Color yeloow=const Color.fromRGBO(250, 204, 29, 1.0);



  static ThemeData lightTheme = ThemeData(

      scaffoldBackgroundColor: Colors.transparent,
      textTheme: TextTheme(
        headline1: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: blackColor,
        ),
        subtitle1: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: blackColor,
        ),
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedIconTheme: IconThemeData(
        size: 30,
        color: Colors.black,
      ),
        unselectedIconTheme: IconThemeData(
        size: 28,
        color: Colors.white,
      ),
      ),
  );
  static ThemeData darkTheme = ThemeData(

    scaffoldBackgroundColor: Colors.transparent,
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w500,
        color: Color.fromRGBO(248, 248, 248, 1)
      ),
      subtitle1: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: yeloow,
      ),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(color: Color.fromRGBO(248, 248, 248, 1)),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedIconTheme: IconThemeData(
        size: 30,
        color: Color.fromRGBO(250, 204, 29, 1.0),
      ),
      unselectedIconTheme: IconThemeData(
        size: 28,
        color: Colors.white,
      ),
      selectedLabelStyle: TextStyle(color: yeloow),
      unselectedLabelStyle: TextStyle(color: Colors.white)
    ),
  );

}
