// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pro_flutter/see_all_events.dart';

class Events extends StatefulWidget {
  const Events({Key? key}) : super(key: key);

  @override
  State<Events> createState() => _EventsState();
}

class _EventsState extends State<Events> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          "Events",
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Container(
              height: 50,
              width: 310,
              decoration: BoxDecoration(
                color: Color(0xFF9B9B9B),
                borderRadius: BorderRadius.circular(32),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 5,
                    left: -2,
                    right: 130,
                    child: Column(
                      children: [
                        Container(
                          height: 40,
                          width: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 32, top: 8),
                            child: Text(
                              "UPCOMING",
                              style: TextStyle(
                                  fontSize: 16, color: Color(0xFF5669FF)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 15,
                    top: 15,
                    child: Text(
                      "PAST EVENTS",
                      style: TextStyle(
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 80,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/callogo.png"),
              SizedBox(height: 20),
              Text("No Upcoming Event", style: TextStyle(fontSize: 30)),
              SizedBox(height: 20),
              Text(
                "Lorem ipsum dolor sit amet,consectetur ",
                style: TextStyle(fontSize: 20, color: Color(0xFF747688)),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          SizedBox(height: 80),
          Padding(
            padding: EdgeInsets.only(left: 50, right: 50),
            child: ElevatedButton(
              onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => SeeAllEvents())),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                backgroundColor: Color(0xFF5669FF),
                padding: EdgeInsets.symmetric(vertical: 16),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "EXPLORE EVENTS",
                      style: TextStyle(fontSize: 16.0, color: Colors.white),
                    ),
                    SizedBox(width: 30),
                    CircleAvatar(
                      backgroundColor: Color(0xFF3D56F0),
                      radius: 12,
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: 16.0,
                      ),
                    ),
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
