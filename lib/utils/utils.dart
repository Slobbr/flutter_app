import 'package:flutter/material.dart';

class Utils {

  dynamic context;

  Utils({required this.context});

  double percentageScreenHeight(percentage) {

    double screenHeight = MediaQuery.of(context).size.height;

    double returnDouble = screenHeight / 100 * percentage;

    return returnDouble;
  }

}