import 'package:flutter/material.dart';

class WeatherForecastingCustomIconAndChancesPercentageWidget
    extends StatelessWidget {
  const WeatherForecastingCustomIconAndChancesPercentageWidget(
      {super.key, required this.icon, required this.percentageValue});
  final IconData icon;
  final String percentageValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: Container(
        height: 105,
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.15),
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: Colors.white,
              width: 1,
            )),
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                icon,
                color: Colors.white,
              ),
              Text(
                percentageValue,
                style: const TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
