import 'package:flutter/material.dart';

import 'package:islami_app/home/home_page.dart';

import 'package:islami_app/my_theme.dart';




void main() {
runApp(IslamiApp());

}
class IslamiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Home.routeName,
      routes: {
        Home.routeName:(c)=>Home(),
      },
      theme: MyThemeData.lightTheme,
        darkTheme: MyThemeData.daarkTheme,
        themeMode: ThemeMode.light
    );
  }

}
