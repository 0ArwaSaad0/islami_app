import 'package:flutter/material.dart';
import 'package:islami_app/soura_detail/soura_detail_screen.dart';
import 'package:islami_app/soura_detail/soura_model.dart';

class SouraNameItem extends StatelessWidget {
  String name;
  int index;
  SouraNameItem(this.name,this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => Navigator.pushNamed(
              context,
              SouraDetailScreen.routeName,
          arguments:SuraModelArgument(index: index, suraName: name)
            ),
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Text(
            name,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ));
  }
}
