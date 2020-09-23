part of 'countrylist_bloc.dart';

abstract class CountrylistState extends Equatable {
  const CountrylistState();

  @override
  List<Object> get props => [];
}

class CountrylistInitial extends CountrylistState {
  const CountrylistInitial();
}

class CountrylistLoading extends CountrylistState {
  const CountrylistLoading();
}

class CountrylistLoaded extends CountrylistState {
  final List<Country> countryList;
  const CountrylistLoaded({this.countryList});
}

class CountrylistError extends CountrylistState {
  final String errorMessage;
  const CountrylistError({this.errorMessage});
}
