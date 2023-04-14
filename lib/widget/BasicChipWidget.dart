
import 'package:flutter/material.dart';

class BasicChipWidget extends StatefulWidget {
  final   String  basicChipLabel;
  final   Color?  chipColor;
  final   Icon  cIcon;
  final Color? bgColor;

  BasicChipWidget({Key? key,required this.basicChipLabel, this.chipColor,required this.cIcon,  this.bgColor}) : super(key: key);

  @override
  State<BasicChipWidget> createState() => _BasicChipWidgetState();
}

class _BasicChipWidgetState extends State<BasicChipWidget> {
  bool ? isSelected;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !(isSelected ?? false);
        });
      },
      child: Chip(
        avatar: CircleAvatar(
          radius: 60,
          backgroundColor: Colors.white,
          child: widget.cIcon,
        ),
        label:Text(widget.basicChipLabel,style: TextStyle(color:  widget.chipColor,fontFamily: 'Modernist-Regular',fontSize: 18)),
        backgroundColor:widget.bgColor,
      ),
    );
  }
}
