import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sports_db/constants.dart';
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
      itemBuilder: (_, index) => Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Container(
          height: 200,
          width: double.infinity,
          child: Stack(
            children: [
              ColorFiltered(
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.4), BlendMode.darken),
                child: Image.network(
                  leagueList[index].strBadge ??
                      'https://www.myactivesg.com/-/media/SSC/Consumer/Images/Sports/Thumbnails-for-Sports-Landing-Page/Football-Sport-Thumbnail-600x400.jpg?w=600&hash=5B172A671BC7FD692920E3B99B6C92039A13A88A',
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      leagueList[index].strLeague,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                        color: kPrimaryTextColor,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Image.network(
                        leagueList[index].strLogo ??
                            'https://image.freepik.com/free-vector/modern-sport-logo-template-with-abstract-design_23-2147933494.jpg',
                        height: 50,
                      ),
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          'asset/twitter.svg',
                          height: 35,
                          color: Colors.white,
                        ),
                        SvgPicture.asset(
                          'asset/facebook.svg',
                          height: 40,
                          color: Colors.white,
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
