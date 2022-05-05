import 'package:flutter/material.dart';

class StudyTabPage extends StatefulWidget{
  StudyTabPage({Key? key}) : super(key: key);

  @override
  createState() =>_StudyTabPageState();


}

class _StudyTabPageState extends State<StudyTabPage>{
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Text("学习"),
    );
  }


}