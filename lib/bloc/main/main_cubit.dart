import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'main_state.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(MainState(0));
  
  void selectTabIndex(int index){
    emit(MainState(index));
  }
}
