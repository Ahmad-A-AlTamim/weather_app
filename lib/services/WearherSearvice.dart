// ignore_for_file: unused_import, file_names, avoid_init_to_null

import 'package:dio/dio.dart';
import 'package:weather_applecation/modules/WeatherStatusData.dart';
import 'dart:developer';

class WeatherServices {
  final Dio _dio = Dio();
  final String _apiKey = "a6d97429b1d84e0dbd5193500231002";
  final String _baseUrl = "http://api.weatherapi.com/v1";
  WeatherDataStatus tempWeather = WeatherDataStatus(
      imgUrl: "assets/images/rainy.png",
      cityName: "Null",
      updatedDate: "Null",
      weatherStatus: "Null",
      avgTemp: 0,
      maxTemp: 0,
      minTemp: 0);

  Future<WeatherDataStatus> getCurrentWeather(
      {required String cityName}) async {
    dynamic json = null;
    try {
      Response response = await _dio
          .get("$_baseUrl/forecast.json?key=$_apiKey&q=$cityName&days=1");
      json = response.data;

      return WeatherDataStatus.fromJsom(json, "assets/images/rainy.png");

      // ignore: empty_catches
    } catch (e) {
      return tempWeather;
    }
  }
}
