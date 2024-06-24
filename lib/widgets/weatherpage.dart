import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ngcom/widgets/WeatherModel.dart';
import 'package:ngcom/widgets/weather_services.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  
  WeatherModel? _weatherModel;
  static const BASE_URL = 'http://api.openweathermap.org/data/2.5/weather';
  final String apiKey = "698f9404da815fe071e2614f7c22474a" ;

  

  Future<WeatherModel?> fetchWeather(String cityName) async {
  final Uri url = Uri.parse('$BASE_URL?q=$cityName&appid=$apiKey&units=metric');
  final http.Response response = await http.get(url);

  if (response.statusCode == 200) {
    final Map<String, dynamic> responseData = json.decode(response.body);
    final WeatherModel weather = WeatherModel.fromJson(responseData);
    return weather;
  } else {
    print('Failed to load weather data');
    return null;
  }
} 
  

  

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
    fetchWeather('lagos');
  }

  @override
  Widget build(BuildContext context) {
      WeatherModel? weather;
    return  Scaffold(
      backgroundColor: Color.fromARGB(255, 1, 44, 80),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                 width: MediaQuery.sizeOf(context).width,
                 height:50 ,
                 child: Text('${weather}'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
