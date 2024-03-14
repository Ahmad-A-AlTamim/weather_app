// ignore_for_file: file_names

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:weather_applecation/modules/WeatherStatusData.dart';
import 'package:weather_applecation/services/WearherSearvice.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("Weather App"),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: TextField(
            onChanged: (value) {},
            onSubmitted: (value) async {
              WeatherDataStatus w =
                  await WeatherServices().getCurrentWeather(cityName: value);
              log("${w.cityName} ${w.maxTemp}hh");
            },
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(20),
              labelText: "Search",
              labelStyle: const TextStyle(color: Colors.green),
              hintText: "Enter City Name",
              suffixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: const BorderSide(
                  width: 2,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
