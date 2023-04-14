// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AniContainer extends StatelessWidget {
  final double height;

  final double width;
  final Color color;
  final String text;

  AniContainer({
    Key? key,
    required this.color,
    required this.text,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: color,
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 18,
          color: Colors.white,
        ),
      ),
    );
  }
}
