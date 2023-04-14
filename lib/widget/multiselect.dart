// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MultiSelection extends StatefulWidget {
  final Icon cIcon;

  const MultiSelection({Key? key, required this.cIcon}) : super(key: key);

  @override
  State<MultiSelection> createState() => _MultiSelectionState();
}

class _MultiSelectionState extends State<MultiSelection> {
  bool? isSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !(isSelected ?? false);
        });
      },
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: CircleAvatar(
          radius: 30,
          backgroundColor:
              (isSelected == true) ? Color(0xFF5669FF) : Colors.white,
          child: widget.cIcon,
        ),
      ),
    );
  }
}
