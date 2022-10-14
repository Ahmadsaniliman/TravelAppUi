import 'package:flutter/material.dart';

class DecText extends StatelessWidget {
  const DecText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 20.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Description',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            'The most beautiful beach in lombac and the closet to kuta.it is onlt 15minutes ride by scooter or paved road from kuta',
          ),
        ],
      ),
    );
  }
}
