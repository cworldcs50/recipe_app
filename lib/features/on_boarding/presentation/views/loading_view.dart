import 'package:google_fonts/google_fonts.dart';

import '../../../../core/theme/app_colors/app_dark_colors.dart';
import 'on_boarding_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../controllers/timer_bloc/timer_bloc.dart';
import '../controllers/timer_bloc/timer_states.dart';
import '../controllers/timer_bloc/timer_events.dart';
import '../../../../core/utils/constants/app_constants.dart';
import '../../../../core/services/sevice_locator/service_locator.dart';

class LoadingView extends StatelessWidget {
  const LoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (context) =>
              sl<TimerBloc>()
                ..add(const StartTimerEvent(duration: Duration(seconds: 5))),
      child: BlocListener<TimerBloc, TimerState>(
        listenWhen:
            (previous, current) => previous.timerState != current.timerState,
        listener: (context, state) {
          if (state is TimerFinishState) {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => const OnBoardingView()),
            );
          }
        },
        child: Scaffold(
          body: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(bottom: 150),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0XFFFA9BB1), Color(0XFFF8C89A)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Column(
              spacing: 30,
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  AppConstants.kLogoPath,
                  width: 320,
                  height: 320,
                  fit: BoxFit.fill,
                ),
                Text(
                  AppConstants.kCookItEatIt,
                  style: GoogleFonts.poppins(
                    textStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: AppDarkColors.kSloganColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 30,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
