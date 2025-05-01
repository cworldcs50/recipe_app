import 'package:equatable/equatable.dart';

sealed class TimerEvent extends Equatable {
  const TimerEvent({required this.duration});
  final Duration duration;
  @override
  List<Object> get props => [duration];
}

class StartTimerEvent extends TimerEvent {
  const StartTimerEvent({required super.duration});
}
