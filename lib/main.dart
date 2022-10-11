import 'package:flutter/material.dart';
import 'package:travelappui/OnBoardingScreen/on_borading_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travel Ui Kit',
      theme: ThemeData(),
      home: const OnBoradingScreen(),
    );
  }
}
