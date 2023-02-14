import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_now/controllers/global_controller.dart';
import 'package:weather_now/models/weather_data_hourly.dart';
import 'package:weather_now/widget/current_weather_widget.dart';
import 'package:weather_now/widget/daily_data_widget.dart';
import 'package:weather_now/widget/header_widget.dart';
import 'package:weather_now/widget/hourly_data_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //call location
  final GlobalController globalController =
      Get.put(GlobalController(), permanent: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Obx(() => globalController.checkLoading().isTrue
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Center(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    const SizedBox(
                      height: 20.0,
                    ),
                    const HeaderWidget(),
                    CurrentWeatherWidget(
                      weatherDataCurrent:
                          globalController.getWeatherData().getCurrentWeather(),
                    ),
                    const Center(
                      heightFactor: 2,
                      child: Text(
                        'Today',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ),
                    HourlyDataWidget(
                        weatherDataHourly: globalController
                            .getWeatherData()
                            .getHourlyWeather()),
                    DailyDataForecast(
                        weatherDataDaily:
                            globalController.getWeatherData().getDailyWeather())
                  ],
                ),
              )),
      ),
    );
  }
}
