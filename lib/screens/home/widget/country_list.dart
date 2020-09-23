import 'package:flutter/material.dart';
import 'package:sports_db/constants.dart';
import 'package:sports_db/screens/home/models/countries.dart';

class CountryList extends StatelessWidget {
  final List<Country> countryList;
  const CountryList({Key key, this.countryList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (_, index) => Card(
        color: kPrimaryColorLight,
        child: ListTile(
          title: Text(
            countryList[index].nameEn,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          trailing: Icon(
            Icons.arrow_forward,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
