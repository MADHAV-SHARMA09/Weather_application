import 'package:flutter/material.dart';
import 'package:flutter_application_1/weather_fore.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // to renove debug on top
      theme: ThemeData.dark(useMaterial3: true),  // can create cusstom theme ThemeData(backgro: )
      home: const WeatherScreen(),
    );
  }
}

// if you want to take everything from a theme except for some use 
// ThemeData.light(useMaterial3: true).copywith( appbartheme: )