import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/hadeth_detail/hadeth_model.dart';

class AhadethProvider extends ChangeNotifier{
  List<HadethModel> ahadeth = [];
  loadFile() async {
    String content = await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> AllAhadeth = content.trim().split('#\r\n');
    // for loop
    for (int i = 0; i < AllAhadeth.length; i++) {
      String hadeth = AllAhadeth[i];
      List<String> hadethLines = hadeth.split('\n');
      String title = hadethLines[0];
      hadethLines.removeAt(0);
      HadethModel hadethData = HadethModel(title: title, content: hadethLines);
      ahadeth.add(hadethData);
    }
  notifyListeners();
  }
}