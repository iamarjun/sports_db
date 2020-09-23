import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:sports_db/screens/home/models/countries.dart';
import 'package:sports_db/screens/home/models/country_list.dart';
import 'package:sports_db/service/api_exceptions.dart';

class Service {
  static const BASE_URL = 'https://www.thesportsdb.com/api/v1/json';
  static const API_KEY = '1';
  static const ALL_COUNTRIES = 'all_countries.php';

  Service._();
  static final Service _instance = Service._();
  factory Service() => _instance;

  Future<List<Country>> fetchCountries() async {
    List<Country> countries;
    try {
      final response = await get('$BASE_URL/$API_KEY/$ALL_COUNTRIES');
      countries = Countries.fromJson(_returnResponse(response)).countries;
      print(countries);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return countries;
  }

  dynamic _returnResponse(Response response) {
    switch (response.statusCode) {
      case 200:
        var responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        throw BadRequestException(response.body.toString());
      case 401:
      case 403:
        throw UnauthorisedException(response.body.toString());
      case 500:
      default:
        throw FetchDataException(
            'Error occured while Communication with Server with StatusCode : ${response.statusCode}');
    }
  }
}