import 'package:flutter/material.dart';
import 'package:travelappui/Constants/colors.dart';

class WhereToGoInfo extends StatefulWidget {
  const WhereToGoInfo({
    Key? key,
  }) : super(key: key);

  @override
  State<WhereToGoInfo> createState() => _WhereToGoInfoState();
}

class _WhereToGoInfoState extends State<WhereToGoInfo> {
  @override
  Widget build(BuildContext context) {
    const currentLocation = 3;
    final List<String> categories = [
      'Camping',
      'Mountain',
      'Climbing',
      'Swimming',
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(
            vertical: 20.0,
          ),
          child: Text(
            'Where would\n like you to go?',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            bottom: 25.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 235,
                height: 50,
                decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.0),
                    hintText: 'Search Location',
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
              Container(
                height: 50,
                width: 60,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: const Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 50,
          //   width: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                setState(() {
                  currentLocation == index;
                });
              },
              child: Container(
                margin: const EdgeInsets.only(right: 15.0),
                padding: const EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(),
                  color: currentLocation == index ? primaryColor : Colors.white,
                ),
                child: Text(
                  categories[index],
                  style: TextStyle(
                    color: currentLocation == index
                        ? Colors.white
                        : Colors.black87,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
