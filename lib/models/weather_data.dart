import 'package:weather_now/models/weather_data_current.dart';
import 'package:weather_now/models/weather_data_daily.dart';
import 'package:weather_now/models/weather_data_hourly.dart';

class WeatherData {
  late final WeatherDataCurrent? current;
  late final WeatherDataHourly? hourly;
  late final WeatherDataDaily? daily;

  WeatherData([
    this.current,
    this.hourly,
    this.daily,
  ]);

  WeatherDataCurrent getCurrentWeather() => current!;
  WeatherDataHourly getHourlyWeather() => hourly!;
  WeatherDataDaily getDailyWeather() => daily!;
}
