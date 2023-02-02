import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_now/models/weather_data_daily.dart';

class DailyDataForecast extends StatelessWidget {
  final WeatherDataDaily weatherDataDaily;
  const DailyDataForecast({
    super.key,
    required this.weatherDataDaily,
  });

  String getDay(final day) {
    DateTime time = DateTime.fromMicrosecondsSinceEpoch(day * 100);
    final x = DateFormat('E').format(time);
    return x;
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
