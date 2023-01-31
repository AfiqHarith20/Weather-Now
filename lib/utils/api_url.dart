import 'package:weather_now/api/api_key.dart';

String apiURL(var lat, var lon) {
  String url;

  url =
      'https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&appid=$apiKey&unit=metric';

  return url;
}
