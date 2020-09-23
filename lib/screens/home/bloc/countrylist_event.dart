part of 'countrylist_bloc.dart';

abstract class CountrylistEvent extends Equatable {
  const CountrylistEvent();

  @override
  List<Object> get props => [];
}

class FetchCoutries extends CountrylistEvent {
  const FetchCoutries();
}
