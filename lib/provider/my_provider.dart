import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  String languageCode = 'en';
  changeLanguage(lang) {
    languageCode = lang;
    notifyListeners();
  }
}
