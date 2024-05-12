import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_weather_app/Model/weather_model.dart';
import 'package:flutter_weather_app/Views/Widgets/Weather_Forecasting_Page_Widgets/weather_forecasting_custom_chances_of_fog_widget.dart';
import 'package:flutter_weather_app/Views/Widgets/Weather_Forecasting_Page_Widgets/weather_forecasting_custom_text_based_widgets.dart';

class HourBasedWeatherForecastingCustomWidget extends StatelessWidget {
  const HourBasedWeatherForecastingCustomWidget(
      {super.key,
      required this.weatherForecastDataList,
      required this.index,
      required this.hourlyListIndex});
  final List<WeatherElement> weatherForecastDataList;
  final int index;
  final int hourlyListIndex;

  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);
    return SizedBox(
      width: width,
      height: 105,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            WeatherForecastingCustomIconAndChancesPercentageWidget(
                icon: Icons.foggy,
                percentageValue:
                    "${weatherForecastDataList[index].hourly[hourlyListIndex].chanceoffog!} %"),
            WeatherForecastingCustomIconAndChancesPercentageWidget(
                icon: Icons.hot_tub_outlined,
                percentageValue:
                    "${weatherForecastDataList[index].hourly[hourlyListIndex].chanceoffrost!} %"),
            WeatherForecastingCustomIconAndChancesPercentageWidget(
                icon: CupertinoIcons.cloud_rain,
                percentageValue:
                    "${weatherForecastDataList[index].hourly[hourlyListIndex].chanceofrain!} %"),
            WeatherForecastingCustomIconAndChancesPercentageWidget(
                icon: CupertinoIcons.sun_min,
                percentageValue:
                    "${weatherForecastDataList[index].hourly[hourlyListIndex].chanceofsunshine!} %"),
            WeatherForecastingCustomIconAndChancesPercentageWidget(
                icon: Icons.thunderstorm_outlined,
                percentageValue:
                    "${weatherForecastDataList[index].hourly[hourlyListIndex].chanceofthunder!} %"),
            WeatherForecastingCustomIconAndChancesPercentageWidget(
                icon: CupertinoIcons.cloud,
                percentageValue:
                    "${weatherForecastDataList[index].hourly[hourlyListIndex].cloudcover!} %"),
            WeatherForecastingCustomIconAndChancesPercentageWidget(
                icon: Icons.water_drop_outlined,
                percentageValue:
                    "${weatherForecastDataList[index].hourly[hourlyListIndex].humidity!} %"),
            WeatherForecastingCustomIconAndChancesPercentageWidget(
                icon: Icons.thermostat_auto,
                percentageValue:
                    "${weatherForecastDataList[index].hourly[hourlyListIndex].tempC!} %"),
            WeatherForecastingCustomIconAndChancesPercentageWidget(
                icon: Icons.wind_power_outlined,
                percentageValue:
                    "${weatherForecastDataList[index].hourly[hourlyListIndex].windspeedKmph} Kmph"),
            WeatherForecastingCustomTextBasedWidget(
                text: "UV Index",
                value:
                    "${weatherForecastDataList[index].hourly[hourlyListIndex].uvIndex} %"),
            WeatherForecastingCustomTextBasedWidget(
                text: "Visibility",
                value:
                    "${weatherForecastDataList[index].hourly[hourlyListIndex].visibility} %"),
            WeatherForecastingCustomTextBasedWidget(
                text: "Wind Direction",
                value:
                    "${weatherForecastDataList[index].hourly[hourlyListIndex].winddir16Point}"),
          ],
        ),
      ),
    );
  }
}
