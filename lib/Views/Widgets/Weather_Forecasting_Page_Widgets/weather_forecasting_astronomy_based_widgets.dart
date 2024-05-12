import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_weather_app/Model/weather_model.dart';

class WeatherForecastingAstronomyBasedWidgets extends StatelessWidget {
  const WeatherForecastingAstronomyBasedWidgets(
      {super.key, required this.weatherForecastDataList, required this.index});
  final List<WeatherElement> weatherForecastDataList;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Icon(
              CupertinoIcons.sunrise,
              color: Colors.white,
            ),
            Text(
              weatherForecastDataList[index].astronomy[0].sunrise,
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(
              width: 10,
            ),
            const Icon(
              CupertinoIcons.sunset,
              color: Colors.white,
            ),
            Text(
              weatherForecastDataList[index].astronomy[0].sunset,
              style: const TextStyle(color: Colors.white),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Icon(
              Icons.arrow_upward_rounded,
              color: Colors.white,
            ),
            const Icon(
              CupertinoIcons.moon,
              color: Colors.white,
            ),
            Text(
              weatherForecastDataList[index].astronomy[0].moonrise,
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(
              width: 10,
            ),
            const Icon(
              Icons.arrow_downward_outlined,
              color: Colors.white,
            ),
            const Icon(
              CupertinoIcons.moon,
              color: Colors.white,
            ),
            Text(
              weatherForecastDataList[index].astronomy[0].moonset,
              style: const TextStyle(color: Colors.white),
            )
          ],
        ),
      ],
    );
  }
}
