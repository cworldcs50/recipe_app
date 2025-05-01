import 'package:equatable/equatable.dart';
import '../../../../core/base_usecases/base_usecase.dart';
import '../../../../core/utils/constants/app_constants.dart';

class PasswordValidatorUseCase
    with BaseUsecase<String?, PasswordValidatorUseCaseParameters> {
  @override
  String? call({required PasswordValidatorUseCaseParameters parameters}) {
    if (parameters.input == null || parameters.input == "") {
      return AppConstants.kPasswordCantBeEmpty;
    }
    if (parameters.input!.length < kPasswordMinimumLength) {
      return AppConstants.kPasswordMustBeAtLeast6Characters;
    }
    return null;
  }
}

class PasswordValidatorUseCaseParameters extends Equatable {
  const PasswordValidatorUseCaseParameters({required this.input});
  final String? input;
  @override
  List<Object?> get props => [];
}

const int kPasswordMinimumLength = 6;
