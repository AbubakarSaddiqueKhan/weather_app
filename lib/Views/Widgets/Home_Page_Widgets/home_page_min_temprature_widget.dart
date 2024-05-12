import 'package:flutter/material.dart';

class HomePageMinTemperatureWidget extends StatelessWidget {
  const HomePageMinTemperatureWidget({super.key, required this.minTemperature});
  final String minTemperature;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.arrow_downward,
          color: Colors.white,
        ),
        const Icon(
          Icons.device_thermostat_outlined,
          color: Colors.white,
        ),
        Text(
          "$minTemperature°",
          style: const TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
