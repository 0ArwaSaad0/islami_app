import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/hadeth_detail/hadeth_detail.dart';
import 'package:islami_app/hadeth_detail/hadeth_model.dart';
import 'package:islami_app/my_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/provider/ahadeth_provider.dart';
import 'package:provider/provider.dart';

class AhadethTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //if (ahadeth.isEmpty) loadFile();
    return ChangeNotifierProvider(
      create: (context) => AhadethProvider()..loadFile(),
      builder: (context, child) {
        var provider = Provider.of<AhadethProvider>(context);

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
                AppLocalizations.of(context)!.ahadeth,
                style: Theme.of(context).textTheme.subtitle1,
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              color: MyThemeData.goldColor,
              height: 2,
            ),
            provider.ahadeth.isEmpty
                ? Center(child: CircularProgressIndicator())
                : Expanded(
                    flex: 5,
                    child: ListView.separated(
                      itemBuilder: (_, index) => InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            HadethDetail.routeName,
                            arguments: provider.ahadeth[index],
                          );
                        },
                        child: Text(
                          provider.ahadeth[index].title,
                          style: Theme.of(context).textTheme.subtitle1,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      itemCount: provider.ahadeth.length,
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
      },
    );
  }
}
