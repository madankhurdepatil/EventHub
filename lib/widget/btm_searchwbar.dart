// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pro_flutter/widget/selection.dart';

import 'multiselect.dart';

class BottomSearch extends StatefulWidget {
  const BottomSearch({Key? key}) : super(key: key);

  @override
  State<BottomSearch> createState() => _BottomSearchState();
}

class _BottomSearchState extends State<BottomSearch> {
  List items = [
    {"icon": Icons.sports_basketball, "text": "Sport"},
    {"icon": Icons.music_note_rounded, "text": "Music"},
    {"icon": Icons.cookie, "text": "Art"},
    {"icon": Icons.restaurant_menu, "text": "Food"},
    {"icon": Icons.restaurant, "text": "Food"}
  ];
  RangeValues range = RangeValues(40, 80);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16, right: 16),
      child: SizedBox(
        height: 680,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8),
              child: Container(
                height: 5,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(16)),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      "Filter",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100,
              child: ListView.builder(
                physics: AlwaysScrollableScrollPhysics(),
                itemCount: items.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      MultiSelection(
                          cIcon: Icon(items[index]["icon"], size: 30)),
                      Text(items[index]["text"]),
                    ],
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(14),
              child: Row(
                children: [
                  Text("Time & Date",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Selction(text: 'Today'),
                  Selction(text: 'Tomorrow'),
                  Selction(text: 'This Week'),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 45,
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                      border: Border.all(width: 1.0, color: Colors.black12),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10, top: 2),
                          child: Icon(
                            Icons.calendar_month_rounded,
                            color: Color(0xFF5669FF),
                            size: 25,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Choose from calender ",
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(width: 10),
                        Image.asset("assets/forwordarrow.png"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 14),
              child: Row(
                children: [
                  Text(
                    "Location",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 16),
              child: Container(
                height: 60,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white,
                  border: Border.all(
                    width: 0.5,
                    color: Colors.black12,
                  ),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 8, top: 3, bottom: 3),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.grey.shade300,
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              right: 5,
                              bottom: 5,
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: Colors.white,
                                ),
                                child: Icon(
                                  Icons.location_on_outlined,
                                  color: Color(0xFF5669FF),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Text(
                      "New Yourk, USA ",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(width: 60),
                    Image.asset("assets/forwordarrow.png"),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Select price range ",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  // Text(
                  //     "\$" + range.toString(),
                  //     style: TextStyle(
                  //         color: Color(0xFF5669FF))),
                  Text(
                    "\$20-\$120",
                    style: TextStyle(color: Color(0xFF5669FF), fontSize: 16),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            RangeSlider(
              activeColor: Color(0xFF5669FF),
              values: range,
              max: 150,
              divisions: 5,
              labels: RangeLabels(
                range.start.round().toString(),
                range.end.round().toString(),
              ),
              onChanged: (RangeValues values) {
                setState(() {
                  range = values;
                });
              },
            ),
            SizedBox(height: 25),
            Padding(
              padding:  EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    width: 130,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                      border: Border.all(color: Colors.black12, width: 1.0),
                    ),
                    child: Center(
                      child: Text(
                        "RESET",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 170,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Color(0xFF5669FF),
                    ),
                    child: Center(
                      child: Text(
                        "APPLY",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
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
