import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/services/sevice_locator/service_locator.dart';
import '../../../../core/utils/constants/app_constants.dart';
import '../../../../core/cache/caching_bloc/has_seen_on_boarding_bloc.dart';
import '../../../../core/cache/caching_bloc/has_seen_on_boarding_events.dart';
import '../controllers/on_boarding_bloc/on_boarding_bloc.dart';
import '../views/sign_up_view.dart';
import 'custom_on_boarding_container.dart';

class OnBoardingComponent extends StatelessWidget {
  const OnBoardingComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnBoardingBloc, int>(
      builder: (context, state) {
        final String buttonTitle =
            (state < 2) ? AppConstants.kContinue : AppConstants.kStartCooking;

        final List<Widget> onBoardingScreens = [
          CustomOnBoardingContainer(
            buttonTitle: buttonTitle,
            imagePath: AppConstants.kOnBoardingImage1,
            currentIndex: state,
            backgroundImagePath: AppConstants.kOnBoardingImage1,
            title1: AppConstants.kOnBoarding1Title1,
            title2: AppConstants.kOnBoarding1Title2,
          ),
          CustomOnBoardingContainer(
            imagePath: AppConstants.kOnBoardingImage2,
            buttonTitle: buttonTitle,
            currentIndex: state,
            backgroundImagePath: AppConstants.kOnBoardingImage2,
            title1: AppConstants.kOnBoarding2Title1,
            title2: AppConstants.kOnBoarding2Title2,
          ),
          CustomOnBoardingContainer(
            imagePath: AppConstants.kOnBoardingImage3,
            onPressed: () {
              sl<CachingBloc>().add(SeenOnBoardingViewsEvent());
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const SignInView()),
              );
            },
            buttonTitle: buttonTitle,
            currentIndex: state,
            backgroundImagePath: AppConstants.kOnBoardingImage3,
            title1: AppConstants.kOnBoarding3Title1,
            title2: AppConstants.kOnBoarding3Title2,
          ),
        ];

        return onBoardingScreens[state];
      },
    );
  }
}
