import 'package:redux/redux.dart';
class CountState{

  final int times;
  CountState({
    required this.times,
  });
  static CountState initialCountState(){
    return CountState(
      times: 77
    );
  }

}

enum CountActions{
  addAction,
  cutDownAction
}
CountState countReducer(CountState state,dynamic action ){
  if(action==CountActions.addAction){
    return  CountState(times: state.times+1);

  }else if(action==CountActions.cutDownAction){
    return  CountState(times: state.times-1);

  }
  return state;

}
final reducers = combineReducers<CountState>([
  countReducer
]);