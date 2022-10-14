import 'package:flutter/material.dart';
import 'package:travelappui/Home/Components/build_app_bar.dart';
import 'package:travelappui/Home/fav_view.dart';
import 'package:travelappui/Home/where_to_go_info.dart';

import '../Constants/bottom_nav.dart';
import '../Constants/enums.dart';

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
          padding: const EdgeInsets.only(
            top: 20.0,
            left: 20.0,
            right: 20.0,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: const [
                BUildAppBar(),
                WhereToGoInfo(),
                FavView(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavAction(
        selectedMenu: NavAction.home,
      ),
    );
  }
}
