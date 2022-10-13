import 'package:flutter/material.dart';

import '../../Constants/colors.dart';
import '../../Constants/routes.dart';

class BuildDetailsAppBar extends StatelessWidget {
  const BuildDetailsAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 20.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 40.0,
            height: 40.0,
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(25.0),
            ),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(homePageRoute);
              },
              icon: const Icon(Icons.arrow_back),
            ),
          ),
          const Text(
            'Details',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Container(
            width: 40.0,
            height: 40.0,
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(25.0),
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.linear_scale),
            ),
          ),
        ],
      ),
    );
  }
}
