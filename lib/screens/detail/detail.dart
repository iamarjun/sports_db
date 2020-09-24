import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:sports_db/constants.dart';
import 'package:sports_db/screens/detail/bloc/league_bloc.dart';
import 'package:sports_db/screens/detail/widget/league_list.dart';
import 'package:sports_db/service/api_service.dart';

class League extends StatelessWidget {
  static final String route = '/detail';
  final String country;
  const League({Key key, this.country}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = LeagueBloc(service: Service());
    return Scaffold(
      appBar: AppBar(
        title: Text(country),
      ),
      body: SingleChildScrollView(
        child: BlocProvider(
          create: (context) {
            bloc.add(FetchLeagues(country: country));
            return bloc;
          },
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    focusColor: kTextFieldFilledColor,
                    hintText: 'Search leagues...',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        10.0,
                      ),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  onSubmitted: (value) => bloc.add(
                    SearchLeagues(
                      country: country,
                      query: value,
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.75,
                  child: BlocBuilder<LeagueBloc, LeagueState>(
                    builder: (context, state) {
                      if (state is LeagueInitial) {
                        return _loading();
                      } else if (state is LeagueLoading) {
                        return _loading();
                      } else if (state is LeagueLoaded) {
                        return LeagueList(
                          leagueList: state.leagues,
                        );
                      } else if (state is LeagueError) {
                        Scaffold.of(context)
                            .showSnackBar(SnackBar(content: Text(state.error)));
                        return Container();
                      }
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _loading() {
    return SpinKitChasingDots(
      color: kPrimaryColor,
    );
  }
}
