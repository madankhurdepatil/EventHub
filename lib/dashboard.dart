import 'package:flutter/material.dart';
import 'package:pro_flutter/event_details.dart';
import 'package:pro_flutter/home_screen.dart';
import 'package:pro_flutter/sign_up.dart';

import 'events.dart';

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
    SignUp(),
    EventDetails(),
    EventDetails(),
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
