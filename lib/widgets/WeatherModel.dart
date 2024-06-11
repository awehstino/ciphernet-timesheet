class WeatherModel {
  final String cityName;
  final String temperature;
  final String mainCondition;

  const WeatherModel({
    required this.cityName,
    required this.temperature,
    required this.mainCondition,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      cityName: json['name'],
      temperature: json['main']['temp'].toDuble(),
      mainCondition: json['weather'][0]['main'],
    );
  }
}
