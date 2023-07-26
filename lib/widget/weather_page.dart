import 'dart:math';

import 'package:flutter/material.dart';
import 'package:weatherapp/model/weather_model.dart';
import 'package:weatherapp/services/weather_api_client.dart';
import 'package:weatherapp/widget/additonal_information.dart';
import 'package:weatherapp/widget/current_wether.dart';

class WeatherPge extends StatelessWidget {
  WeatherPge({super.key, required this.location});

  final String location;

  WeatherApiClient client = WeatherApiClient();

  Weather? data;

  Future<void> getData(String locations) async {
    data = await client.getCurrentWeather(locations);
  }

  @override
  Widget build(BuildContext context) {
    //the first thing that we are going to is to create the UI the app
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 212, 236, 233),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 212, 236, 233),
          elevation: 0.0,
          title: Text(
            'Weather App',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
            color: Colors.black,
          ),
        ),
        body: FutureBuilder(
          future: getData(location),
          builder: (context, snapshot) {
            //   int inttemp = (data!.temp! / 10).toInt();
            if (snapshot.connectionState == ConnectionState.done) {
// here we will display if we get data from api
              return Center(
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //lets create custom widget for app
                    currentWeather(Icons.wb_sunny_rounded,
                        "${(data!.temp! / 10).toInt()}℃", "${data!.cityName}"),

                    SizedBox(
                      height: 20.0,
                    ),
                    const Text(
                      "Additional information",
                      style: TextStyle(
                          fontSize: 24.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    const Divider(),
                    const SizedBox(
                      height: 20.0,
                    ),
                    //now we create additional information widget
                    additionalInformation("${data!.wind}", "${data!.humidity}",
                        "${data!.pressure}", "${data!.feels_like}"),
                    //ui is ready
                    //start api section
                    //make model to store the data
                  ],
                ),
              );
            } else if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            return Container();
          },
        ));
  }
}
