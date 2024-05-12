import 'package:flutter/material.dart';
import 'package:flutter_weather_app/Model/weather_model.dart';
import 'package:flutter_weather_app/Views/Widgets/Weather_Forecasting_Page_Widgets/weather_forecasting_page_all_widgets_list.dart';

class WeatherForecastData extends StatefulWidget {
  const WeatherForecastData({super.key});

  static const String pageName = "/weatherForecastPage";

  @override
  State<WeatherForecastData> createState() => _WeatherForecastDataState();
}

class _WeatherForecastDataState extends State<WeatherForecastData> {
  static late PageController _pageController;
  late List<WeatherElement> weatherForecastDataList;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    weatherForecastDataList =
        ModalRoute.of(context)!.settings.arguments as List<WeatherElement>;
  }

  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: weatherForecastDataList.length,
        controller: _pageController,
        itemBuilder: (context, index) {
          return Container(
              color: Colors.blueGrey,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    WeatherForecastingPageAllWidgetsList(
                        weatherForecastDataList: weatherForecastDataList,
                        index: index)
                  ]));
        },
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SizedBox(
          width: MediaQuery.sizeOf(context).width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: FloatingActionButton(
                  backgroundColor: Colors.blueGrey.shade100,
                  onPressed: () {
                    _pageController.previousPage(
                        duration: Duration(milliseconds: 45),
                        curve: Curves.bounceInOut);
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ),
              FloatingActionButton(
                backgroundColor: Colors.blueGrey.shade100,
                onPressed: () {
                  _pageController.nextPage(
                      duration: Duration(milliseconds: 45),
                      curve: Curves.bounceInOut);
                },
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
