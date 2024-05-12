import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather_app/View_Models/Blocs/UserCurrentLocationBloc/user_current_location_bloc.dart';
import 'package:flutter_weather_app/Views/Widgets/Home_Page_Widgets/home_page_user_current_location_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  static const String pageName = "/homePage";

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

String userCity = "";

class _MyHomePageState extends State<MyHomePage> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    context
        .read<UserCurrentLocationBloc>()
        .add(FetchUserCurrentLocationEvent(context: context));
  }

  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);
    return Scaffold(
        body: Container(
            width: width,
            height: height,
            color: Colors.blueGrey,
            child: const HomePageUserCurrentLocationWidget()));
  }
}
