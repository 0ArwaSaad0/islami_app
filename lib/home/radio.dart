import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/my_theme.dart';

class RadioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 60.0),
          child: Image.asset(
            'assets/images/radio_img.png',
            fit: BoxFit.fill,
          ),
        ),
        Text(
          AppLocalizations.of(context)!.radio,
          style: Theme.of(context).textTheme.subtitle1?.copyWith(fontWeight: FontWeight.normal),
          textAlign: TextAlign.center,
        ),
        Padding(
          padding: const EdgeInsets.all(40.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.fast_forward,color: MyThemeData.goldColor,)),
              IconButton(onPressed: (){}, icon: Icon(Icons.play_arrow,color: MyThemeData.goldColor)),
              IconButton(onPressed: (){}, icon: Icon(Icons.fast_rewind,color: MyThemeData.goldColor)),

            ],
          ),
        )
      ],
    );
  }
}
