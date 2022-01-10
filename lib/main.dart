import 'package:flutter/material.dart';
import 'package:slobbr_app/utils/const.dart';
import 'package:slobbr_app/screens/main_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:animations/animations.dart';

void main() {
  runApp(const SlobbrApp());
}

class SlobbrApp extends StatefulWidget {
  const SlobbrApp({Key? key}) : super(key: key);

  @override
  _SlobbrAppState createState() => _SlobbrAppState();
}

class _SlobbrAppState extends State<SlobbrApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Constants.appName,
      theme: Constants.lightTheme,
      darkTheme: Constants.darkTheme,
      home: MainScreen(),
    );
  }
}

