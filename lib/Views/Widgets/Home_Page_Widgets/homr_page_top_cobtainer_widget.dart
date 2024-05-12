import 'package:flutter/material.dart';
import 'package:flutter_weather_app/Views/Screens/home_page_design.dart';
import 'package:flutter_weather_app/Views/Widgets/Home_Page_Widgets/home_page_current_temprature_text_widget.dart';
import 'package:flutter_weather_app/Views/Widgets/Home_Page_Widgets/home_page_top_container_first_row_widgets.dart';
import 'package:flutter_weather_app/Views/Widgets/Home_Page_Widgets/home_page_top_container_second_row_widgets.dart';
import 'package:flutter_weather_app/Views/Widgets/Home_Page_Widgets/home_page_user_city_name_widget.dart';
import 'package:flutter_weather_app/Views/Widgets/Home_Page_Widgets/home_page_weather_condition_image.dart';

class HomePageTopContainerWidget extends StatelessWidget {
  const HomePageTopContainerWidget(
      {super.key,
      required this.currentTemperature,
      required this.maxTemperature,
      required this.minTemperature,
      required this.weatherConditionValue,
      required this.windSpeed,
      required this.humidity,
      required this.uvIndex,
      required this.visibility,
      required this.currentUserCityName});
  final String currentTemperature;
  final String maxTemperature;
  final String minTemperature;
  final String weatherConditionValue;
  final String windSpeed;
  final String humidity;
  final String uvIndex;
  final String visibility;
  final String currentUserCityName;

  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
      child: Container(
        width: width,
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.15),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.white,
              width: 1,
            )),
        child: Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            HomePageDisplayUserCityNameTextWidget(
                userCity: currentUserCityName),
            const SizedBox(
              height: 5,
            ),
            HomePageCurrentTemperatureTextWidget(
                currentTemperature: currentTemperature),
            HomePageWeatherConditionImage(
                weatherConditionValue: currentTemperature),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: width,
              child: HomePageTopContainerFirstRowWidgets(
                  maxTemperature: maxTemperature,
                  minTemperature: minTemperature,
                  windSpeed: windSpeed),
            ),
            const SizedBox(
              height: 10,
            ),
            HomePageTopContainerSecondRowWidgets(
                humidity: humidity, uvIndex: uvIndex, visibility: visibility),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
