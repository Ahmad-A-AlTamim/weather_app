// ignore_for_file: file_names, non_constant_identifier_names

class WeatherDataStatus {
  String imgUrl, cityName, updatedDate, weatherStatus;
  double minTemp, maxTemp, avgTemp;
  WeatherDataStatus({
    required this.imgUrl,
    required this.cityName,
    required this.updatedDate,
    required this.weatherStatus,
    required this.avgTemp,
    required this.maxTemp,
    required this.minTemp,
  });

  factory WeatherDataStatus.fromJsom(Json, String imagePath) {
    return WeatherDataStatus(
      imgUrl: imagePath,
      cityName: Json["location"]["name"] ?? "Null",
      updatedDate: Json["current"]["last_updated"] ?? "Null",
      weatherStatus: Json["current"]["condition"]["text"] ?? "Null",
      avgTemp: Json["forecast"]["forecastday"][0]["day"]["avgtemp_c"] ?? 0,
      maxTemp: Json["forecast"]["forecastday"][0]["day"]["maxtemp_c"] ?? 0,
      minTemp: Json["forecast"]["forecastday"][0]["day"]["mintemp_c"] ?? 0,
    );
  }
}
