import 'package:flutter/material.dart';

class MineTabPage extends StatefulWidget{
  MineTabPage({Key? key}) : super(key: key);

  @override
  createState() =>_MineTabPageState();


}

class _MineTabPageState extends State<MineTabPage>{
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Text("我的"),
    );
  }


}