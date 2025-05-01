import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../blocs/visibility_bloc/visibility_bloc.dart';
import '../../cache/caching_bloc/has_seen_on_boarding_bloc.dart';

final GetIt sl = GetIt.instance;

class AppModule {
  static Future<void> init() async {
    sl.registerLazySingletonAsync<SharedPreferences>(
      () async => await SharedPreferences.getInstance(),
    );

    await sl.isReady<SharedPreferences>();

    sl.registerFactory<VisibilityBloc>(() => VisibilityBloc());

    sl.registerLazySingleton<CachingBloc>(
      () => CachingBloc(sharedPreferences: sl()),
    );
  }
}
