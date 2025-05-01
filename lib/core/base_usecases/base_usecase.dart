import 'package:equatable/equatable.dart';

 mixin BaseUsecase<ReturnType, ParametersType> {
  ReturnType call({required ParametersType parameters});
}


class NoParameters extends Equatable {
  const NoParameters();
  @override
  List<Object> get props => []; 
}