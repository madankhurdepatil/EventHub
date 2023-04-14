// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pro_flutter/home_screen.dart';
import 'empty_notification.dart';
import 'events.dart';
import 'org_profile.dart';
import'notification.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int selectedItemIndex = 0;
  PageController pageController = PageController();
  List<Widget> pages = [
    HomeScreen(),
    Events(),
    NewNotification(),
    EmptyNotification(),
    OrgProfile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: pages.elementAt(selectedItemIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Explore'),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month_rounded), label: 'Events'),
          BottomNavigationBarItem(icon: Icon(Icons.add_box), label: 'add'),
          BottomNavigationBarItem(icon: Icon(Icons.location_on), label: 'Map'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: selectedItemIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.black,
        onTap: (index) {
          setState(() {
            selectedItemIndex = index;
          });
        },
        showSelectedLabels: true,
      ),
    );
  }
}
