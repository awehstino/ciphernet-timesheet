import 'package:flutter/material.dart';
import 'package:ngcom/widgets/WeatherModel.dart';
import 'package:ngcom/widgets/weather_services.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  final _weatherservice = WeatherServices("698f9404da815fe071e2614f7c22474a");
  WeatherModel? _weatherModel;

  _fetchWeather() async {
    String cityName = await _weatherservice.getCurrentCity();

    try {
      final weather = await _weatherservice.getweather(cityName);
      setState(() {
        _weatherModel = weather;
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _fetchWeather();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [],
      ),
    );
  }
}
