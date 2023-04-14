// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Selction extends StatefulWidget {
  final String text;
  const Selction({Key? key, required this.text}) : super(key: key);

  @override
  State<Selction> createState() => _SelctionState();
}

class _SelctionState extends State<Selction> {
  bool? isSelected;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !(isSelected ?? false);
        });
      },
      child: Container(
        height: 45,
        width: 88,
        decoration: BoxDecoration(
          color : (isSelected == true) ? Color(0xFF5669FF) : Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(width: 1.0,color: Colors.black12),
        ),
        child: Center(
          child: Text(widget.text,
            style: TextStyle(
              fontSize: 14,color : (isSelected == true) ? Colors.white : Colors.black54,
            ),
          ),
        ),
      ),
    );
  }
}
