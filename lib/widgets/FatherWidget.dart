import 'package:flutter/material.dart';

/// 只能用来共享数据 本身并不能意识到数据变化
class FatherWidget extends InheritedWidget{

  final int number;

  FatherWidget({required Widget child,required this.number}) : super(child: child){
    Object a=this;
    print(a.toString());
  }
  @override
  bool updateShouldNotify(covariant FatherWidget oldWidget) {

    return oldWidget.number!=number;
  }
  static FatherWidget? of(BuildContext context){
      return context.dependOnInheritedWidgetOfExactType<FatherWidget>();
  }


}