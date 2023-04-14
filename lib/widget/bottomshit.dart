
import 'package:flutter/material.dart';
class BottomShit extends StatefulWidget {
  final Color color;
  final Text title;
  const BottomShit({Key? key, required this.color, required this.title}) : super(key: key);

  @override
  State<BottomShit> createState() => _BottomShitState();
}

class _BottomShitState extends State<BottomShit> {
  bool ? isSelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              setState(() {
                isSelected = !(isSelected ?? false);
              });
            },
            child: CircleAvatar(
              radius: 30,
              backgroundColor:(isSelected == true)? Color(0xFF5669FF): Colors.white,
              child: Icon(Icons.sports_baseball,
                  size: 35),
            ),
          ),
        ),
        Text(""),
      ],
    );
  }
}
