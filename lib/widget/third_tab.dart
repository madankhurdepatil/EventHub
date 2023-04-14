// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pro_flutter/widget/star_display.dart';

class ThirdTab extends StatefulWidget {
  const ThirdTab({Key? key}) : super(key: key);

  @override
  State<ThirdTab> createState() => _ThirdTabState();
}

class _ThirdTabState extends State<ThirdTab> {
  List <String> names = [
    "Rocks Velkeinjen",
    "Angelina Zolly",
    "Zenifero Bolex",
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      physics: AlwaysScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: names.length,
      itemBuilder: (context, index) {
        return  Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  child: Image.asset("assets/personone.png"),
                ),
                SizedBox(width: 15),
                Column(
                  children: [
                    Text(names[index].toString(),
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    SizedBox(height: 2),
                    Padding(
                      padding:  EdgeInsets.only(right: 10),
                      child: Row(
                        children: [
                          StarDisplay(),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(width:80),
                Text(
                  "10 Feb",
                  style: TextStyle(fontSize: 16, color: Colors.black26),
                ),
              ],
            ),
            Padding(
              padding:  EdgeInsets.only(left: 50,right: 8),
              child: Text("Cinemas is the ultimate experience to see new movies in Gold Class or Vmax. Find a cinema near you.",style: TextStyle(
                fontSize: 15,
              ),),
            ),
          ],
        );
      },
    );
  }
}
