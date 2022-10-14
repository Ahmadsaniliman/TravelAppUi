import 'package:flutter/material.dart';

import '../../Constants/colors.dart';
import '../../Constants/data.dart';

class LocationDetails extends StatelessWidget {
  const LocationDetails({
    Key? key,
    required this.location,
  }) : super(key: key);

  final Places? location;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 300,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Image.asset(
            location!.image,
            fit: BoxFit.fill,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 15.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    location!.text,
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    location!.subText,
                    style: const TextStyle(
                      fontSize: 10.0,
                    ),
                  ),
                ],
              ),
              Container(
                height: 40,
                width: 90,
                decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.circular(
                    15.0,
                  ),
                ),
                child: Center(
                  child: Text(
                    location!.price,
                    style: const TextStyle(
                      color: primaryColor,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
