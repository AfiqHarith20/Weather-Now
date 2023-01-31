import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_now/controllers/global_controller.dart';
import 'package:weather_now/widget/current_weather_widget.dart';
import 'package:weather_now/widget/header_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalController globalController =
      Get.put(GlobalController(), permanent: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Obx(
        () => globalController.checkLoading().isTrue
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
                    CurrentWeatherWidget(),
                  ],
                ),
              ),
      ),
    ));
  }
}
