// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class FirstTab extends StatefulWidget {
  const FirstTab({Key? key}) : super(key: key);

  @override
  State<FirstTab> createState() => _FirstTabState();
}

class _FirstTabState extends State<FirstTab> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Text(
            "Enjoy your favorite dish and a lovely your friends and family and have a great time. Food from local food trucks will be available for purchase.",
            maxLines: 5,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 18),
          ),
          Row(
            children: [
              Text(
                "Read More",
                style: TextStyle(fontSize: 18, color: Colors.blueAccent),
              ),
            ],
          )
        ],
      ),
    );
  }
}
