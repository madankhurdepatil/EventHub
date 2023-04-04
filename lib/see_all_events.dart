// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SeeAllEvents extends StatefulWidget {
  const SeeAllEvents({Key? key}) : super(key: key);

  @override
  State<SeeAllEvents> createState() => _SeeAllEventsState();
}

class _SeeAllEventsState extends State<SeeAllEvents> {
  @override
  Widget build(BuildContext context) {
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
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Events",
          style: TextStyle(fontSize: 20),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
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
    );
  }
}
