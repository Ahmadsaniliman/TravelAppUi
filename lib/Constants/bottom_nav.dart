import 'package:flutter/material.dart';
import 'package:travelappui/Constants/colors.dart';
import 'package:travelappui/Constants/enums.dart';
import 'package:travelappui/Constants/routes.dart';

class BottomNavAction extends StatelessWidget {
  const BottomNavAction({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final NavAction selectedMenu;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: secondaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(
                homePageRoute,
              );
            },
            icon: Icon(
              Icons.home,
              color: selectedMenu == NavAction.home
                  ? primaryColor
                  : secondaryColor,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.person,
              color: selectedMenu == NavAction.profile
                  ? primaryColor
                  : secondaryColor,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.location_city,
              color: selectedMenu == NavAction.location
                  ? primaryColor
                  : secondaryColor,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
              color: selectedMenu == NavAction.notification
                  ? primaryColor
                  : secondaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
