import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sports_db/screens/detail/models/league.dart';
import 'package:sports_db/service/api_service.dart';

part 'league_event.dart';
part 'league_state.dart';

class LeagueBloc extends Bloc<LeagueEvent, LeagueState> {
  final Service service;
  LeagueBloc({this.service}) : super(LeagueInitial());

  @override
  Stream<LeagueState> mapEventToState(
    LeagueEvent event,
  ) async* {
    if (event is FetchLeagues) {
      yield LeagueInitial();
      try {
        final response = await service.fetchLeagues(event.country);
        yield LeagueLoaded(leagues: response);
      } catch (e) {
        yield LeagueError(error: e.toString());
      }
    }
  }
}
