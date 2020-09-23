import 'package:equatable/equatable.dart';
import 'league.dart';

class Leagues extends Equatable {
  final List<League> countrys;

  Leagues({this.countrys});

  factory Leagues.fromJson(Map<String, dynamic> json) {
    return Leagues(
      countrys: json['countrys'] != null
          ? json['countrys'].map<League>((v) => new League.fromJson(v)).toList()
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.countrys != null) {
      data['countrys'] = this.countrys.map((v) => v.toJson()).toList();
    }
    return data;
  }

  @override
  List<Object> get props => [this.countrys];
}
