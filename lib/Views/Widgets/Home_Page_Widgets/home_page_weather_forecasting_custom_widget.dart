import 'package:flutter/material.dart';
import 'package:flutter_weather_app/Model/weather_model.dart';
import 'package:flutter_weather_app/Views/Screens/weather_forecasting_page_design.dart';

class HomePageWeatherForecastingCustomWidget extends StatelessWidget {
  const HomePageWeatherForecastingCustomWidget(
      {super.key, required this.weather});
  final List<WeatherElement> weather;

  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context)
              .pushNamed(WeatherForecastData.pageName, arguments: weather);
        },
        child: Container(
          width: width,
          height: 80,
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.15),
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: Colors.white,
                width: 1,
              )),
          alignment: Alignment.center,
          child: const Text(
            "Weather forecasting",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
