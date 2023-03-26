// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  final   Icon?  icon;
  final Icon? sicon;
  final   String  label;
  const TextFieldWidget({Key? key, required this.label, this.icon, this.sicon}) : super(key: key);

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}
class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          hintText: widget.label,
          prefixIcon:widget.icon ,
          suffixIcon: widget.sicon,
        ),
      ),
    );
  }
}
