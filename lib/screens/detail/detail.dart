import 'package:flutter/material.dart';

class League extends StatelessWidget {
  static final String route = '/detail';
  final String country;
  const League({Key key, this.country}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('data'),
    );
  }
}
