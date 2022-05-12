import 'package:get/get.dart';

import 'state.dart';

class StudyLogic extends GetxController {
  final StudyState state = StudyState(0);

  increase(){
    //update对于state的更新是全量更新的 用到State的地方即使数据没发生改变也会触发widget重绘
    state.countTimes++;
    //如果你能具体到哪个ID就可以避免多余重绘造成的开销 只有ID在里面的才更新
    //update(["test"]);
    //这个是全量无差别更新
    update();
  }
}
