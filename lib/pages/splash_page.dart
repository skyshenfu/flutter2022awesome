import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter2022awesome/pages/home_page.dart';

class SplashPage extends StatefulWidget{
  @override
  _SplashPageState createState() =>_SplashPageState();
}

class _SplashPageState extends State<SplashPage>{
  static const int timeDelay=500;
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: timeDelay),_jumpToMainPage);
    
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body:  SafeArea(
          child: Center(
          child: Image.asset("assets/image/splash_bg.png"),
        ),
      ),
    );

  }


  FutureOr _jumpToMainPage() {
    Navigator.pushReplacement(context,  MaterialPageRoute(builder: (context){
      return  MyHomePage();
    }));
  }
}