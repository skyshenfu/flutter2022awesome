import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter2022awesome/models/UserInfo.dart';

part 'global_event.dart';
part 'global_state.dart';

class GlobalBloc extends Bloc<GlobalEvent, GlobalState> {
  GlobalBloc() : super(GlobalState().init()){
    on<GainUserInfoEvent>(_gainUserInfo);
  }


  FutureOr<void> _gainUserInfo(GainUserInfoEvent event, Emitter<GlobalState> emit) {
    state.userInfo=event.userInfo;
    emit(state.clone());
  }
}
