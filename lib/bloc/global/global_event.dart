part of 'global_bloc.dart';
abstract class GlobalEvent {}
class GainUserInfoEvent extends GlobalEvent {
  UserInfo ? userInfo;
  GainUserInfoEvent(this.userInfo);
}
