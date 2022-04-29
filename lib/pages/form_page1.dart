import 'package:flutter/material.dart';
import 'package:flutter2022awesome/widgets/base/commonLayout.dart';

class FormPage1 extends StatefulWidget {
  @override
  _FormPage1State createState()=>_FormPage1State();
}

class _FormPage1State extends State<FormPage1> {
  GlobalKey<FormState> formKey= GlobalKey<FormState>();
  String ? userName;
  String ? passWord;
  @override
  Widget build(BuildContext context) {
    return CommonLayout(
        backgroundColor: Colors.white,
        safeAreaColor: Colors.deepOrange,
        child: Form(
          key: formKey,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: "请输入用户名"
                    ),
                    onSaved: (value){
                      userName=value;
                    },
                    onFieldSubmitted: (data){

                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        labelText: "请输入密码"
                    ),
                    obscureText: true,
                    onSaved: (value){
                      passWord=value;
                    },
                    onFieldSubmitted: (data){

                    },
                    validator: (data){

                    },
                  ),
                 SizedBox(
                    width: 320,
                    height: 42,
                    child: TextButton(onPressed:_press,
                        child: const Text("点我登录")),
                  )
                ],

        )));
  }

  void _press() {
    var loginForm = formKey.currentState;
    loginForm?.save();
    print("userName"+userName!+"passWord"+passWord!);
  }
}
