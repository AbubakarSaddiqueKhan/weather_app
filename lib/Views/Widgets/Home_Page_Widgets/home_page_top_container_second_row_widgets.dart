import 'package:flutter/material.dart';

class HomePageTopContainerSecondRowWidgets extends StatelessWidget {
  const HomePageTopContainerSecondRowWidgets(
      {super.key,
      required this.humidity,
      required this.uvIndex,
      required this.visibility});
  final String uvIndex;
  final String humidity;
  final String visibility;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          "UV Index : $uvIndex",
          style: const TextStyle(color: Colors.white),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.water_drop,
              color: Colors.white,
            ),
            Text(
              "$humidity %",
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
        Text(
          "Visibility : $visibility %",
          style: const TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
