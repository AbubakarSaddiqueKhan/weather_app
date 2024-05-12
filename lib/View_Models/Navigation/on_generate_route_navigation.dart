import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather_app/View_Models/Blocs/AddressConversionBloc/address_conversion_bloc.dart';
import 'package:flutter_weather_app/View_Models/Blocs/TodayWeatherDataBloc/today_weather_data_bloc.dart';
import 'package:flutter_weather_app/View_Models/Blocs/UserCurrentLocationBloc/user_current_location_bloc.dart';
import 'package:flutter_weather_app/Views/Screens/home_page_design.dart';
import 'package:flutter_weather_app/Views/Screens/weather_forecasting_page_design.dart';

Route<dynamic>? onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case MyHomePage.pageName:
      return SlideFromCenterLeftTransitionPageRoute(
          page: MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => TodayWeatherDataBloc(),
                child: Container(),
              ),
              BlocProvider(
                create: (context) => UserCurrentLocationBloc(),
              ),
              BlocProvider(
                create: (context) => AddressConversionBloc(),
              ),
            ],
            child: const MyHomePage(),
          ),
          settings: settings);

    case WeatherForecastData.pageName:
      return SlideFromCenterLeftTransitionPageRoute(
          page: const WeatherForecastData(), settings: settings);

    default:
      return null;
  }
}

class SlideFromCenterLeftTransitionPageRoute extends PageRouteBuilder {
  SlideFromCenterLeftTransitionPageRoute(
      {required this.page, RouteSettings? settings})
      : super(
          transitionDuration: const Duration(milliseconds: 400),
          reverseTransitionDuration: const Duration(milliseconds: 400),
          settings: settings,
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              SlideTransition(
            position: Tween<Offset>(
                    begin: const Offset(1, 0), end: const Offset(0, 0))
                .animate(animation),
            child: page,
          ),
        );
  final Widget page;
}
