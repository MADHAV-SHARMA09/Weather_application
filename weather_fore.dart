import 'dart:ui';

import 'package:flutter/material.dart';
import 'weather_app_ext.dart';
//import 'package:http/http.dart' as http;

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar
      appBar: AppBar(
        elevation: 100,
        title: const Text(
          'WEATHER SCREEN',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.refresh),
          )
        ],
      ),

      //BODY of app
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,       // to keep it centered
          children: [
            const SizedBox(height: 10,),
            //main card
            Container(
              width: 380,
              child: Card(
                elevation: 20,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX:10 , sigmaY:10),
                    child: const Column(     // to keep it centered
                      children: [
                        Text(
                          '300°F',
                          style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(Icons.cloud, size: 68,),
                        SizedBox(height: 5,),
                        Text('Rain', style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height:20),
            // text 
            Container(
              alignment: Alignment.centerLeft,
              child: const Text("Weather Forecast",
                style: 
                  TextStyle(fontSize: 24,
                  fontWeight: FontWeight.bold),
              ),
            ),
            
            const SizedBox(height: 10,),
            //weather cards

            // const Placeholder(
            //   fallbackHeight: 150,
            // ),

            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Hourlyforecast(icon: Icons.cloud, temp: "306.78", time: "00:00"),
                  Hourlyforecast(icon: Icons.sunny, temp: "304.78", time: "02:00"),
                  Hourlyforecast(icon: Icons.cloud, temp: "303.78", time: "04:00"),
                  Hourlyforecast(icon: Icons.sunny  , temp: "300.78", time: "06:00")
                ],
              ),
            ),

            const SizedBox(height: 20,),
            //Additional info box
            Container(
              alignment: Alignment.centerLeft,
              child: const Text("Additional Infornmation",
                style: 
                  TextStyle(fontSize: 24,
                  fontWeight: FontWeight.bold),
              ),
            ),
            
            const SizedBox(height: 20,),
            // const Placeholder(
            //   fallbackHeight: 150,)
            
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Additionalinfo(icon: Icons.water_drop, label: 'Humidity', value: "91",),
                Additionalinfo(icon: Icons.wind_power, label: 'Wind Speed', value: "90",),
                Additionalinfo(icon: Icons.bakery_dining_outlined, label: "Pressure", value: "1000",)
              ],
            )
          ],
        ),
      ),
    );
  }
}

