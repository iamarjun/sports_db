import 'package:equatable/equatable.dart';
import 'league.dart';

class Leagues extends Equatable {
  final List<League> leagues;

  Leagues({this.leagues});

  factory Leagues.fromJson(Map<String, dynamic> json) {
    return Leagues(
      leagues: json['countrys'] != null
          ? json['countrys'].map<League>((v) => new League.fromJson(v)).toList()
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.leagues != null) {
      data['countrys'] = this.leagues.map((v) => v.toJson()).toList();
    }
    return data;
  }

  @override
  List<Object> get props => [this.leagues];
}
