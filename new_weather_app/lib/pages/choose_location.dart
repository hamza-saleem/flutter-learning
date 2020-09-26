import 'package:flutter/material.dart';
import 'package:new_weather_app/services/weather_class.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  @override
  Widget build(BuildContext context) {
    List<WeatherClass> cities = [
      WeatherClass(city: 'Lahore'),
      WeatherClass(city: 'Karachi'),
      WeatherClass(city: 'Tokyo'),
      WeatherClass(city: 'Hokkaido'),
    ];
    void updateTime(index) async {
      WeatherClass instance = cities[index];
      await instance.getData();
      // navigate to home screen
      print(instance.area);
      Navigator.pop(context, {
        'city': instance.area,
        'temp': instance.temp,
        'current': instance.current,
        'description': instance.description,
        'humidity': instance.humidity,
        'windSpeed': instance.windSpeed,
      });
    }

    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text('Choose a location'),
          centerTitle: true,
          elevation: 0,
        ),
        body: ListView.builder(
            itemCount: cities.length,
            itemBuilder: (context, index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
                child: Card(
                  child: ListTile(
                    onTap: () {
                      updateTime(index);
                    },
                    title: Text(cities[index].city),
                  ),
                ),
              );
            }));
  }
}
