import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../utils/constants/app_constants.dart';
import 'has_seen_on_boarding_events.dart';

class CachingBloc extends Bloc<CachingBaseEvent, bool> {
  final SharedPreferences sharedPreferences;
  CachingBloc({required this.sharedPreferences}) : super(false) {
    on<HasSeenOnBoardingViewsEvent>(_hasSeenOnBoardingViews);
    on<SeenOnBoardingViewsEvent>(_seenOnBoardingViews);
    on<RememberMeEvent>(_rememberMe);
  }

  void _rememberMe(event, emit) {
    sharedPreferences.setBool(AppConstants.kRememberMeCache, event.rememberMe);
    emit(true);
  }

  void _seenOnBoardingViews(event, emit) {
    sharedPreferences.setBool(AppConstants.kOnBoardingSeen, true);
    emit(true);
  }

  void _hasSeenOnBoardingViews(event, emit) {
    final bool hasSeenOnBoarding =
        sharedPreferences.getBool(AppConstants.kOnBoardingSeen) ?? false;
    emit(hasSeenOnBoarding);
  }
}
