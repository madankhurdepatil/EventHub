// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:pro_flutter/reset_password.dart';

class Verification extends StatefulWidget {
  const Verification({Key? key}) : super(key: key);

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  late Timer _timer;
  bool? click;
  int seconds = 60;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 1), (Timer timer) {
      if (seconds == 0) {
        setState(() {
          _timer.cancel();
        });
      } else {
        setState(() {
          seconds--;
        });
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20,right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Verification",
                  style:
                      TextStyle(fontSize: 22),
                ),
              ],
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Text(
                  "we've send you the verification",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            Row(
              children: [
                Text(
                  "code on +01 2620 0323 7631",
                  style:
                      TextStyle( fontSize: 16),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                textFieldOTP(first: true, last: false),
                textFieldOTP(first: false, last: false),
                textFieldOTP(first: false, last: false),
                textFieldOTP(first: false, last: true),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: ElevatedButton(
                onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ResetPassword())),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  backgroundColor: Color(0xFF5669FF),
                  padding: EdgeInsets.symmetric(vertical: 16),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 70),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "CONTINUE",
                        style: TextStyle(fontSize: 16.0, color: Colors.white),
                      ),
                      SizedBox(width: 70),
                      CircleAvatar(
                        backgroundColor: Color(0xFF3D56F0),
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
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Re-send code in ",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                Text("0:",
                    style: TextStyle(
                        fontFamily: "AirbnbCereal_W_Lt",
                        fontSize: 18,
                        color: Colors.blue.shade200)),
                Text(
                  seconds.toString(),
                  style: TextStyle(
                      fontFamily: "AirbnbCereal_W_Lt",
                      fontSize: 18,
                      color: Colors.blue.shade200),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  textFieldOTP({required bool first, last}) {
    return Container(
      height: 70,
      width: 60,
      color: (click == true) ? Colors.pink : Colors.transparent,
      child: AspectRatio(
        aspectRatio: 0.7,
        child: TextField(
          autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.isEmpty && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
              hintText: '--',
              hintStyle: TextStyle(fontSize: 16, fontFamily: 'Modernist'),
              counter: Offstage(),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: Color(0xFF5669FF)),
                borderRadius: BorderRadius.circular(12),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: Color(0xFF5669FF)),
                borderRadius: BorderRadius.circular(12),
              )),
        ),
      ),
    );
  }
}
