import 'package:flutter/material.dart';
import 'package:travelappui/Constants/colors.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20.0,
            horizontal: 15.0,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        ),
                        const SizedBox(width: 7.0),
                        Column(
                          children: const [
                            Text(
                              'Canada',
                              style: TextStyle(
                                fontSize: 7,
                              ),
                            ),
                            Text(
                              'Ahmad Liman',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: primaryColor,
                      ),
                      child: const Icon(Icons.notifications),
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Text(
                      'Where would\n like you to go?',
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: const [],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
