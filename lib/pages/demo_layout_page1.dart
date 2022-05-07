import 'package:flutter/material.dart';
import 'package:flutter2022awesome/bloc/global/global_bloc.dart';
import 'package:flutter2022awesome/models/UserInfo.dart';
import 'package:flutter2022awesome/widgets/base/commonLayout.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DemoLayoutPage1 extends StatefulWidget {
  const DemoLayoutPage1({Key? key}) : super(key: key);

  @override
  _DemoLayoutPage1State createState() => _DemoLayoutPage1State();
}

class _DemoLayoutPage1State extends State<DemoLayoutPage1> {
  @override
  Widget build(BuildContext context) {
    return CommonLayout(
        backgroundColor: Colors.white,
        safeAreaColor: Colors.green,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
         _generateButton()
        ]));
  }

 Widget _generateButton() {
   final bloc = BlocProvider.of<GlobalBloc>(context);

   return TextButton(
        onPressed: () {
          bloc.add(GainUserInfoEvent(UserInfo(
            token: "1233333"
          )));
        },
        child: const Text("返回"));
  }
}
