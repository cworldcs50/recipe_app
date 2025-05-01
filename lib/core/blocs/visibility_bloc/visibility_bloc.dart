import 'package:flutter_bloc/flutter_bloc.dart';
import 'visibility_event.dart';
import 'visibility_states.dart';

class VisibilityBloc extends Bloc<VisibilityBaseEvent, VisibilityBaseState> {
  VisibilityBloc()
    : super(
        const VisibilityBaseState(passwordState: false, rememberState: false),
      ) {
    on<PasswordVisibilityEvent>(_passwordVisibility);
    on<RememberMeVisibilityEvent>(_rememberMeVisibility);
  }

  void _rememberMeVisibility(event, emit) =>
      emit(state.copywith(rememberState: !state.rememberState));

  void _passwordVisibility(event, emit) =>
      emit(state.copywith(passwordState: !state.passwordState));
}
