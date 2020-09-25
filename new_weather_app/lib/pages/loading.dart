import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:new_weather_app/services/weather_class.dart';
import 'package:weather/weather.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String city;
  void setupWeather() async {
    WeatherClass sample = WeatherClass(city: "Lahore");
    await sample.getData();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'city': sample.area,
      'temp': sample.temp,
      'current': sample.current,
      'description': sample.description,
      'humidity': sample.humidity,
      'windSpeed': sample.windSpeed,
    });
  }

  @override
  void initState() {
    super.initState();
    setupWeather();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Center(
        child: SpinKitRotatingCircle(
          color: Colors.white,
          size: 50.0,
        ),
      ),
    );
  }
}
