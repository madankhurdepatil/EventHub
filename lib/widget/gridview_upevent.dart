// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../event_details.dart';

class GridUpcoming extends StatefulWidget {
  const GridUpcoming({Key? key}) : super(key: key);

  @override
  State<GridUpcoming> createState() => _GridUpcomingState();
}

class _GridUpcomingState extends State<GridUpcoming> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SingleChildScrollView(
          padding: EdgeInsets.only(left: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildViewMore(),
              SizedBox(height: 8),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 300,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => EventDetails())),
                      child: Container(
                        margin: EdgeInsets.only(left: 8, right: 8),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16)),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Container(
                                width: 220,
                                height: 140,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                        "assets/igflower.png",
                                      ),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                padding: EdgeInsets.all(8),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      child: Container(
                                        padding: EdgeInsets.all(8),
                                        child: Column(
                                          children: [
                                            Text('10',
                                                style: TextStyle(
                                                    color:
                                                    Color(0xFFEB5757))),
                                            Text('JUNE',
                                                style: TextStyle(
                                                    color:
                                                    Color(0xFFEB5757))),
                                          ],
                                        ),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                            BorderRadius.circular(16)),
                                      ),
                                    ),
                                    Positioned(
                                      right: 0,
                                      child: Container(
                                        padding: EdgeInsets.all(8),
                                        child: Icon(Icons.bookmark,
                                            color: Color(0xFFEB5757)),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                            BorderRadius.circular(16)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 4, right: 4),
                              child: Text(
                                "International Band Mu..",
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                            SizedBox(height: 16),
                            Padding(
                              padding: EdgeInsets.only(left: 4, right: 4),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(
                                    width: 120,
                                    height: 60,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: 0,
                                          child: CircleAvatar(
                                            radius: 20,
                                            backgroundImage: AssetImage(
                                                "assets/ovel1.png"),
                                          ),
                                        ),
                                        Positioned(
                                          left: 30,
                                          child: CircleAvatar(
                                            backgroundImage: AssetImage(
                                                "assets/ovel2.png"),
                                            radius: 20,
                                          ),
                                        ),
                                        Positioned(
                                          left: 60,
                                          child: CircleAvatar(
                                            backgroundImage: AssetImage(
                                                "assets/ovel3.png"),
                                            radius: 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 8),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 10),
                                    child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          '+20 Going',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.blueAccent),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 4, right: 4),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(Icons.location_on_rounded,
                                      color: Color(0xFF716E90)),
                                  Text(
                                    '36,Guild Street London,UK',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xFF716E90),
                                    ),
                                  ),
                                ],
                              ),
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
    );
  }
  Column buildViewMore() {
    return Column(
      children: [
        Padding(
          padding:  EdgeInsets.only(right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Upcoming Events",
                style: TextStyle(
                  color: Color(0xFF120D26),
                  fontSize: 18,
                  fontFamily: "AirbnbCereal",
                ),
              ),
              Text(
                "See all",
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
