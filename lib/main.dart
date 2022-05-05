import 'package:flutter/material.dart';
import 'package:flutter2022awesome/pages/splash_page.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'redux/main_redux.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);
  final store = Store<CountState>(
    reducers,
    initialState:CountState.initialCountState()
  );
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StoreProvider(store: store, child: MaterialApp(
        home:  SplashPage(),
        theme: ThemeData(
            colorScheme:  Theme.of(context).colorScheme.copyWith
              (
                //主颜色
                primary: Colors.deepOrange,
              //次颜色
              secondary: Colors.amberAccent,
            ),
            //去除水波纹效果的俩颜色
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent
    )));
  }
}


