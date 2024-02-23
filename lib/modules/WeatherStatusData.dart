// ignore_for_file: file_names

class WeatherDataStatus {
  String imgUrl, cityName, updatedDate, weatherStatus;
  int minTemp, maxTemp, avgTemp;
  WeatherDataStatus({
    required this.imgUrl,
    required this.cityName,
    required this.updatedDate,
    required this.weatherStatus,
    required this.avgTemp,
    required this.maxTemp,
    required this.minTemp,
  });
}
