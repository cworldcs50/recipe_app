import 'package:equatable/equatable.dart';
import '../../../../../core/utils/enums/timer_states.dart';


sealed class TimerState extends Equatable {
  const TimerState({required this.timerState});

  final TimerStates timerState;

  @override
  List<Object> get props => [timerState];
}

class TimerInitialState extends TimerState {
  const TimerInitialState({required super.timerState});
}

class TimerFinishState extends TimerState {
  const TimerFinishState({required super.timerState});
}
