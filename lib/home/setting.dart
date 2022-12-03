import 'package:flutter/material.dart';
import 'package:islami_app/bottom_sheet/bottom_sheet_language.dart';
import 'package:islami_app/my_theme.dart';
import 'package:islami_app/provider/my_provider.dart';
import 'package:provider/provider.dart';

class SettingTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var prov=Provider.of<MyProvider>(context);
    return Container(
      margin: EdgeInsets.only(top: 50, bottom: 11, right: 40, left: 30),
      //padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Language',
            style: Theme.of(context)
                .textTheme
                .headline1
                ?.copyWith(color: MyThemeData.goldColor),
          ),
          InkWell(
            onTap: () {
              showBottomSheet(context);
            },
            child: Container(
              margin: EdgeInsets.all(11),
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              decoration: BoxDecoration(
                border: Border.all(color: MyThemeData.goldColor),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text(
                prov.languageCode=='en'?'English':"عربي",
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'My Theme',
            style: Theme.of(context)
                .textTheme
                .headline1
                ?.copyWith(color: MyThemeData.goldColor),
          ),
          Container(
            margin: EdgeInsets.all(11),
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            decoration: BoxDecoration(
              border: Border.all(color: MyThemeData.goldColor),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Text(
              'Light',
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
        ],
      ),
    );
  }

  showBottomSheet(context) {
    showModalBottomSheet(
        context: context, builder: (context) => BottomSheetLanguage());
  }
}
