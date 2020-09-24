part of 'league_bloc.dart';

abstract class LeagueState extends Equatable {
  const LeagueState();

  @override
  List<Object> get props => [];
}

class LeagueInitial extends LeagueState {
  const LeagueInitial();
}

class LeagueLoading extends LeagueState {
  const LeagueLoading();
}

class LeagueLoaded extends LeagueState {
  final List<League> leagues;
  const LeagueLoaded({this.leagues});
}

class LeagueError extends LeagueState {
  final String error;
  const LeagueError({this.error});
}
