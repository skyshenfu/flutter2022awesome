part of 'global_bloc.dart';

class GlobalState {
  UserInfo ? userInfo;
  GlobalState init(){
    return GlobalState()..userInfo = null;
  }
  GlobalState clone() {
    return GlobalState()..userInfo = userInfo;
  }
}
