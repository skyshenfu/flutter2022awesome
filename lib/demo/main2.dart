// 导入io库，调用sleep函数
import 'dart:convert';
import 'dart:io';

// 模拟耗时操作，调用sleep函数睡眠2秒
doTask() async{
  print("doTask start");
  // await sleep(const Duration(seconds: 5));
  await _test();
  print("doTask end");
}

  _test()  {
  for(int i=0;i<9999999999;i++){

  }
}

// 定义一个函数用于包装
test() async {
  print("test start");
  var r = await doTask();
  print("test end");
  print(r);
}

void main(){
  print("main start");
  test();
  print("main end");
}
