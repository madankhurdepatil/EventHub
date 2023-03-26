import 'package:flutter/material.dart';

class ElevatedButtonW extends StatefulWidget {
  final String text;

   ElevatedButtonW({Key? key, required this.text}) : super(key: key);

  @override
  State<ElevatedButtonW> createState() => _ElevatedButtonWState();
}

class _ElevatedButtonWState extends State<ElevatedButtonW> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: 20,right: 20),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8)),
          backgroundColor: Color(0xFF5669FF),
          padding: EdgeInsets.symmetric(vertical: 16),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.text,
                style: TextStyle(fontSize: 16.0, color: Colors.white),
              ),
              SizedBox(width: 80),
              CircleAvatar(
                backgroundColor: Colors.deepPurpleAccent.shade100,
                radius: 12,
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                  size: 16.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
