import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter2022awesome/widgets/base/commonLayout.dart';

class DemoLayoutPage1 extends StatefulWidget{
  @override
  _DemoLayoutPage1State createState()=>_DemoLayoutPage1State();
}
class _DemoLayoutPage1State extends State<DemoLayoutPage1>{
  @override
  Widget build(BuildContext context) {
    return CommonLayout(backgroundColor: Colors.white, safeAreaColor: Colors.green, child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
       TextButton(onPressed: (){
         Navigator.pop(context);
       }, child: const Text(
         "返回"
       ))
      ]
    ));
  }

}