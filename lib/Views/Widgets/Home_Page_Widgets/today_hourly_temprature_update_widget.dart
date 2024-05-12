import 'package:flutter/material.dart';
import 'package:flutter_weather_app/Model/fetch_current_hour_weather_data.dart';
import 'package:flutter_weather_app/Model/weather_model.dart';

class TodayHourlyTemperatureUpdateWidget extends StatelessWidget {
  const TodayHourlyTemperatureUpdateWidget({super.key, required this.hourly});
  final List<Hourly> hourly;

  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      child: SizedBox(
        height: 150,
        width: width,
        child: ListView.builder(
          itemCount: hourly.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 2, right: 2),
              child: Container(
                width: 75,
                height: 150,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.15),
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      color: Colors.white,
                      width: 1,
                    )),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      fetchTodayWeatherHourlyUpdateTime(
                          currentTime: hourly[index].time!)!,
                      style: const TextStyle(color: Colors.white),
                    ),
                    const Icon(
                      Icons.sunny,
                      color: Colors.white,
                    ),
                    Text(
                      "${hourly[index].tempC} °",
                      style: const TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
