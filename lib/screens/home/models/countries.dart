class Countries  {
	String nameEn;

	Countries({this.nameEn});

	factory Countries.fromJson(Map<String, dynamic> json) {
		return Countries(
			nameEn: json['name_en'],
		);
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['name_en'] = this.nameEn;
		return data;
	}


}
