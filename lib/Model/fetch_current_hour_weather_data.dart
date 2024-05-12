import 'package:flutter_weather_app/Model/weather_model.dart';

Hourly currentHourWeatherData(int hourNumber, List<Hourly> hourlyData) {
  switch (hourNumber) {
    case 0 || 1 || 2:
      return hourlyData[0];
    case 3 || 4 || 5:
      return hourlyData[1];

    case 6 || 7 || 8:
      return hourlyData[2];

    case 9 || 10 || 11:
      return hourlyData[3];

    case 12 || 13 || 14:
      return hourlyData[4];

    case 15 || 16 || 17:
      return hourlyData[5];

    case 18 || 19 || 20:
      return hourlyData[6];

    case 21 || 22 || 23:
      return hourlyData[7];

    default:
      return hourlyData[0];
  }
}

String? fetchTodayWeatherHourlyUpdateTime({required String currentTime}) {
  switch (currentTime) {
    case "0":
      return "12 AM";

    case "300":
      return "3 AM";

    case "600":
      return "6 AM";

    case "900":
      return "9 AM";

    case "1200":
      return "12 PM";

    case "1500":
      return "3 PM";

    case "1800":
      return "6 PM";

    case "2100":
      return "9 PM";

    default:
      "0";
  }
}

String? fetchCurrentWeatherImageUrl({required String weatherCondition}) {
  switch (weatherCondition) {
    case "Sunny":
      return "assets/images/sun.png";
    case "Light rain" ||
          "Patchy rain nearby" ||
          "Light rain shower" ||
          "Partly Cloudy":
      return "assets/images/rain.png";

    // case "":
    default:
      "assets/images/sun.png";
  }
}
