import 'package:flutter/material.dart';
import 'package:islami_app/home_page.dart';

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
    );
  }
}
