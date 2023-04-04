// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class WhiteSearchBar extends StatefulWidget {
  const WhiteSearchBar({Key? key}) : super(key: key);

  @override
  State<WhiteSearchBar> createState() => _WhiteSearchBarState();
}

class _WhiteSearchBarState extends State<WhiteSearchBar> {
  bool status1 = false;
  List listData = [
    {
      "image": "assets/list1.png",
      "time": "1st  May- Sat -2:00 PM",
      "title": "A virtual evening of",
      "subtitle": " smooth jazz"
    },
    {
      "image": "assets/list2.png",
      "time": "1st  May- Sat -2:00 PM",
      "title": "Jo malone london’s  ",
      "subtitle": "mother’s day"
    },
    {
      "image": "assets/list3.png",
      "time": "1st  May- Sat -2:00 PM",
      "title": "Women's leadership ",
      "subtitle": "conference"
    },
    {
      "image": "assets/list4.png",
      "time": "1st  May- Sat -2:00 PM",
      "title": "International kids safe ",
      "subtitle": "parents night out"
    },
    {
      "image": "assets/list5.png",
      "time": "1st  May- Sat -2:00 PM",
      "title": "International gala ",
      "subtitle": "music festival"
    },
    {
      "image": "assets/list5.png",
      "time": "1st  May- Sat -2:00 PM",
      "title": "A virtual evening of",
      "subtitle": " smooth jazz"
    },
    {
      "image": "assets/list5.png",
      "time": "1st  May- Sat -2:00 PM",
      "title": "A virtual evening of",
      "subtitle": " smooth jazz"
    },
    {
      "image": "assets/list5.png",
      "time": "1st  May- Sat -2:00 PM",
      "title": "A virtual evening of",
      "subtitle": " smooth jazz"
    }
  ];

  @override
  Widget build(BuildContext context) {
    swButton(val) {
      setState(() {
        status1 = val;
      });
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          "Search",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 20),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search_rounded),
                    iconSize: 30,
                    color: Color(0xFF5669FF)),
                Text("|",
                    style: TextStyle(fontSize: 16, color: Color(0xFF7974E7))),
                SizedBox(width: 5),
                Text(
                  "Search..",
                  style: TextStyle(
                    fontSize: 18,
                    // color: Color(0xFFECEBFC),
                  ),
                ),
                SizedBox(width: 140),
                FlutterSwitch(
                  toggleColor: Color(0xFFA29EF0),
                  inactiveTextColor: Colors.white,
                  padding: 2.0,
                  toggleSize: 30,
                  height: 30,
                  width: 60,
                  activeColor: Color(0xFF5669FF),
                  inactiveColor: Color(0xFF5669FF),
                  value: status1,
                  onToggle: swButton,
                ),
              ],
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: ListView.builder(
                      physics: AlwaysScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemCount: listData.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.all(8),
                          child: Container(
                            height: 120,
                            width: 320,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Colors.grey.shade50,
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(16),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child:
                                        Image.asset(listData[index]["image"]),
                                  ),
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(16),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            listData[index]["time"],
                                            style: TextStyle(
                                              color: Color(0xFF5669FF),
                                            ),
                                          ),
                                          Text(
                                            listData[index]["title"],
                                            style: TextStyle(fontSize: 18),
                                          ),
                                          Text(
                                            listData[index]["subtitle"],
                                            style: TextStyle(fontSize: 18),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
