import 'package:flutter/material.dart';
import 'package:sports_db/constants.dart';
import 'package:sports_db/screens/home/models/countries.dart';

class CountryList extends StatelessWidget {
  final List<Country> countryList;
  final Function onTap;
  const CountryList({Key key, @required this.countryList, @required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: countryList.length,
      itemBuilder: (_, index) => InkWell(
        onTap: () => onTap(countryList[index].nameEn),
        child: Card(
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
      ),
    );
  }
}
