import 'package:flutter/material.dart';
import 'package:travelappui/Constants/bom_nav.dart';
import 'package:travelappui/Constants/data.dart';
import 'package:travelappui/Details/Components/des_text.dart';
import 'package:travelappui/Details/Components/details_build_app_bar.dart';
import 'package:travelappui/Details/Components/location_details.dart';

import '../Constants/colors.dart';

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
              LocationDetails(location: location),
              const DecText(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNav(location: location),
    );
  }
}
