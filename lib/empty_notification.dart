import 'package:flutter/material.dart';

class EmptyNotification extends StatefulWidget {
  const EmptyNotification({Key? key}) : super(key: key);

  @override
  State<EmptyNotification> createState() => _EmptyNotificationState();
}

class _EmptyNotificationState extends State<EmptyNotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Notification",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 16,right: 16,top: 80),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/Artwork.png"),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "No Notifications!",
              style: TextStyle(
                fontSize: 20,
                color: Color(0xFF344B67),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit sed do eiusmod tempor",
              style: TextStyle(
                color: Colors.black54,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
