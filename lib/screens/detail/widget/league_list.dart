import 'package:flutter/material.dart';
import 'package:sports_db/screens/detail/models/league.dart';

class LeagueList extends StatelessWidget {
  final List<League> leagueList;
  const LeagueList({
    Key key,
    @required this.leagueList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: leagueList.length,
      itemBuilder: (_, index) => Stack(
        children: [
          SizedBox(
            height: 200,
            width: double.infinity,
            child: Image.network(
              leagueList[index].strBadge ??
                  'https://www.elegantthemes.com/blog/wp-content/uploads/2017/08/featuredimage.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
