import 'package:flutter/material.dart';
import 'package:flutternew/emergency_Asssistance_assignment/second_homepage.dart';
import 'package:motion_tab_bar_v2/motion-tab-bar.dart';
import 'package:motion_tab_bar_v2/motion-tab-controller.dart';

import 'contactbook1.dart';


class HomePageEUI extends StatefulWidget {
  const HomePageEUI({super.key});

  @override
  State<HomePageEUI> createState() => _HomePageEUIState();
}

class _HomePageEUIState extends State<HomePageEUI> with TickerProviderStateMixin {

  MotionTabBarController? _motionTabBarController;

  @override
  void initState() {
    super.initState();
    _motionTabBarController = MotionTabBarController(
      initialIndex: 2,
      length: 5,
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _motionTabBarController!.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MotionTabBar(
        controller: _motionTabBarController,
        initialSelectedTab: "Profile",
        labels: const ["Dashboard", "Home", "Profile", "Settings","Stars"],
        icons: const [Icons.home_filled, Icons.event_note_sharp, Icons.star_border_outlined, Icons.folder_copy,Icons.person_2_outlined],

        tabSize: 50,
        tabBarHeight: 55,
        textStyle: const TextStyle(
          color: Colors.white,
        ),
        tabIconColor: Colors.grey,
        tabIconSize: 28.0,
        tabIconSelectedSize: 26.0,
        tabSelectedColor: Colors.red,
        tabIconSelectedColor: Colors.white,
        tabBarColor: Colors.white,
        onTabItemSelected: (int value) {
          setState(() {
            _motionTabBarController!.index = value;
          });
        },
      ),
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _motionTabBarController,
        children: <Widget>[
          const Center(
            child: Text("Home"),
          ),
          const Center(
            child: Text("Dashboard"),
          ),
          // const EmergencyHome(),
          const EmergencyHome2(),
          const Center(
            child: Text("Files"),
          ),
          contactbook(),
        ],
      ),

    );
  }
}








