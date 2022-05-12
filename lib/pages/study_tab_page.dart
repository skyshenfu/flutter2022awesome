import 'package:flutter/material.dart';
import 'package:flutter2022awesome/pages/study_child_page.dart';
import 'package:get/get.dart';

import '../getx/study/logic.dart';

class StudyTabPage extends StatefulWidget {
  StudyTabPage({Key? key}) : super(key: key);

  @override
  createState() => _StudyTabPageState();
}

class _StudyTabPageState extends State<StudyTabPage> with AutomaticKeepAliveClientMixin<StudyTabPage>{
  final logic = Get.put(StudyLogic());
  final state = Get.find<StudyLogic>().state;
  @override
  Widget build(BuildContext context) {

    return Center(
        child: Column(
      children: [
        TextButton(
          onPressed: () {
            logic.increase();
          },
          child: const Text("学习"),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context,  MaterialPageRoute(builder: (context){
              return  StudyChildPage();
            }));
          },
          child: const Text("跳转"),
        ),
        GetBuilder<StudyLogic>(builder: (logic){
          return Text("${state.countTimes}");
        },
        ),
        GetBuilder<StudyLogic>(builder: (logic){
          return Text("${state.mcNumber}");
        })
      ],
    ));
  }

  @override
  bool get wantKeepAlive => true;
}
