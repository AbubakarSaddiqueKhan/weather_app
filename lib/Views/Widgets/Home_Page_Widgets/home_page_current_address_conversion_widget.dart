import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather_app/View_Models/Blocs/AddressConversionBloc/address_conversion_bloc.dart';
import 'package:flutter_weather_app/Views/Widgets/Home_Page_Widgets/home_page_today_weather_bloc_builder_widget.dart';

class HomePageAddressConversionWidget extends StatelessWidget {
  const HomePageAddressConversionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    String userCity = "";
    return BlocBuilder<AddressConversionBloc, AddressConversionState>(
      builder: (context, state) {
        if (state is AddressConversionInitialState) {
          return const SizedBox.shrink();
        } else if (state is AddressConversionLoadingState) {
          return const Padding(
              padding: EdgeInsets.all(25),
              child: CircularProgressIndicator(
                color: Colors.teal,
                strokeWidth: 5,
              ));
        } else if (state is AddressConversionLoadedState) {
          userCity = state.placemarks[0].subAdministrativeArea!;
          return HomePageTodayWeatherBlocBuilderWidget(cityName: userCity);
        } else {
          print("Errorrr Adresssssssss.... conversion");
          return const SizedBox.shrink();
        }
      },
    );
  }
}
