import 'package:weather/weather.dart';

class WeatherClass {
  String city;
  var temp;
  var current;
  var description;
  var humidity;
  var windSpeed;

  WeatherClass({this.city});

  String area;

  Future<void> getData() async {
    WeatherFactory wf = new WeatherFactory("1057f6fa2dbdb047fd007dd80fefd20b");

    Weather w = await wf.currentWeatherByCityName(city);

    area = w.areaName;
    temp = w.temperature;
    current = w.weatherMain;
    description = w.weatherDescription;
    humidity = w.humidity;
    windSpeed = w.windSpeed;
  }
}
