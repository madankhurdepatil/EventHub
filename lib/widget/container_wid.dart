// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class WidContainer extends StatefulWidget {
  final String imageUrl;
  final String text;
  final Color ?  color;
  final Color ?  tcolor;
  const WidContainer({Key? key,required this.text, this.color, required this.imageUrl, this.tcolor}) : super(key: key);

  @override
  State<WidContainer> createState() => _WidContainerState();
}

class _WidContainerState extends State<WidContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        width: 140,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: widget.color,
          border: Border.all(color:Color(0xFF5669FF),width: 1.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(widget.imageUrl),
            Text(widget.text.toString(),style: TextStyle(fontSize: 16,color: widget.tcolor),
            ),
          ],
        ),
    );
  }
}
