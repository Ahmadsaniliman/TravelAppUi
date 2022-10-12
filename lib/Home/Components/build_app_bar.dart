import 'package:flutter/material.dart';
import 'package:travelappui/Constants/colors.dart';

class BUildAppBar extends StatelessWidget {
  const BUildAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: primaryColor,
              ),
            ),
            const SizedBox(width: 7.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
          child: const Icon(
            Icons.notifications,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
