import 'package:flutter/material.dart';
import 'package:flutter_weather_app/Model/weather_model.dart';
import 'package:flutter_weather_app/Views/Widgets/Home_Page_Widgets/home_page_botton_widgets.dart';
import 'package:flutter_weather_app/Views/Widgets/Home_Page_Widgets/homr_page_top_cobtainer_widget.dart';

class HomePageAllWidgets extends StatelessWidget {
  const HomePageAllWidgets(
      {super.key,
      required this.hourly,
      required this.weather,
      required this.currentTemperature,
      required this.maxTemperature,
      required this.minTemperature,
      required this.weatherConditionValue,
      required this.windSpeed,
      required this.humidity,
      required this.uvIndex,
      required this.visibility,
      required this.userCityName});
  final List<Hourly> hourly;
  final List<WeatherElement> weather;
  final String currentTemperature;
  final String maxTemperature;
  final String minTemperature;
  final String weatherConditionValue;
  final String windSpeed;
  final String humidity;
  final String uvIndex;
  final String visibility;
  final String userCityName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        HomePageTopContainerWidget(
            currentTemperature: currentTemperature,
            maxTemperature: maxTemperature,
            minTemperature: minTemperature,
            weatherConditionValue: weatherConditionValue,
            windSpeed: windSpeed,
            humidity: humidity,
            uvIndex: uvIndex,
            currentUserCityName: userCityName,
            visibility: visibility),
        const SizedBox(
          height: 10,
        ),
        HomePageBottomWidgets(hourly: hourly, weather: weather),
      ],
    );
  }
}
