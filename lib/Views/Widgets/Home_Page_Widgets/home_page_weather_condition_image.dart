import 'package:flutter/material.dart';
import 'package:flutter_weather_app/Model/fetch_current_hour_weather_data.dart';

class HomePageWeatherConditionImage extends StatelessWidget {
  const HomePageWeatherConditionImage(
      {super.key, required this.weatherConditionValue});
  final String? weatherConditionValue;

  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: SizedBox(
        height: height * 0.2,
        width: width,
        child: Image.asset(
          fetchCurrentWeatherImageUrl(
                  weatherCondition: weatherConditionValue ?? " ") ??
              "assets/images/sun.png",
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
