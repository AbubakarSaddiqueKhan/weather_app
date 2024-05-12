import 'package:flutter/material.dart';

class HomePageWindSpeedWidget extends StatelessWidget {
  const HomePageWindSpeedWidget({super.key, required this.windSpeed});
  final String? windSpeed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.wind_power_outlined,
          color: Colors.white,
        ),
        Text(
          "$windSpeed KMPH",
          style: const TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
