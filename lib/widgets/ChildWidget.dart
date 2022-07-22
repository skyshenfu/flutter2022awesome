import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter2022awesome/widgets/FatherWidget.dart';

class ChildWidget extends StatefulWidget{

  ChildWidget({Key? key}) : super(key: key){
   print("child${toString()}");
  }

  @override
  _ChildWidgetState createState() => _ChildWidgetState();
}

class _ChildWidgetState extends State<ChildWidget> {
  late int  result;

  @override
  void initState() {
    print("childinitState${toString()}");
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    print("childdispose${toString()}");

    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    print("childbuild");
    result=FatherWidget.of(context)!.number;
    return Column(
      children: [
        Text("$result"),
        TextButton(onPressed: (){
        }, child: Text("点击看看"))
      ],
    );
  }
  @override
  void deactivate() {
    print("childdeactivate");
    super.deactivate();
  }
  @override
  void didChangeDependencies() {
    print("childdidChangeDependencies");
    super.didChangeDependencies();
  }
  @override
  void didUpdateWidget(covariant ChildWidget oldWidget) {
    print("childdidUpdateWidget");
    super.didUpdateWidget(oldWidget);

  }

}