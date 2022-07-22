import 'package:flutter/material.dart';
import 'package:flutter2022awesome/widgets/ChildWidget.dart';
import 'package:flutter2022awesome/widgets/FatherWidget.dart';
import 'package:flutter2022awesome/widgets/base/commonLayout.dart';

class IWPage extends StatefulWidget {
  const IWPage({Key? key}) : super(key: key);

  @override
  State<IWPage> createState() => _IWPageState();

}

class _IWPageState extends State<IWPage> {
  int _innerValue = 233;

  @override
  Widget build(BuildContext context) {
    return CommonLayout(
        child: Column(
      children: [
        FatherWidget(child: ChildWidget(), number: _innerValue),
        TextButton(
            onPressed: () {
              setState(() {
                _innerValue++;
              });
            },
            child: const Text("点这里"))
      ],
    ));
  }
}
