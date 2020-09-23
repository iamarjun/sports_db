import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'league_event.dart';
part 'league_state.dart';

class LeagueBloc extends Bloc<LeagueEvent, LeagueState> {
  LeagueBloc() : super(LeagueInitial());

  @override
  Stream<LeagueState> mapEventToState(
    LeagueEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
