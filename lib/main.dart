import 'package:flutter/material.dart';
import 'package:travelappui/Constants/routes.dart';
import 'package:travelappui/Details/details.dart';
import 'package:travelappui/Home/home.dart';
import 'package:travelappui/OnBoardingScreen/on_borading_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travel Ui Kit',
      theme: ThemeData(),
      home: const OnBoradingScreen(),
      routes: {
        homePageRoute: (context) => const HomePageView(),
        detailsPageRoute: (context) => const DetailsPageView(
              location: null,
            ),
      },
    );
  }
}
