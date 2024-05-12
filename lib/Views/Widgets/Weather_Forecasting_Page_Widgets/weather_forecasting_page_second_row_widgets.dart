import 'package:flutter/material.dart';

class WeatherForecastingPageUvIndexAndSunHourWidget extends StatelessWidget {
  const WeatherForecastingPageUvIndexAndSunHourWidget(
      {super.key, required this.uvIndex, required this.sunHour});
  final String uvIndex;
  final String sunHour;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          "Uv Index : $uvIndex",
          style: const TextStyle(color: Colors.white),
        ),
        const SizedBox(
          width: 15,
        ),
        Text(
          "Sun Duration : $sunHour Hours",
          style: const TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
