
import 'package:flutter/material.dart';

class SouraNameItem extends StatelessWidget {
String name;
SouraNameItem(this.name);

  @override
  Widget build(BuildContext context) {
    return Text(name,textAlign: TextAlign.center,style: Theme.of(context).textTheme.subtitle1,);
  }
}
