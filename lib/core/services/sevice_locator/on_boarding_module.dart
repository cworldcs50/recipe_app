import 'package:get_it/get_it.dart';
import '../../../features/on_boarding/domain/usecases/email_validator_use_case.dart';
import '../../../features/on_boarding/domain/usecases/password_validator_use_case.dart';
import '../../../features/on_boarding/presentation/controllers/on_boarding_bloc/on_boarding_bloc.dart';
import '../../../features/on_boarding/presentation/controllers/timer_bloc/timer_bloc.dart';

final GetIt sl = GetIt.instance;

class OnBoardingModule {
  static void init() {
    sl.registerLazySingleton<TimerBloc>(() => TimerBloc());
    sl.registerLazySingleton<OnBoardingBloc>(() => OnBoardingBloc());
    //usecases
    sl.registerLazySingleton<PasswordValidatorUseCase>(
      () => PasswordValidatorUseCase(),
    );
    sl.registerLazySingleton<EmailValidatorUseCase>(
      () => EmailValidatorUseCase(),
    );
  }
}
