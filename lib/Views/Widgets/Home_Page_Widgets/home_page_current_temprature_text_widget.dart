import 'package:flutter/material.dart';

class HomePageCurrentTemperatureTextWidget extends StatelessWidget {
  const HomePageCurrentTemperatureTextWidget(
      {super.key, required this.currentTemperature});
  final String currentTemperature;

  @override
  Widget build(BuildContext context) {
    return Text(
      "$currentTemperature°",
      style: const TextStyle(fontSize: 65, color: Colors.white),
    );
  }
}
