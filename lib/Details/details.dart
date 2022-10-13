import 'package:flutter/material.dart';
import 'package:travelappui/Constants/data.dart';
import 'package:travelappui/Details/Components/details_build_app_bar.dart';

class DetailsPageView extends StatelessWidget {
  const DetailsPageView({
    Key? key,
    required this.location,
  }) : super(key: key);

  final Places? location;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 15.0,
            horizontal: 20.0,
          ),
          child: Column(
            children: [
              const BuildDetailsAppBar(),
              Column(
                children: [
                  Image.asset(
                    location!.image,
                    height: 300,
                    fit: BoxFit.fill,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(location!.text),
                          Text(location!.subText),
                        ],
                      ),
                      Text(location!.price),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
