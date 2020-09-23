import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sports_db/screens/home/models/countries.dart';
import 'package:sports_db/service/api_service.dart';

part 'countrylist_event.dart';
part 'countrylist_state.dart';

class CountrylistBloc extends Bloc<CountrylistEvent, CountrylistState> {
  final Service service;

  CountrylistBloc({this.service}) : super(CountrylistInitial());

  @override
  Stream<CountrylistState> mapEventToState(
    CountrylistEvent event,
  ) async* {
    if (event is FetchCoutries) {
      yield CountrylistLoading();
      try {
        final response = await service.fetchCountries();
        yield CountrylistLoaded(countryList: response);
      } catch (e) {
        yield CountrylistError(errorMessage: e.toString());
      }
    }
  }
}
