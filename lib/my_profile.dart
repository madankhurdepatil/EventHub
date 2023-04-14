// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 35),
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
            Text("Ashfak Sayem", style: TextStyle(fontSize: 20)),
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
            Container(
              height: 50,
              width: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
                border: Border.all(
                  width: 2.0,
                  color: Color(0xFF5669FF),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Image.asset("assets/edit.png"),
                  ),
                  Text(
                    "Edit Profile",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF5669FF),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Text(
                  "About me ",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Enjoy your favorite dishes and a lovely your friends and family and have a great time. Food from local food trucks will be available for purchase.",
                    maxLines: 5,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 18, color: Colors.black54),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Interest",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 35,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey.shade50,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(width: 1.0),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Image.asset("assets/change.png"),
                      ),
                      Text(
                        "CHANGE",
                        style: TextStyle(color: Color(0xFF5669FF)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Container(
                  height: 40,
                  width: 95,
                  decoration: BoxDecoration(
                    color: Color(0xFF6B7AED),
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: Center(
                    child: Text(
                      "Games Online",
                      style: TextStyle(fontSize: 13, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(width: 5),
                Container(
                  height: 40,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Color(0xFFEE544A),
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: Center(
                    child: Text(
                      "Concert",
                      style: TextStyle(fontSize: 13, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(width: 5),
                Container(
                  height: 40,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Color(0xFFFF8D5D),
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: Center(
                    child: Text(
                      "Music",
                      style: TextStyle(fontSize: 13, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(width: 5),
                Container(
                  height: 40,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Color(0xFF7D67EE),
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: Center(
                    child: Text(
                      "Art",
                      style: TextStyle(fontSize: 13, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Container(
                  height: 40,
                  width: 75,
                  decoration: BoxDecoration(
                    color: Color(0xFF29D697),
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: Center(
                    child: Text(
                      "Movie",
                      style: TextStyle(fontSize: 13, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(width: 5),
                Container(
                  height: 40,
                  width: 95,
                  decoration: BoxDecoration(
                    color: Color(0xFF39D1F2),
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: Center(
                    child: Text(
                      "Others",
                      style: TextStyle(fontSize: 13, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
