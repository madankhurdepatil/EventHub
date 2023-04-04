// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../white_search_bar.dart';

class AppBarWidget extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const AppBarWidget({Key? key, required this.scaffoldKey}) : super(key: key);

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  List text = [
    {
      "title": "Sport",
      "icon": Icons.sports_baseball,
      "color": Color(0xFFF0635A)
    },
    {
      "title": "Music",
      "icon": Icons.music_note_rounded,
      "color": Color(0xFFF59762)
    },
    {
      "title": "Food",
      "icon": Icons.restaurant_menu,
      "color": Color(0xFF29D697)
    },
    {
      "title": "Sport",
      "icon": Icons.sports_baseball,
      "color": Color(0xFF46CDFB)
    },
    {
      "title": "Sport",
      "icon": Icons.sports_baseball,
      "color": Color(0xFFF0635A)
    },
    {
      "title": "Music",
      "icon": Icons.music_note_rounded,
      "color": Color(0xFFF59762)
    },
    {
      "title": "Food",
      "icon": Icons.restaurant_menu,
      "color": Color(0xFF29D697)
    },
    {
      "title": "Sport",
      "icon": Icons.sports_baseball,
      "color": Color(0xFF46CDFB)
    },
    {
      "title": "Sport",
      "icon": Icons.sports_baseball,
      "color": Color(0xFFF0635A)
    },
    {
      "title": "Music",
      "icon": Icons.music_note_rounded,
      "color": Color(0xFFF59762)
    },
    {
      "title": "Food",
      "icon": Icons.restaurant_menu,
      "color": Color(0xFF29D697)
    },
    {
      "title": "Sport",
      "icon": Icons.sports_baseball,
      "color": Color(0xFF46CDFB)
    }
  ];
  var items = [
    'New Yourk, USA',
    'Surat',
    'Aurangabad',
    'Pune',
    'Hyderabad',
    'Bangalore',
    'Nashik',
    'Kolkata',
    'Agra',
    'Mumbai',
    'Delhi',
    'Chennai',
    'Dubai',
    'Vasai',
  ];
  bool status1 = false;
  String dropdownvalue = 'New Yourk, USA';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Color(0xFF4A43EC),
                borderRadius: BorderRadius.circular(32)),
            height: 180,
            child: Padding(
              padding: EdgeInsets.only(top: 25),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.menu,
                            size: 30,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            widget.scaffoldKey.currentState!.openDrawer();
                          },
                        ),
                        SizedBox(
                          width: 35,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              DropdownButton(
                                iconEnabledColor: Colors.white,
                                hint: Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Current Location",
                                    style: TextStyle(
                                        fontSize: 14, color: Color(0xFFA29EF0)),
                                  ),
                                ),
                                items: items.map((String items) {
                                  return DropdownMenuItem(
                                    value: items,
                                    child: Text(items),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownvalue = newValue!;
                                  });
                                },
                              ),
                              Text(
                                dropdownvalue.toString(),
                                style: TextStyle(
                                    fontSize: 14, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 35,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: CircleAvatar(
                              radius: 17,
                              backgroundColor: Color(0xFF5D56F3),
                              child: Icon(Icons.add_alert_sharp,
                                  size: 20, color: Colors.white)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 20),
                      IconButton(
                          onPressed: () => Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => WhiteSearchBar())),
                          icon: Icon(Icons.search_rounded),
                          iconSize: 25,
                          color: Colors.white),
                      SizedBox(width: 10),
                      Text("|",
                          style: TextStyle(
                              fontSize: 16, color: Color(0xFFA29EF0))),
                      SizedBox(width: 5),
                      Text(
                        "Search..",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFFA29EF0),
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
                        activeColor: Color(0xFF5D56F3),
                        inactiveColor: Color(0xFF5D56F3),
                        value: status1,
                        onToggle: (val) {
                          setState(() {
                            status1 = val;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 55,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: text.length,
                physics: AlwaysScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(32),
                      child: Container(
                        width: 100,
                        height: 40,
                        color: text[index]["color"],
                        child: Row(
                          children: [
                            SizedBox(
                              width: 5,
                            ),
                            Icon(text[index]["icon"], color: Colors.white),
                            SizedBox(width: 5),
                            Text(
                              text[index]["title"],
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
