import 'package:flutter/material.dart';

class SebhaProvider extends ChangeNotifier{
  String dropdownvalue = 'سبحان الله';
  var items = ['الله اكبر', 'الحمدلله', 'لا اله الا الله', 'سبحان الله'];
  int count = 0;
  int currentNum = 0;
  void addNum(index) {
    currentNum++;

    if (currentNum == 34) {
      dropdownvalue = items[index];
      currentNum = 0;
      count++;
      if (count > items.length - 1) {
        currentNum = 0;
        count = 0;
      }
    }
    notifyListeners();
  }
}