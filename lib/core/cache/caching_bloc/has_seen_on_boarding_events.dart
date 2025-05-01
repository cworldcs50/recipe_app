import 'package:equatable/equatable.dart';

sealed class CachingBaseEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class HasSeenOnBoardingViewsEvent extends CachingBaseEvent {}

class SeenOnBoardingViewsEvent extends CachingBaseEvent {}

class RememberMeEvent extends CachingBaseEvent {
  RememberMeEvent({required this.rememberMe});

  final bool rememberMe;

  @override
  List<Object> get props => [rememberMe];
}
