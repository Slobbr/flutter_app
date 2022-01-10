import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Utils {

  dynamic context;

  Utils({required this.context});

  double percentageScreenHeight(percentage) {

    double screenHeight = MediaQuery.of(context).size.height;

    double returnDouble = screenHeight / 100 * percentage;

    return returnDouble;
  }

  Future<SharedPreferences> getPrefs() async {
    return await SharedPreferences.getInstance();
  }

  bool isDarkModeEnabled() {
    if (MediaQuery.of(context).platformBrightness == Brightness.dark){
      return true;
  }else {
      return false;
  }
}

}