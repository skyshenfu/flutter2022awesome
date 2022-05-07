import 'package:flutter/material.dart';
import 'package:flutter2022awesome/bloc/global/global_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'demo_layout_page1.dart';

class ClassTabPage extends StatelessWidget{
  late GlobalBloc  bloc;
  @override
  Widget build(BuildContext context) {
    bloc=BlocProvider.of<GlobalBloc>(context);
    return Scaffold(
      body: Center(
        child: TextButton(onPressed: () {
          var temp=bloc;
          Navigator.push(context,  MaterialPageRoute(builder: (context){
            return  DemoLayoutPage1();
          }));

        }, child: BlocBuilder<GlobalBloc,GlobalState>(
          builder: (context, state) {
            return Text('${bloc.state.userInfo}');
          }),
        ),

        )

    );
  }

}