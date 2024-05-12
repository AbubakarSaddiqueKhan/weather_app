import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather_app/View_Models/Blocs/AddressConversionBloc/address_conversion_bloc.dart';
import 'package:flutter_weather_app/View_Models/Blocs/TodayWeatherDataBloc/today_weather_data_bloc.dart';
import 'package:flutter_weather_app/View_Models/Blocs/UserCurrentLocationBloc/user_current_location_bloc.dart';
import 'package:flutter_weather_app/Views/Widgets/Home_Page_Widgets/home_page_current_address_conversion_widget.dart';

class HomePageUserCurrentLocationWidget extends StatelessWidget {
  const HomePageUserCurrentLocationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCurrentLocationBloc, UserCurrentLocationState>(
      builder: (context, state) {
        if (state is UserCurrentLocationInitialState) {
          return const SizedBox.shrink();
        } else if (state is UserCurrentLocationLoadingState) {
          return const Padding(
            padding: EdgeInsets.all(25),
            child: CircularProgressIndicator(
              color: Colors.deepOrange,
              strokeWidth: 5,
            ),
          );
        } else if (state is UserCurrentLocationLoadedState) {
          context
              .read<AddressConversionBloc>()
              .add(FetchConvertedAddress(position: state.currentPosition));

          (double, double) dataRecord =
              (state.currentPosition.latitude, state.currentPosition.longitude);

          context.read<TodayWeatherDataBloc>().add(
              FetchTodayWeatherDataFromCurrentOfGivenLocationEvent(
                  latLngRecordData: (dataRecord)));

          return const HomePageAddressConversionWidget();
        } else {
          print("Error in location ...............");
          return const SizedBox.shrink();
        }
      },
    );
  }
}
