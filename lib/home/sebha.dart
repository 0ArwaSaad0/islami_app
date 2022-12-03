import 'package:flutter/material.dart';
import 'package:islami_app/my_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/provider/sebha_provider.dart';
import 'package:provider/provider.dart';

class SebhaTab extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>SebhaProvider(),
      builder: (context,child) {
        var prov = Provider.of<SebhaProvider>(context);
        return Column(
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Center(
                child: Image(
                  image: AssetImage(
                    'assets/images/sebha_img.png',
                  ),
                )),
            Text(AppLocalizations.of(context)!.tesbiha_number,
                style: Theme
                    .of(context)
                    .textTheme
                    .subtitle1
                    ?.copyWith(fontWeight: FontWeight.normal)),
            SizedBox(
              width: 80,
              height: 80,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: MyThemeData.goldColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25))),
                onPressed: () {
                  prov.addNum(prov.count);
                },
                child: Text(
                  '${prov.currentNum}',
                  style: Theme
                      .of(context)
                      .textTheme
                      .subtitle1
                      ?.copyWith(fontSize: 30),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(22.0),
              child: Container(
                decoration: BoxDecoration(color: MyThemeData.goldColor),
                child: DropdownButton(
                    elevation: 10,
                    value: prov.dropdownvalue,
                    items: prov.items
                        .map((String items) =>
                        DropdownMenuItem(
                          child: Text(items),
                          value: items,
                        ))
                        .toList(),
                    onChanged: (String? value) {
                      prov.dropdownvalue = value!;
                    }),
              ),
            ),
          ],
        );
      });
    }

}
