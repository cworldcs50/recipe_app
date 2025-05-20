import 'package:get_it/get_it.dart';
import '../../../features/setting_account/presentation/controllers/select_your_country_bloc/select_you_country_bloc.dart';
import '../../../features/setting_account/presentation/controllers/select_your_kitchen_bloc/select_your_country_bloc.dart';

final GetIt sl = GetIt.instance;

class SettingAccountModule {
  static void init() {
    sl.registerLazySingleton<SelectYouCountryBloc>(
      () => SelectYouCountryBloc(),
    );

    sl.registerLazySingleton<SelectYourCountryBloc>(
      () => SelectYourCountryBloc(),
    );
  }
}
