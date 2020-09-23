import 'package:equatable/equatable.dart';
import "countries.dart";

class Countries extends Equatable  {
	final List<Country> countries;

	Countries({this.countries});

	factory Countries.fromJson(Map<String, dynamic> json) {
		return Countries(
			countries: json['countries'] != null ? json['countries'].map<Country>((v) => new Country.fromJson(v)).toList() : null,
		);
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.countries!= null) {
      data['countries'] = this.countries.map((v) => v.toJson()).toList();
    }
		return data;
	}

	@override
	List<Object> get props => [
		this.countries
	];
}
