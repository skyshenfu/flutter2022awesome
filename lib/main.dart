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
        home:  SplashPage()));
  }
}


