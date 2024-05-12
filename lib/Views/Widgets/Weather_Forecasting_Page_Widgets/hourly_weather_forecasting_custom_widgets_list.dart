import 'package:flutter/material.dart';
import 'package:flutter_weather_app/Model/fetch_current_hour_weather_data.dart';
import 'package:flutter_weather_app/Model/weather_model.dart';
import 'package:flutter_weather_app/Views/Widgets/Weather_Forecasting_Page_Widgets/hour_based_weather_forecasting_custom_widget.dart';

class HourlyWeatherForecastingCustomWidgetsList extends StatelessWidget {
  const HourlyWeatherForecastingCustomWidgetsList(
      {super.key, required this.weatherForecastDataList, required this.index});
  final List<WeatherElement> weatherForecastDataList;
  final int index;

  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);
    return SizedBox(
      height: height * 0.7,
      width: MediaQuery.sizeOf(context).width,
      child: ListView.builder(
        itemCount: weatherForecastDataList[index].hourly.length,
        itemBuilder: (context, hourlyListIndex) {
          return Padding(
            padding: const EdgeInsets.all(5.0),
            child: SizedBox(
              width: 80,
              height: 140,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, top: 5),
                      child: Text(
                        fetchTodayWeatherHourlyUpdateTime(
                            currentTime: weatherForecastDataList[index]
                                .hourly[hourlyListIndex]
                                .time!)!,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  HourBasedWeatherForecastingCustomWidget(
                      weatherForecastDataList: weatherForecastDataList,
                      index: index,
                      hourlyListIndex: hourlyListIndex)
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
