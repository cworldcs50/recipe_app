import 'package:equatable/equatable.dart';

class VisibilityBaseState extends Equatable {
  const VisibilityBaseState({
    required this.passwordState,
    required this.rememberState,
  });

  final bool passwordState;
  final bool rememberState;

  VisibilityBaseState copywith({bool? passwordState, bool? rememberState}) =>
      VisibilityBaseState(
        passwordState: passwordState ?? this.passwordState,
        rememberState: rememberState ?? this.rememberState,
      );

  @override
  List<Object?> get props => [passwordState, rememberState];
}
