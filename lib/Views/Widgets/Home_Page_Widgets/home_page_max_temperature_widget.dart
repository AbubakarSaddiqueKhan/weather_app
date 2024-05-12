import 'package:flutter/material.dart';

class HomePageMaxTemperatureWidget extends StatelessWidget {
  const HomePageMaxTemperatureWidget({super.key, required this.maxTemperature});
  final String maxTemperature;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.arrow_upward_rounded,
          color: Colors.white,
        ),
        const Icon(Icons.thermostat, color: Colors.white),
        Text(
          "$maxTemperature°",
          style: const TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
