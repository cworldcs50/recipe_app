import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utils/enums/timer_states.dart';
import 'timer_events.dart';
import 'timer_states.dart';

class TimerBloc extends Bloc<TimerEvent, TimerState> {
  TimerBloc() : super(const TimerInitialState(timerState: TimerStates.started)) {
    on<StartTimerEvent>(_startTimer);
  }

  void _startTimer(event, emit) async {
    await Future.delayed(event.duration);
    emit(const TimerFinishState(timerState: TimerStates.finished));
  }
}
