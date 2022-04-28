import 'dart:isolate';

import 'package:flutter/material.dart';
import 'package:flutter2022awesome/pages/demo_layout_page1.dart';
import 'package:flutter2022awesome/redux/main_redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class MyHomePage extends StatefulWidget {
  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title = "主页";

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return StoreConnector<CountState, CountViewModel>(
      converter: CountViewModel.fromStore,
      builder: (context, vm) {
        return Scaffold(
            appBar: AppBar(
              // Here we take the value from the MyHomePage object that was created by
              // the App.build method, and use it to set our appbar title.
              title: Text(widget.title),
            ),
            body: Center(
              // Center is a layout widget. It takes a single child and positions it
              // in the middle of the parent.
              child: Column(
                // Column is also a layout widget. It takes a list of children and
                // arranges them vertically. By default, it sizes itself to fit its
                // children horizontally, and tries to be as tall as its parent.
                //
                // Invoke "debug painting" (press "p" in the console, choose the
                // "Toggle Debug Paint" action from the Flutter Inspector in Android
                // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
                // to see the wireframe for each widget.
                //
                // Column has various properties to control how it sizes itself and
                // how it positions its children. Here we use mainAxisAlignment to
                // center the children vertically; the main axis here is the vertical
                // axis because Columns are vertical (the cross axis would be
                // horizontal).
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextButton(onPressed: _jumpTolayoutPage, child: const Text("跳转到布局页面1")),
                  const Text(
                    'You have pushed the button this many times:',
                    style: TextStyle(color: Color(0xfff96060)),
                  ),
                  Text(vm.count.toString(),
                      style: Theme.of(context).textTheme.headline4),
                ],
              ),
            ),
            floatingActionButton: Theme(
                data: ThemeData(
                    colorScheme:  Theme.of(context).colorScheme.copyWith
                      (
                        secondary: Colors.greenAccent
                    )
                ),
                child: FloatingActionButton(
                    onPressed: vm.add)) // This trailing comma makes auto-formatting nicer for build methods.

            );
      },
    );
  }

  void _jumpTolayoutPage() {
    Navigator.push(context,  MaterialPageRoute(builder: (context){
      return  DemoLayoutPage1();
    }));
  }
}

class CountViewModel {
  final int count;
  final VoidCallback add;

  CountViewModel({required this.count, required this.add});

  static CountViewModel fromStore(Store<CountState> store) {
    return CountViewModel(
        count: store.state.times,
        add: () => store.dispatch(CountActions.addAction));
  }
}
