import 'package:flutter_bloc/flutter_bloc.dart';
import 'on_boarding_events.dart';

class OnBoardingBloc extends Bloc<OnBoardingEvents, int> {
  OnBoardingBloc() : super(0) {
    on<OnBoardingContinueEvent>(_onBoardingContinue);
  }


  void _onBoardingContinue(event, emit) => emit(state + 1);
}
