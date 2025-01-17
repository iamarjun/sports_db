part of 'league_bloc.dart';

abstract class LeagueEvent extends Equatable {
  const LeagueEvent();

  @override
  List<Object> get props => [];
}

class FetchLeagues extends LeagueEvent {
  final String country;

  const FetchLeagues({this.country});
}

class SearchLeagues extends LeagueEvent {
  final String query;
  final String country;
  const SearchLeagues({this.query, this.country});
}
