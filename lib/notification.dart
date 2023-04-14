// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:pro_flutter/widget/ges_widget.dart';

class NewNotification extends StatefulWidget {
  const NewNotification({Key? key}) : super(key: key);

  @override
  State<NewNotification> createState() => _NewNotificationState();
}

class _NewNotificationState extends State<NewNotification> {
  bool? isSelected;
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          "Notification",
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        physics: AlwaysScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      child: Image.asset("assets/notification.png"),
                    ),
                    SizedBox(width: 10),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "David Silbia",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(width: 5),
                            Text(
                              "Invite jo Malone",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Just Now",
                              style: TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 140),
                          child: Text("Londons Mothers"),
                        ),
                      ],
                    ),
                  ],
                ),
                //true ? SizedBox():GesWidget(),
              ],
            ),

          );
        },
      ),
    );
  }
}
