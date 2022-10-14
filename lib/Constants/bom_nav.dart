import 'package:flutter/material.dart';
import 'package:travelappui/Constants/colors.dart';
import 'package:travelappui/Constants/data.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({
    Key? key,
    required this.location,
  }) : super(key: key);

  final Places? location;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 20.0,
      ),
      height: 80,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: secondColor,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(10.0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Total Price'),
              const SizedBox(height: 7.0),
              Row(
                children: [
                  Text(
                    location!.price,
                    style: const TextStyle(
                      color: primaryColor,
                      fontSize: 25.0,
                    ),
                  ),
                  const Text(
                    '/Person',
                    style: TextStyle(fontSize: 10.0),
                  ),
                ],
              ),
            ],
          ),
          Container(
            height: 50,
            width: 100,
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(
                15.0,
              ),
            ),
            child: const Center(
              child: Text(
                'Order Now',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
