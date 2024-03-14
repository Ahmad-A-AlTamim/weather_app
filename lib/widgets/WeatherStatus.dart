// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, file_names

import 'package:flutter/material.dart';
import 'package:weather_applecation/modules/WeatherStatusData.dart';

class WeatherStatus extends StatelessWidget {
  WeatherDataStatus data;
  WeatherStatus({required this.data});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            data.cityName,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            data.updatedDate,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(data.imgUrl),
                Text(
                  data.avgTemp.toString(),
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Min : ${data.minTemp}",
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "Max : ${data.maxTemp}",
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Text(
            data.weatherStatus,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 26,
            ),
          ),
        ],
      ),
    );
  }
}
