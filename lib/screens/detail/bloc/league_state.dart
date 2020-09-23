part of 'league_bloc.dart';

abstract class LeagueState extends Equatable {
  const LeagueState();
  
  @override
  List<Object> get props => [];
}

class LeagueInitial extends LeagueState {}
