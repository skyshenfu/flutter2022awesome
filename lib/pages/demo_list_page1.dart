import 'package:flutter/material.dart';
import 'package:flutter2022awesome/widgets/base/commonLayout.dart';

class DemoListPage1 extends StatelessWidget {
  DemoListPage1({Key? key}) : super(key: key);
  final List<String> mData = [
    "List1",
    "List2",
    "List3",
    "List4",
    "List5",
    "List6",
    "List7",
    "List8",
    "List9",
    "List10",
    "List11",
    "List12",
    "List13",
    "List14",
    "List15",
    "List16",
    "List17",
    "List18",
    "List19",
    "List20",
    "List21",
    "List22"
  ];

  @override
  Widget build(BuildContext context) {
    return CommonLayout(
        backgroundColor: Colors.white,
        safeAreaColor: Colors.green,
        child: ListView.builder(
            itemBuilder: (context, index) {
              return  Text(mData[index]);
            },
            itemCount: mData.length));
  }
}
