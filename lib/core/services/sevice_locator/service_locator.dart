import 'package:get_it/get_it.dart';
import 'app_module.dart';
import 'on_boarding_module.dart';
import 'setting_account_module.dart';

final GetIt sl = GetIt.instance;

class ServiceLocator {
  static Future<void> init() async {
    await AppModule.init();
    OnBoardingModule.init();
    SettingAccountModule.init();
  }
}
