import 'package:flutter/material.dart';
import 'package:islami_app/home/ahadeth.dart';
import 'package:islami_app/quran/quran.dart';
import 'package:islami_app/home/radio.dart';
import 'package:islami_app/home/sebha.dart';
import 'package:islami_app/my_theme.dart';

class Home extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int current_index = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/main_background.png',
          fit: BoxFit.fill,
          width: double.infinity,
        ),
        Scaffold(
            appBar: AppBar(
              title: Text(
                'Islami',
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              selectedItemColor: Colors.black,

              currentIndex: current_index,
              onTap: (index) {
                current_index = index;
                setState(() {});
              },
              items: [
                BottomNavigationBarItem(
                    icon: const ImageIcon(
                      AssetImage('assets/images/radio.png'),
                      size: 30,
                    ),
                    label: 'Radio',
                    backgroundColor: MyThemeData.goldColor),
                BottomNavigationBarItem(
                    icon: const ImageIcon(AssetImage('assets/images/sebha.png'),
                        size: 30),
                    label: 'Sebha',
                    backgroundColor: MyThemeData.goldColor),
                BottomNavigationBarItem(
                    icon: const ImageIcon(
                        AssetImage('assets/images/ahadeth.png'),
                        size: 30),
                    label: 'Ahadeth',
                    backgroundColor: MyThemeData.goldColor),
                BottomNavigationBarItem(
                    icon: const ImageIcon(AssetImage('assets/images/quran.png'),
                        size: 30),
                    label: 'Quran',
                    backgroundColor: MyThemeData.goldColor),
              ],
            ),
            body: tabes[current_index])
      ],
    );
  }

  List<Widget> tabes = [
    RadioTab(),
    SebhaTab(),
    AhadethTab(),
    QuranTab(),
  ];
}
