import 'package:flutter/material.dart';
import 'package:flutter_weather_app/Views/Widgets/Home_Page_Widgets/home_page_max_temperature_widget.dart';
import 'package:flutter_weather_app/Views/Widgets/Home_Page_Widgets/home_page_min_temprature_widget.dart';
import 'package:flutter_weather_app/Views/Widgets/Home_Page_Widgets/home_page_wind_speed_widget.dart';

class HomePageTopContainerFirstRowWidgets extends StatelessWidget {
  const HomePageTopContainerFirstRowWidgets(
      {super.key,
      required this.maxTemperature,
      required this.minTemperature,
      required this.windSpeed});
  final String maxTemperature;
  final String windSpeed;
  final String minTemperature;

  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);
    return SizedBox(
      width: width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          HomePageMaxTemperatureWidget(maxTemperature: maxTemperature),
          HomePageWindSpeedWidget(windSpeed: windSpeed),
          HomePageMinTemperatureWidget(minTemperature: minTemperature),
        ],
      ),
    );
  }
}
