import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'snack_event.dart';
part 'snack_state.dart';

class SnackBloc extends Bloc<SnackEvent, SnackState> {
  SnackBloc() : super(SnackInitialState()) {
    on<ActivityEvent>((event, emit) async{
      emit(SnackLoadingState());
      await Future.delayed(const Duration(seconds: 2));
      emit(SnackSuccessState());
    });
  }
}
