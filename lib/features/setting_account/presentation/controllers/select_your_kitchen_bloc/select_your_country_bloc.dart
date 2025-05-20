import 'select_your_country_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SelectYourCountryBloc extends Bloc<SelectYourCountryEvent, bool> {
  SelectYourCountryBloc() : super(false) {
    on<SelectYourCountryEvent>(_selectKitchen);
  }

  void _selectKitchen(event, emit) => emit(!state);
}
