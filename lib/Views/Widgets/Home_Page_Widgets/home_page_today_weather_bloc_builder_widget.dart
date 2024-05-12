import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather_app/Model/fetch_current_hour_weather_data.dart';
import 'package:flutter_weather_app/Model/weather_model.dart';
import 'package:flutter_weather_app/View_Models/Blocs/TodayWeatherDataBloc/today_weather_data_bloc.dart';
import 'package:flutter_weather_app/Views/Widgets/Home_Page_Widgets/home_page_all_widgets.dart';

class HomePageTodayWeatherBlocBuilderWidget extends StatelessWidget {
  const HomePageTodayWeatherBlocBuilderWidget(
      {super.key, required this.cityName});
  final String cityName;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TodayWeatherDataBloc, TodayWeatherDataState>(
      builder: (context, state) {
        if (state is TodayWeatherDataInitialState) {
          return const SizedBox.shrink();
        } else if (state is TodayWeatherDataLoadingState) {
          return const Padding(
            padding: EdgeInsets.all(25.0),
            child: CircularProgressIndicator(
              color: Colors.lime,
              strokeWidth: 5,
            ),
          );
        } else if (state is TodayWeatherDataLoadedState) {
          int currentHour = DateTime.now().hour;
          Hourly currentHourData = currentHourWeatherData(
              currentHour, state.todayWeatherData.data.weather[0].hourly);
          return SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: HomePageAllWidgets(
              hourly: state.todayWeatherData.data.weather[0].hourly,
              weather: state.todayWeatherData.data.weather,
              currentTemperature: currentHourData.tempC!,
              maxTemperature: state.todayWeatherData.data.weather[0].maxtempC,
              minTemperature: state.todayWeatherData.data.weather[0].mintempC,
              weatherConditionValue: currentHourData.weatherDesc![0].value,
              windSpeed: currentHourData.windspeedKmph!,
              humidity: currentHourData.humidity!,
              uvIndex: currentHourData.uvIndex!,
              visibility: currentHourData.visibility!,
              userCityName: cityName,
            ),
          );
        } else {
          if (kDebugMode) {
            print("Error ..............");
          }
          return const SizedBox.shrink();
        }
      },
    );
  }
}
