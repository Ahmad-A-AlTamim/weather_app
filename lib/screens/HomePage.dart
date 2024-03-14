import 'package:flutter/material.dart';
import 'package:weather_applecation/modules/WeatherStatusData.dart';
import 'package:weather_applecation/screens/searchPage.dart';
import 'package:weather_applecation/widgets/WeatherStatus.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("Weather App"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SearchPage(),
                  ));
            },
            icon: const Icon(Icons.search),
          ),
        ],
        backgroundColor: Colors.green,
      ),
      body: WeatherStatus(
          data: WeatherDataStatus(
        imgUrl: "assets/images/rainy.png",
        cityName: "Jenin",
        updatedDate: "Updated at 22:45",
        weatherStatus: "Rainy",
        avgTemp: 10,
        maxTemp: 12,
        minTemp: 9,
      )),
    );
  }
}
