import "countries.dart";

class Country  {
	List<Countries> countries;

	Country({this.countries});

	factory Country.fromJson(Map<String, dynamic> json) {
		return Country(
			countries: json['countries'] != null ? json['countries'].map((v) => new Countries.fromJson(v)).toList() : null,
		);
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.countries!= null) {
      data['countries'] = this.countries.map((v) => v.toJson()).toList();
    }
		return data;
	}

}
