import 'package:flutter/material.dart';
import 'package:travelappui/OnBoardingScreen/Components/lower_part.dart';
import 'package:travelappui/OnBoardingScreen/upper_part.dart';

class OnBoradingScreen extends StatefulWidget {
  const OnBoradingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoradingScreen> createState() => _OnBoradingScreenState();
}

class _OnBoradingScreenState extends State<OnBoradingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 25.0,
            horizontal: 20.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              UpperPart(),
              SizedBox(height: 20.0),
              LowerPart(),
            ],
          ),
        ),
      ),
    );
  }
}
