import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather_app/View_Models/Blocs/FetchDatefromDatePickerBloc/fetch_date_from_date_picker_bloc.dart';
import 'package:flutter_weather_app/View_Models/Navigation/on_generate_route_navigation.dart';
import 'package:flutter_weather_app/Views/Screens/home_page_design.dart';

// http://api.weatherapi.com/v1/current.json?key=f39a984e46cc413cb6244908241704&q=29.396537398736804,%2071.74772454863341

// Used packages :

///
/// Http : Used to intereact with the api's .
/// Bloc : The global state management used .
/// Geo locator : Used to get the user location .
/// Geo Coding : Used to convert the lattitude and ongitude values in human readable adress or vice versa .
///

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      onGenerateRoute: onGenerateRoute,
      initialRoute: MyHomePage.pageName,
    );
  }
}

class HistoricalDataPage extends StatefulWidget {
  const HistoricalDataPage({super.key});

  @override
  State<HistoricalDataPage> createState() => _HistoricalDataPageState();
}

class _HistoricalDataPageState extends State<HistoricalDataPage> {
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    void fetchData({required DateTime value}) {
      context
          .read<FetchDateFromDatePickerBloc>()
          .add(FetchCurrentDateFromDatePickerEvent(currentDateTime: value));
    }
  }

  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        color: Colors.blueGrey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                  padding: const EdgeInsets.only(right: 10, top: 10),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.date_range_outlined,
                          color: Colors.white,
                        )),
                  )),

              // BlocBuilder<FetchDateFromDatePickerBloc,
              //     FetchDateFromDatePickerState>(
              //   builder: (context, state) {
              //     if (state is FetchDateFromDatePickerInitialState) {
              //       return SizedBox.shrink();
              //     } else if (state is FetchDateFromDatePickerLoadingState) {
              //       return CircularProgressIndicator();
              //     } else if (state is FetchDateFromDatePickerLoadedState) {
              //       return Text(
              //           "${state.date} , ${state.month} , ${state.year}");
              //     } else {
              //       return SizedBox.shrink();
              //     }
              //   },
              // )
            ],
          ),
        ),
      ),
    );
  }
}

/**
 * 
 * 
 * BlocProvider(
                                create: (context) =>
                                    FetchDateFromDatePickerBloc(),
                                child: Theme(
                                    data: ThemeData(
                                        cupertinoOverrideTheme:
                                            CupertinoThemeData(
                                      textTheme: CupertinoTextThemeData(
                                        dateTimePickerTextStyle: TextStyle(
                                          fontSize: 24,
                                          color: Colors.white,
                                        ), // Change text color
                                      ),
                                    )),
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                height: height * 0.16,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 10),
                                                child: IconButton(
                                                    onPressed: () {
                                                      log("Clickedddddddddddddd");
                                                      Navigator.pop(context);
                                                    },
                                                    icon: Icon(
                                                      Icons.close_rounded,
                                                      color: Colors.white,
                                                    )),
                                              )
                                            ],
                                          ),
                                        ),
                                        CupertinoDatePicker(
                                          dateOrder: DatePickerDateOrder.dmy,
                                          initialDateTime: DateTime.now(),
                                          onDateTimeChanged: (value) {
                                            fetchData(value: value);
                                          },
                                          mode: CupertinoDatePickerMode.date,
                                        )
                                      ],
                                    )),
                              );


 */
