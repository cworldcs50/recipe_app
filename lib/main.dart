import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/theme/theme_data/theme_data_dark.dart';
import 'core/theme/theme_data/theme_data_light.dart';
import 'core/services/sevice_locator/service_locator.dart';
import 'core/cache/caching_bloc/has_seen_on_boarding_bloc.dart';
import 'core/cache/caching_bloc/has_seen_on_boarding_events.dart';
import 'features/on_boarding/presentation/views/loading_view.dart';
// import 'features/on_boarding/presentation/views/sign_up_view.dart';
import 'features/setting_account/presentation/views/selecting_country_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ServiceLocator.init();
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (context) => sl<CachingBloc>()..add(HasSeenOnBoardingViewsEvent()),
      child: MaterialApp(
        theme: lightThemeData,
        darkTheme: darkThemeData,
        themeMode: ThemeMode.dark,
        debugShowCheckedModeBanner: false,
        home: BlocBuilder<CachingBloc, bool>(
          builder:
              (context, state) =>
                  state ? const SelectingCountryView() : const LoadingView(),
        ),
      ),
    );
  }
}
