import 'package:flutter/material.dart';
import 'package:travelappui/Constants/colors.dart';
import 'package:travelappui/Constants/routes.dart';

class LowerPart extends StatelessWidget {
  const LowerPart({
    Key? key,
    required this.currentOne,
  }) : super(key: key);

  final int currentOne;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        padding: const EdgeInsets.all(30.0),
        height: 250,
        width: 300,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: Column(
          children: [
            const Text(
              'Easily Travel From\n Your Pocket',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                'Easily plan, manage and\n order your trip, and journey\n with Safari',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14.0),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                  3,
                  (index) => PageDot(
                    currentOne: currentOne,
                    index: index,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Container(
              width: 250,
              height: 50,
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(25.0),
              ),
              child: Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(
                      homePageRoute,
                    );
                  },
                  child: const Text(
                    'Get Started',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PageDot extends StatelessWidget {
  const PageDot({
    Key? key,
    required this.currentOne,
    required this.index,
  }) : super(key: key);
  final int currentOne;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 5.0),
      height: 8,
      width: index == currentOne ? 10 : 7,
      decoration: BoxDecoration(
        color: index == currentOne ? primaryColor : secondaryColor,
        borderRadius: BorderRadius.circular(20.0),
      ),
    );
  }
}
