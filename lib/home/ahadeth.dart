import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/hadeth_detail/hadeth_detail.dart';
import 'package:islami_app/hadeth_detail/hadeth_model.dart';
import 'package:islami_app/my_theme.dart';

class AhadethTab extends StatefulWidget {
  @override
  State<AhadethTab> createState() => _AhadethTabState();
}

class _AhadethTabState extends State<AhadethTab> {
  List<HadethModel> ahadeth = [];

  @override
  Widget build(BuildContext context) {
    if (ahadeth.isEmpty) loadFile();
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset('assets/images/ahadeth_img.png'),
        Container(
          color: MyThemeData.goldColor,
          height: 2,
        ),
        Padding(
          padding: const EdgeInsets.all(11.0),
          child: Text(
            'Ahadeth',
            style: Theme.of(context).textTheme.subtitle1,
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          color: MyThemeData.goldColor,
          height: 2,
        ),
        ahadeth.isEmpty
            ? Center(child: CircularProgressIndicator())
            : Expanded(
          flex: 5,
                child: ListView.separated(
                  itemBuilder: (_, index) => InkWell(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        HadethDetail.routeName,
                        arguments: ahadeth[index],
                      );
                    },
                    child: Text(
                      ahadeth[index].title,
                      style: Theme.of(context).textTheme.subtitle1,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  itemCount: ahadeth.length,
                  separatorBuilder: (BuildContext context, int index) {
                    return Container(
                      color: MyThemeData.goldColor,
                      height: 1,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                    );
                  },
                ),
              )
      ],
    ));
  }

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
    setState(() {});
  }
}
