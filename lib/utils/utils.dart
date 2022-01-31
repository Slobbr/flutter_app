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

  bool isDarkModeEnabled() {
    if (MediaQuery.of(context).platformBrightness == Brightness.dark){
      return true;
  }else {
      return false;
  }
}
}

class SlobbrPreferences {

  SlobbrPreferences();

  Future<SharedPreferences> getPrefs() async {
    return await SharedPreferences.getInstance();
  }

  void setPrefString(String key, String value, SharedPreferences prefs) async {
    await prefs.setString(key, value);
  }

  void setPrefInt(String key, int value, SharedPreferences prefs) async {
    await prefs.setInt(key, value);
  }

  void setPrefBool(String key, bool value, SharedPreferences prefs) async {
    await prefs.setBool(key, value);
  }

  void setPrefDouble(String key, double value, SharedPreferences prefs) async {
    await prefs.setDouble(key, value);
  }

  void setPrefStringList(String key, List<String> list, SharedPreferences prefs) async {
    await prefs.setStringList(key, list);
  }

  getPref(String key, Future<SharedPreferences> prefs) async {
    return await prefs.get(key);
  }
}