import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../components/select_your_kitchen_component.dart';
import '../../../../core/services/sevice_locator/app_module.dart';
import '../controllers/select_your_kitchen_bloc/select_your_country_bloc.dart';

class SelectingKitchenView extends StatelessWidget {
  const SelectingKitchenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => sl<SelectYourCountryBloc>(),
        child: const SelectYourKitchenComponent(),
      ),
    );
  }
}
