import 'package:flutter/material.dart';

void main() {
  runApp(const SlobbrApp());
}

class SlobbrApp extends StatelessWidget {
  const SlobbrApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar());
  }
}
