import '../../../../core/theme/app_colors/app_light_colors.dart';
import 'sign_up_view.dart';
import 'package:flutter/material.dart';
import '../components/custom_text_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../components/remember_me_component.dart';
import '../components/custom_registeration_form.dart';
import '../components/custom_continue_with_button.dart';
import '../../../../core/utils/constants/app_constants.dart';
import '../../../../core/services/sevice_locator/app_module.dart';
import '../../../../core/blocs/visibility_bloc/visibility_bloc.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<VisibilityBloc>(),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 70),
                Image.asset(AppConstants.kLogoPath, width: 150, height: 150),
                const SizedBox(height: 20),
                Text(
                  AppConstants.kContinueWith,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 15,
                  children: [
                    CustomContinueWithButton(
                      buttonTitle: AppConstants.kFacebook,
                      onTap: () {},
                      imagePath: AppConstants.kFacebookIconPath,
                    ),
                    CustomContinueWithButton(
                      buttonTitle: AppConstants.kGoogle,
                      onTap: () {},
                      imagePath: AppConstants.kGoogleIconPath,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  AppConstants.kOr,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: AppLightColors.kOrColor,
                  ),
                ),
                Text(
                  AppConstants.kLoginToYourAccount,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                const CustomRegisterationForm(),
                Row(
                  children: [
                    const RememberMeComponent(),
                    Text(
                      AppConstants.kRememberMe,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: AppLightColors.kPrimaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.only(left: 5, bottom: 10),
                        child: Text(
                          AppConstants.kForgotPassword,
                          style: Theme.of(
                            context,
                          ).textTheme.bodyMedium!.copyWith(
                            color: AppLightColors.kForgotPassword,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(250, 45),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    AppConstants.kLogin,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: const Color(0XFF103C4A),
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(height: 35),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      AppConstants.kDontHaveAnAccount,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    CustomTextButton(
                      buttonTitle: AppConstants.kSignUp,

                      onPressed:
                          () => Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) => const SignInView(),
                            ),
                          ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
