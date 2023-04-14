// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pro_flutter/widget/container_wid.dart';
import 'package:pro_flutter/widget/first_tab.dart';
import 'package:pro_flutter/widget/second_tab.dart';
import 'package:pro_flutter/widget/third_tab.dart';

class OrgProfile extends StatefulWidget {
  const OrgProfile({Key? key}) : super(key: key);

  @override
  State<OrgProfile> createState() => _OrgProfileState();
}

class _OrgProfileState extends State<OrgProfile>
    with SingleTickerProviderStateMixin {
    late final tabController = TabController(length: 3, vsync: this);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20, right: 20, top: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage("assets/ashfak2.png"),
                ),
              ],
            ),
            SizedBox(height: 15),
            Text("David Silbiya", style: TextStyle(fontSize: 20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text("350"),
                    SizedBox(height: 10),
                    Text("Following",
                        style: TextStyle(fontSize: 14, color: Colors.black54)),
                  ],
                ),
                SizedBox(width: 15),
                Text(
                  "|",
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.black12,
                  ),
                ),
                SizedBox(width: 15),
                Column(
                  children: [
                    Text("346"),
                    SizedBox(height: 10),
                    Text("Followers",
                        style: TextStyle(fontSize: 14, color: Colors.black54)),
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                WidContainer(
                    text: "Follow",
                    imageUrl: "assets/userplus.png",
                    color: Color(0xFF5669FF),
                    tcolor: Colors.white),
                WidContainer(
                    text: "Messages",
                    imageUrl: "assets/micon.png",
                    tcolor: Color(0xFF5669FF)),
              ],
            ),
            SizedBox(height: 15),
            DefaultTabController(
              initialIndex: 0,
              length: 3,
              child: Column(
                children: [
                  TabBar(
                    controller: tabController,
                    indicatorColor: Color(0xFF5669FF),
                    tabs: [
                      Tab(
                        child: Text("ABOUT",
                            style: TextStyle(
                                fontSize: 16, color: Color(0xFF5669FF))),
                      ),
                      Tab(
                        child: Text("EVENT",
                            style: TextStyle(
                                fontSize: 16, color: Color(0xFF5669FF))),
                      ),
                      Tab(
                        child: Text("REVIEWS",
                            style: TextStyle(
                                fontSize: 16, color: Color(0xFF5669FF))),
                      ),
                    ],
                  ),
                  Container(
                    height: 300,
                    width: double.maxFinite,
                    child: TabBarView(
                      controller: tabController,
                      children: [
                        FirstTab(),
                        SecondTab(),
                        ThirdTab(),
                      ],
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
