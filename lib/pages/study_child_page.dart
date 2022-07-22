import 'package:flutter/material.dart';
import 'package:flutter2022awesome/pages/IWPage.dart';
import 'package:get/get.dart';

import '../getx/study/logic.dart';

class StudyChildPage extends StatelessWidget {
  StudyChildPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //只要是从其他地方进来的就找的到
    final state = Get.find<StudyLogic>().state;
    final logic = Get.find<StudyLogic>();
    return Center(
      child: Column(
        children: [
          TextButton(
            onPressed: () {
              logic.increase();
            },
            child: const Text("学习子页面"),
          ),
          GetBuilder<StudyLogic>(builder: (logic){
            return Text("${state.countTimes}");
          },
          ),
          GetBuilder<StudyLogic>(builder: (logic){
            return Text("${state.mcNumber}");
          }),
          TextButton(onPressed: (){
            Navigator.push(context,  MaterialPageRoute(builder: (context){
              return  IWPage();
            }));
          }, child: const Text(
            "进入InheritWidgetDemo"
          ))
        ],
      )
    );
  }

}

