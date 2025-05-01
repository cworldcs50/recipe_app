import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/services/sevice_locator/service_locator.dart';
import '../../../../core/utils/constants/app_constants.dart';
import '../../domain/usecases/password_validator_use_case.dart';
import '../../../../core/blocs/visibility_bloc/visibility_bloc.dart';
import '../../../../core/blocs/visibility_bloc/visibility_event.dart';
import '../../../../core/blocs/visibility_bloc/visibility_states.dart';
import 'custom_text_form_field.dart';

class PasswordComponent extends StatelessWidget {
  const PasswordComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<VisibilityBloc, VisibilityBaseState, bool>(
      selector: (state) => state.passwordState,
      builder: (context, state) {
        return CustomTextFormField(
          obsecureText: state,
          hintText: AppConstants.kEnterApassword,
          suffixIcon: IconButton(
            onPressed:
                () => context.read<VisibilityBloc>().add(
                  PasswordVisibilityEvent(),
                ),
            icon: Icon(
              state ? Icons.visibility : Icons.visibility_off,
            ),
          ),
          validator:
              (input) => sl<PasswordValidatorUseCase>()(
                parameters: PasswordValidatorUseCaseParameters(input: input),
              ),
        );
      },
    );
  }
}
