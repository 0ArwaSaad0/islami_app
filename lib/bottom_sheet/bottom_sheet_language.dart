import 'package:flutter/material.dart';
import 'package:islami_app/my_theme.dart';
import 'package:islami_app/provider/my_provider.dart';
import 'package:provider/provider.dart';

class BottomSheetLanguage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(11.0),
          child: InkWell(
            onTap: () {
              provider.changeLanguage('en');
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'English',
                  style: Theme.of(context).textTheme.subtitle1?.copyWith(
                      color: provider.languageCode == 'en'
                          ? MyThemeData.goldColor
                          : MyThemeData.blackColor),
                ),
                Icon(
                  Icons.done,
                  size: 30,
                  color: provider.languageCode == 'en'
                      ? MyThemeData.goldColor
                      : MyThemeData.blackColor,
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(11.0),
          child: InkWell(
            onTap: () {
              provider.changeLanguage('ar');
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Arabic',
                  style: Theme.of(context).textTheme.subtitle1?.copyWith(
                      color: provider.languageCode == 'ar'
                          ? MyThemeData.goldColor
                          : MyThemeData.blackColor),
                ),
                Icon(
                  Icons.done,
                  size: 30,
                  color: provider.languageCode == 'ar'
                      ? MyThemeData.goldColor
                      : MyThemeData.blackColor,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
//
// Text('Arabic',style: Theme.of(context).textTheme.subtitle1,),
