import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/services/sevice_locator/service_locator.dart';
import '../components/on_boarding_component.dart';
import '../controllers/on_boarding_bloc/on_boarding_bloc.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<OnBoardingBloc>(),
      child: const Scaffold(body: OnBoardingComponent()),
    );
  }
}
