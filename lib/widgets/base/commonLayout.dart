import 'package:flutter/material.dart';

class CommonLayout extends StatelessWidget{
  final Color backgroundColor;
  final Color safeAreaColor;
  final Widget child;
  const CommonLayout({Key? key,required this.backgroundColor,required this.safeAreaColor,required this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        bottom: false,
        child: Container(
          child: child
        ),
      )
    );
  }

}