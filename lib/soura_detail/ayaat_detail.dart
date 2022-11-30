import 'package:flutter/material.dart';

class AyaatDetail extends StatelessWidget {
 String ayaat;
 int index;
 AyaatDetail({required this.ayaat,required this.index});
  @override
  Widget build(BuildContext context) {
    return Text(
      '$ayaat (${index+1})',
      textDirection: TextDirection.rtl,
      style: Theme.of(context).textTheme.subtitle1,
      textAlign: TextAlign.center,
    );
  }
}
