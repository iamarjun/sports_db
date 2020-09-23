import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:sports_db/constants.dart';
import 'package:sports_db/screens/home/bloc/countrylist_bloc.dart';
import 'package:sports_db/screens/home/widget/country_list.dart';
import 'package:sports_db/service/api_service.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: BlocProvider(
        create: (context) {
          var bloc = CountrylistBloc(service: Service());
          bloc.add(FetchCoutries());
          return bloc;
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'The Sports DB',
                style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.w500,
                    color: kPrimaryTextColor),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.7,
                child: BlocBuilder<CountrylistBloc, CountrylistState>(
                  builder: (context, state) {
                    if (state is CountrylistInitial) {
                      return _loading();
                    } else if (state is CountrylistLoading) {
                      return _loading();
                    } else if (state is CountrylistLoaded) {
                      return CountryList(
                        countryList: state.countryList,
                      );
                    } else if (state is CountrylistError) {
                      Scaffold.of(context).showSnackBar(
                          SnackBar(content: Text(state.errorMessage)));
                      return Container();
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _loading() {
    return SpinKitChasingDots(
      color: kPrimaryTextColor,
    );
  }
}
