import 'package:flutter/material.dart';
import 'package:flutter_weather_app/Model/weather_model.dart';
import 'package:flutter_weather_app/Views/Widgets/Weather_Forecasting_Page_Widgets/hourly_weather_forecasting_custom_widgets_list.dart';
import 'package:flutter_weather_app/Views/Widgets/Weather_Forecasting_Page_Widgets/weather_forecasting_astronomy_based_widgets.dart';
import 'package:flutter_weather_app/Views/Widgets/Weather_Forecasting_Page_Widgets/weather_forecasting_page_first_row_widgets.dart';
import 'package:flutter_weather_app/Views/Widgets/Weather_Forecasting_Page_Widgets/weather_forecasting_page_second_row_widgets.dart';

class WeatherForecastingPageAllWidgetsList extends StatelessWidget {
  const WeatherForecastingPageAllWidgetsList(
      {super.key, required this.weatherForecastDataList, required this.index});
  final List<WeatherElement> weatherForecastDataList;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 25,
        ),
        Center(
          child: Text(
            weatherForecastDataList[index].date,
            style: const TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        WeatherForecastingPageMaxMinTemperatureWidgets(
            maxTempC: weatherForecastDataList[index].maxtempC,
            minTempC: weatherForecastDataList[index].mintempC),
        const SizedBox(
          height: 5,
        ),
        WeatherForecastingPageUvIndexAndSunHourWidget(
            uvIndex: weatherForecastDataList[index].uvIndex,
            sunHour: weatherForecastDataList[index].sunHour),
        const SizedBox(
          height: 5,
        ),
        WeatherForecastingAstronomyBasedWidgets(
            weatherForecastDataList: weatherForecastDataList, index: index),
        const SizedBox(
          height: 5,
        ),
        HourlyWeatherForecastingCustomWidgetsList(
            weatherForecastDataList: weatherForecastDataList, index: index)
      ],
    );
  }
}
