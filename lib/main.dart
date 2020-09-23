import 'package:flutter/material.dart';
import 'package:sports_db/screens/detail/detail.dart';
import 'package:sports_db/screens/home/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        MyHomePage.route: (context) => MyHomePage(),
        League.route: (context) => League(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == League.route) {
          final arg = settings.arguments;
          return MaterialPageRoute(
            builder: (context) {
              return League(
                country: arg,
              );
            },
          );
        }
      },
    );
  }
}
