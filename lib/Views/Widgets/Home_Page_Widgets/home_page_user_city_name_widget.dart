import 'package:flutter/material.dart';

class HomePageDisplayUserCityNameTextWidget extends StatelessWidget {
  const HomePageDisplayUserCityNameTextWidget(
      {super.key, required this.userCity});
  final String userCity;

  @override
  Widget build(BuildContext context) {
    return Text(
      userCity,
      style: const TextStyle(fontSize: 20, color: Colors.white),
    );
  }
}
