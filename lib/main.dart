import 'package:flutter/material.dart';
import 'package:islami_app/hadeth_detail/hadeth_detail.dart';

import 'package:islami_app/home/home_page.dart';
import 'package:provider/provider.dart';
import 'package:islami_app/my_theme.dart';
import 'package:islami_app/provider/my_provider.dart';
import 'package:islami_app/soura_detail/soura_detail_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => MyProvider(), child: IslamiApp()));
}

class IslamiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MyProvider prov=Provider.of<MyProvider>(context);
    return MaterialApp(
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale("en"), // English, no country code
          Locale("ar"), // Arabic, no country code
        ],
        locale: Locale(prov.languageCode),
        debugShowCheckedModeBanner: false,
        initialRoute: Home.routeName,
        routes: {
          Home.routeName: (c) => Home(),
          SouraDetailScreen.routeName: (c) => SouraDetailScreen(),
          HadethDetail.routeName: (c) => HadethDetail(),
        },
        theme: MyThemeData.lightTheme,
        darkTheme: MyThemeData.darkTheme,
        themeMode: ThemeMode.light);
  }
}
