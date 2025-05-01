import 'package:flutter/material.dart';
import '../../../../core/services/sevice_locator/app_module.dart';
import '../../../../core/utils/constants/app_constants.dart';
import '../../domain/usecases/email_validator_use_case.dart';
import 'custom_input_field_title.dart';
import 'custom_text_form_field.dart';
import 'password_component.dart';

class CustomRegisterationForm extends StatelessWidget {
  const CustomRegisterationForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Align(
          alignment: Alignment.centerLeft,
          child: CustomInputFieldTitle(inputFieldTitle: AppConstants.kEmail),
        ),
        CustomTextFormField(
          hintText: AppConstants.kEnterYourEmailId,
          validator:
              (input) => sl<EmailValidatorUseCase>()(
                parameters: EmailValidatorUseCaseParameters(input: input),
              ),
        ),
        const SizedBox(height: 10),
        const Align(
          alignment: Alignment.centerLeft,
          child: CustomInputFieldTitle(inputFieldTitle: AppConstants.kPassword),
        ),
        const PasswordComponent(),
      ],
    );
  }
}
