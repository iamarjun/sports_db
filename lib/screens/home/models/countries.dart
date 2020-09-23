import 'package:equatable/equatable.dart';

class Country extends Equatable  {
	final String nameEn;

	Country({this.nameEn});

	factory Country.fromJson(Map<String, dynamic> json) {
		return Country(
			nameEn: json['name_en'],
		);
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['name_en'] = this.nameEn;
		return data;
	}

	@override
	List<Object> get props => [
		this.nameEn
	];
}
