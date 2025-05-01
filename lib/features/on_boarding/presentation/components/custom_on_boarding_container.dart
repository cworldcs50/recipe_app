import 'package:flutter/material.dart';
import '../../../../core/services/sevice_locator/service_locator.dart';
import '../../../../core/theme/app_colors/app_light_colors.dart';
import '../../../../core/utils/constants/app_constants.dart';
import '../../../../core/utils/presentation/widgets/custom_elevated_button.dart';
import '../../../../core/cache/caching_bloc/has_seen_on_boarding_bloc.dart';
import '../../../../core/cache/caching_bloc/has_seen_on_boarding_events.dart';
import '../controllers/on_boarding_bloc/on_boarding_bloc.dart';
import '../controllers/on_boarding_bloc/on_boarding_events.dart';
import '../views/sign_up_view.dart';
import 'gradient_page_indicator.dart';

class CustomOnBoardingContainer extends StatelessWidget {
  const CustomOnBoardingContainer({
    super.key,
    required this.backgroundImagePath,
    required this.title1,
    required this.title2,
    required this.currentIndex,
    required this.buttonTitle,
    required this.imagePath,
    this.onPressed,
  });

  final String backgroundImagePath;
  final String title1;
  final String title2;
  final int currentIndex;
  final String buttonTitle;
  final void Function()? onPressed;
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover),
      ),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          const Spacer(flex: 2),
          Image.asset(AppConstants.kLogoPath, width: 100, height: 100),
          const Spacer(flex: 15),
          Text.rich(
            textAlign: TextAlign.center,
            TextSpan(
              children: [
                TextSpan(
                  text: "$title1\n",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextSpan(
                  text: title2,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontSize: 40,
                    color: AppLightColors.kTitle2Color,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          GradientPageIndicator(count: 3, currentIndex: currentIndex),
          const SizedBox(height: 30),
          CustomElevatedButton(
            onPressed:
                onPressed ??
                () => sl<OnBoardingBloc>().add(OnBoardingContinueEvent()),
            buttonTitle: buttonTitle,
          ),
          TextButton(
            onPressed: () {
              sl<CachingBloc>().add(SeenOnBoardingViewsEvent());
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const SignInView()),
              );
            },
            child: Text(
              AppConstants.kSkip,
              style: Theme.of(
                context,
              ).textTheme.bodyLarge!.copyWith(color: Colors.white),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
