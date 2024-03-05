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
      cityName: Json["location"]["name"],
      updatedDate: Json["current"]["last_updated"],
      weatherStatus: Json["current"]["condition"]["text"],
      avgTemp: Json["forecast"]["forecastday"][0]["day"]["avgtemp_c"],
      maxTemp: Json["forecast"]["forecastday"][0]["day"]["maxtemp_c"],
      minTemp: Json["forecast"]["forecastday"][0]["day"]["mintemp_c"],
    );
  }
}
