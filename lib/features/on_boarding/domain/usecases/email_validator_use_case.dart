import 'package:equatable/equatable.dart';
import '../../../../core/base_usecases/base_usecase.dart';
import '../../../../core/utils/constants/app_constants.dart';

class EmailValidatorUseCase
    with BaseUsecase<String?, EmailValidatorUseCaseParameters> {
  @override
  String? call({required EmailValidatorUseCaseParameters parameters}) {
    if (parameters.input == null || parameters.input == "") {
      return AppConstants.kEmailCantBeEmpty;
    }
    if (!RegExp(
      AppConstants.kEmailRegularExpression,
    ).hasMatch(parameters.input!)) {
      return AppConstants.kEnterAvalidEmailAdress;
    }
    return null;
  }
}

class EmailValidatorUseCaseParameters extends Equatable {
  const EmailValidatorUseCaseParameters({required this.input});
  final String? input;

  @override
  List<Object?> get props => [input];
}
