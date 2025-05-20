import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'select_you_country_event.dart';

class SelectYouCountryBloc extends Bloc<SelectYouCountryEvent, bool> {
  SelectYouCountryBloc() : super(false) {
    on<SelectYouCountryEvent>((event, emit) => emit(!state));
  }
}
