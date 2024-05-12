import 'package:flutter/material.dart';
import 'package:flutter_weather_app/Model/weather_model.dart';
import 'package:flutter_weather_app/Views/Widgets/Home_Page_Widgets/home_page_historical_data_custom_widget.dart';
import 'package:flutter_weather_app/Views/Widgets/Home_Page_Widgets/home_page_weather_forecasting_custom_widget.dart';
import 'package:flutter_weather_app/Views/Widgets/Home_Page_Widgets/today_hourly_temprature_update_widget.dart';

class HomePageBottomWidgets extends StatelessWidget {
  const HomePageBottomWidgets(
      {super.key, required this.hourly, required this.weather});
  final List<Hourly> hourly;
  final List<WeatherElement> weather;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              "Today",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        TodayHourlyTemperatureUpdateWidget(hourly: hourly),
        // const HomePageHistoricalDataCustomWidget(),
        HomePageWeatherForecastingCustomWidget(weather: weather),
      ],
    );
  }
}
