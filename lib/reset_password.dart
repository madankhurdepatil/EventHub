// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pro_flutter/home_screen.dart';
import 'package:pro_flutter/widget/textfieldwidget.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding:  EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Reset Password",
                  style:
                  TextStyle(fontSize: 30, fontFamily: "AirbnbCereal_W_Lt"),
                ),
              ],
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Text(
                  "Please enter your email address to ",
                  style: TextStyle(
                    fontFamily: "AirbnbCereal_W_Lt",
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            Row(
              children: [
                Text(
                  "request a password reset",
                  style:
                  TextStyle(fontFamily: "AirbnbCereal_W_Lt", fontSize: 18),
                ),
              ],
            ),
            SizedBox(height: 20),
            TextFieldWidget(label: "abc@gmail.com",icon: Icon(Icons.mail)),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: ElevatedButton(
                onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => HomeScreen())),
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
                        "CONTINUE",
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
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
            ),
          ],
        ),
      ),
    );
  }
}
