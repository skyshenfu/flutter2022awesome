part of 'snack_bloc.dart';

@immutable
abstract class SnackState {}

class SnackInitialState extends SnackState {
}
class SnackLoadingState extends SnackState {
}
class SnackSuccessState extends SnackState {
}
