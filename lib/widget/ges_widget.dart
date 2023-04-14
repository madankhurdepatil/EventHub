// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class GesWidget extends StatefulWidget {
  const GesWidget({Key? key}) : super(key: key);

  @override
  State<GesWidget> createState() => _GesWidgetState();
}

class _GesWidgetState extends State<GesWidget> {
  bool? isSelected;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                isSelected = !(isSelected ?? true);
              });
            },
            child: Container(
              height: 40,
              width: 100,
              decoration: BoxDecoration(
                border: Border.all(width: 0.5),
                color: (isSelected == true)
                    ? Colors.blueAccent
                    : Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  "Reject",
                  style: TextStyle(
                    fontSize: 16,
                    color: (isSelected == true)
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 15),
          GestureDetector(
            onTap: () {
              setState(() {
                isSelected = !(isSelected ?? true);
              });
            },
            child: Container(
              height: 40,
              width: 100,
              decoration: BoxDecoration(
                border: Border.all(width: 0.5),
                color: (isSelected == false)
                    ? Colors.blueAccent
                    : Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  "Accept",
                  style: TextStyle(
                    fontSize: 16,
                    color: (isSelected == false)
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
