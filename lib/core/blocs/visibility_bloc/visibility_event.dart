import 'package:equatable/equatable.dart';

class VisibilityBaseEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class PasswordVisibilityEvent extends VisibilityBaseEvent {}

class RememberMeVisibilityEvent extends VisibilityBaseEvent {}
