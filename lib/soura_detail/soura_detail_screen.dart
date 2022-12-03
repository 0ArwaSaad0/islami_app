import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/my_theme.dart';
import 'package:islami_app/provider/sura_provider.dart';
import 'package:islami_app/soura_detail/ayaat_detail.dart';
import 'package:islami_app/soura_detail/soura_model.dart';
import 'package:provider/provider.dart';

class SouraDetailScreen extends StatelessWidget {
  static const String routeName = 'soura detail';


  @override
  Widget build(BuildContext context) {
    SuraModelArgument args =
    ModalRoute
        .of(context)
        ?.settings
        .arguments as SuraModelArgument;

    return ChangeNotifierProvider(
        create: (context) => SuraProvider()..load_fille(args.index),
        builder: (context, child) {
          var provider = Provider.of<SuraProvider>(context);
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
                  style: Theme
                      .of(context)
                      .textTheme
                      .headline1,
                ),
              ),
              body: provider.ayaat.isEmpty
                  ? const Center(child: CircularProgressIndicator())
                  : Card(
                margin: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                child: ListView.separated(
                  itemCount: provider.ayaat.length,
                  itemBuilder: (_, index) =>
                      AyaatDetail(ayaat: provider.ayaat[index], index: index),
                  separatorBuilder: (BuildContext context, int index) {
                    return Container(
                      color: MyThemeData.goldColor,
                      height: 1,
                      margin: EdgeInsets.symmetric(horizontal: 12),
                    );
                  },
                ),
              ),
            ),
          ],
          );
        }
        );
  }

}