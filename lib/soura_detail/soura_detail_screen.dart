import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/my_theme.dart';
import 'package:islami_app/soura_detail/soura_model.dart';

class SouraDetailScreen extends StatefulWidget {
  static const String routeName = 'soura detail';

  @override
  State<SouraDetailScreen> createState() => _SouraDetailScreenState();
}

class _SouraDetailScreenState extends State<SouraDetailScreen> {
  List<String> ayaat = [];

  @override
  Widget build(BuildContext context) {
    SuraModelArgument args =
        ModalRoute.of(context)?.settings.arguments as SuraModelArgument;
    if (ayaat.isEmpty) {
      load_fille(args.index);
    }
    return Stack(children: [
      Image.asset(
        'assets/images/main_background.png',
        fit: BoxFit.fill,
        width: double.infinity,
      ),
      Scaffold(
        appBar: AppBar(
          title: Text(
            args.suraName,
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        body: ayaat.isEmpty
            ? const Center(child: CircularProgressIndicator())
            : ListView.separated(
                itemCount: ayaat.length,
                itemBuilder: (_, index) => Text(
                  ayaat[index],
                  style: Theme.of(context).textTheme.subtitle1,
                  textAlign: TextAlign.center,
                ),
                separatorBuilder: (BuildContext context, int index) {
                  return Divider(
                    endIndent: 25,
                    indent: 25,
                    color: MyThemeData.goldColor,
                  );
                },
              ),
      )
    ]);
  }

  void load_fille(int index) async {
    String content =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = content.split('\n');
    ayaat = lines;
    setState(() {});
  }
}
