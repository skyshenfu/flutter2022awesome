import 'package:flutter/material.dart';
import 'package:flutter2022awesome/bloc/snack/snack_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MineTabPage extends StatefulWidget {
  MineTabPage({Key? key}) : super(key: key);

  @override
  _MainTabPageState createState()=>_MainTabPageState();
}
class _MainTabPageState extends State<MineTabPage> with AutomaticKeepAliveClientMixin<MineTabPage>{
  @override
  Widget build(BuildContext context) {
    return BlocListener<SnackBloc, SnackState>(
      listener: (context, state) {
        if(state is SnackSuccessState) {
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: Colors.green,
                content: Text('Success'),
              ));
        }
      },
      child: Center(
        child: TextButton(onPressed: () {
          BlocProvider.of<SnackBloc>(context).add(ActivityEvent());
        }, child: BlocBuilder<SnackBloc, SnackState>(builder: (context, state) {
          if (state is SnackSuccessState) {
            return const Text("成功");
          } else if (state is SnackLoadingState) {
            return const Text("加载");
          } else {
            return const Text("初始化");
          }
        })),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;

}
