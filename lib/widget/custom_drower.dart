// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../my_profile.dart';

class CustomDrower extends StatefulWidget {
  const CustomDrower({Key? key}) : super(key: key);

  @override
  State<CustomDrower> createState() => _CustomDrowerState();
}

class _CustomDrowerState extends State<CustomDrower> {
  List items = [
    {"title": "My Profile", "icon": Icons.person, "color": Color(0xFF767676)},
    {"title": "Message", "icon": Icons.message, "color": Color(0xFF767676)},
    {
      "title": "Calendar",
      "icon": Icons.calendar_month_rounded,
      "color": Color(0xFF767676)
    },
    {"title": "Bookmark", "icon": Icons.bookmark, "color": Color(0xFF767676)},
    {"title": "Contact Us", "icon": Icons.mail, "color": Color(0xFF767676)},
    {"title": "Setting", "icon": Icons.settings, "color": Color(0xFF767676)},
    {"title": "Helps & FAQs", "icon": Icons.help, "color": Color(0xFF767676)},
    {
      "title": "Sign Out",
      "icon": Icons.signpost_outlined,
      "color": Color(0xFF767676)
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 60, left: 20),
              child: CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 50,
                child: GestureDetector(
                  onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => MyProfile())),
                  child: Image.asset("assets/profile.png",
                      fit: BoxFit.cover, height: 150, width: 150),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text("Ashfak Sayem", style: TextStyle(fontSize: 20)),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: SizedBox(
                height: 450,
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(12),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                items[index]["icon"],
                                color: items[index]["color"],
                              ),
                              SizedBox(width: 20),
                              Text(items[index]["title"]),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                  color: Color(0xFFd8feff),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Image.asset("assets/tajlogo.png"),
                      SizedBox(width: 10),
                      Text(
                        "Upgrade Pro",
                        style: TextStyle(color: Color(0xFF00F8FF)),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }
  }
