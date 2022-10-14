import 'package:flutter/material.dart';
import 'package:travelappui/OnBoardingScreen/Components/lower_part.dart';

class OnBoradingScreen extends StatefulWidget {
  const OnBoradingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoradingScreen> createState() => _OnBoradingScreenState();
}

class _OnBoradingScreenState extends State<OnBoradingScreen> {
  int currentOne = 0;
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
            children: [
              Expanded(
                flex: 3,
                child: PageView.builder(
                  itemCount: 3,
                  onPageChanged: (value) {
                    setState(() {
                      currentOne = value;
                    });
                  },
                  itemBuilder: (context, index) => Image.asset(
                    'assets/images/OnBoardImage.png',
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              LowerPart(currentOne: currentOne),
            ],
          ),
        ),
      ),
    );
  }
}
