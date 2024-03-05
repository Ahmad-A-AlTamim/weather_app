import 'dart:developer';

import 'package:flutter/material.dart';

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
            onSubmitted: (value) {
              log(value);
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
