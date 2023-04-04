// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
class EventDetails extends StatefulWidget {
  const EventDetails({Key? key}) : super(key: key);

  @override
  State<EventDetails> createState() => _EventDetailsState();
}

class _EventDetailsState extends State<EventDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset("assets/event.png"),
              Padding(
                padding: EdgeInsets.only(top: 50, left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset("assets/arrowleft.png"),
                    SizedBox(
                      width: 25,
                    ),
                    Text("Event Details",
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                    SizedBox(width: 105),
                    Container(
                      padding: EdgeInsets.all(8),
                      child: Icon(Icons.bookmark, color: Colors.white),
                      decoration: BoxDecoration(
                          color: Color(0xFF979797),
                          borderRadius: BorderRadius.circular(16)),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 30,
                bottom: -5,
                child: Container(
                  height: 60,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 120,
                        height: 60,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                child: CircleAvatar(
                                  radius: 20,
                                  backgroundImage:
                                      AssetImage("assets/ovel1.png"),
                                ),
                              ),
                              Positioned(
                                left: 30,
                                child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage("assets/ovel2.png"),
                                  radius: 20,
                                ),
                              ),
                              Positioned(
                                left: 60,
                                child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage("assets/ovel3.png"),
                                  radius: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '+20 Going',
                            style: TextStyle(
                                fontSize: 16, color: Colors.blueAccent),
                          ),
                        ],
                      ),
                      SizedBox(width: 10),
                      Container(
                        height: 35,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Color(0xFF5669FF),
                            borderRadius: BorderRadius.circular(8)),
                        child: Padding(
                          padding: EdgeInsets.only(top: 7),
                          child: Text("INVITE",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                              textAlign: TextAlign.center),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Text(
                  "International Band Music Concert",
                  style: TextStyle(fontSize: 35, color: Color(0xFF120D26)),
                  textAlign: TextAlign.start,
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.blueGrey.shade50),
                      child: Image.asset("assets/calender.png"),
                      //  child: Icon(Icons.calendar_month_outlined,color:Color(0xFF5669FF),size: 30),
                    ),
                    SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "14 December,2021",
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          "Tuesday,4:00PM-9:00PM",
                          style:
                              TextStyle(color: Color(0xFF747688), fontSize: 12),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.blueGrey.shade50),
                      child: Image.asset("assets/location.png"),
                      //  child: Icon(Icons.calendar_month_outlined,color:Color(0xFF5669FF),size: 30),
                    ),
                    SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Gala Convention Center",
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          "36,Guild Street London,UK",
                          style:
                              TextStyle(color: Color(0xFF747688), fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.blueGrey.shade50),
                      child:
                          Image.asset("assets/ashfak.png", fit: BoxFit.cover),
                      //  child: Icon(Icons.calendar_month_outlined,color:Color(0xFF5669FF),size: 30),
                    ),
                    SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Akash Sayem",
                          style: TextStyle(
                              fontSize: 16, fontFamily: "AirbnbCereal_W_Xbd"),
                        ),
                        Text(
                          "Organizer",
                          style:
                              TextStyle(color: Color(0xFF747688), fontSize: 12),
                        ),
                      ],
                    ),
                    SizedBox(width: 80),
                    Container(
                      height: 40,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey.shade50,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          "Follow",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF5669FF),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "About Event",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Text(
                  "Enjoy your favorite dish and a lovely your  friends and family and have a great time",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 40, right: 40),
            child: ElevatedButton(
              onPressed: () {},
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
                      "BUY TICKET \$120",
                      style: TextStyle(fontSize: 16.0, color: Colors.white),
                    ),
                    SizedBox(width: 40),
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
