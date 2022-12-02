import 'package:flutter/material.dart';
import 'package:islami_app/my_theme.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  String dropdownvalue = 'سبحان الله';
  var items = ['الله اكبر', 'الحمدلله', 'لا اله الا الله', 'سبحان الله'];
  int count = 0;
  int currentNum = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
              child: InkWell(
            onTap: () {
              addNum(count);
              setState(() {});
            },
            child: Image(
              image: AssetImage(
                'assets/images/sebha_img.png',
              ),
            ),
          )),
          Text('عدد التسبيحات',
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  ?.copyWith(fontWeight: FontWeight.normal)),
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: MyThemeData.goldColor),
            onPressed: () {},
            child: Text(
              '$currentNum',
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(22.0),
            child: Container(
              decoration: BoxDecoration(color: MyThemeData.goldColor),
              child: DropdownButton(
                  elevation: 10,
                  value: dropdownvalue,
                  items: items
                      .map((String items) => DropdownMenuItem(
                            child: Text(items),
                            value: items,
                          ))
                      .toList(),
                  onChanged: (String? value) {
                    dropdownvalue = value!;

                    setState(() {});
                  }),
            ),
          ),
        ]);
  }

  void addNum(index) {
    currentNum++;

    if (currentNum == 34) {
      dropdownvalue = items[index];
      currentNum = 0;
      count++;
      if (count > items.length - 1) {
        currentNum = 0;
        count=0;
      }
      setState(() {});
    }
  }
}
