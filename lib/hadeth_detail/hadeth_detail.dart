import 'package:flutter/material.dart';
import 'package:islami_app/hadeth_detail/hadeth_model.dart';


class HadethDetail extends StatelessWidget {
  static const String routeName = 'dadeth_detail';

  @override
  Widget build(BuildContext context) {
    HadethModel args =
        ModalRoute.of(context)?.settings.arguments as HadethModel;
    return Stack(children: [
      Image.asset(
        'assets/images/main_background.png',
        fit: BoxFit.fill,
        width: double.infinity,
      ),
      Scaffold(
        appBar: AppBar(
          title: Text(
            args.title,
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        body: Card(
          margin: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          elevation: 15,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          child: ListView.builder(
            itemBuilder: (_, index) => Text(args.content[index]),
            itemCount: args.content.length,
          ),
        ),
      ),
    ]);
  }
}
