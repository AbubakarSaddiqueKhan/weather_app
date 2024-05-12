import 'package:flutter/material.dart';

class WeatherForecastingPageMaxMinTemperatureWidgets extends StatelessWidget {
  const WeatherForecastingPageMaxMinTemperatureWidgets(
      {super.key, required this.maxTempC, required this.minTempC});
  final String maxTempC;
  final String minTempC;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text(
          "Max",
          style: TextStyle(color: Colors.white),
        ),
        const Icon(
          Icons.thermostat,
          color: Colors.white,
        ),
        Text(
          "$maxTempC° C",
          style: const TextStyle(color: Colors.white),
        ),
        const SizedBox(
          width: 15,
        ),
        const Text(
          "Min",
          style: TextStyle(color: Colors.white),
        ),
        const Icon(
          Icons.thermostat,
          color: Colors.white,
        ),
        Text(
          "$minTempC° C",
          style: const TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
