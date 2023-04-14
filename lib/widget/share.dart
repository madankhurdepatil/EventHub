// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Share extends StatefulWidget {
  const Share({Key? key}) : super(key: key);

  @override
  State<Share> createState() => _ShareState();
}

class _ShareState extends State<Share> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Column(
        children: [
          Padding(
            padding:  EdgeInsets.all(8),
            child: Container(
              height: 5,
              width: 40,
              decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(16)),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  "Share with friends",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Container(
                      height: 42,
                      width: 43,
                      decoration: BoxDecoration(
                        color: Color(0xFFEFE9E9),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: SvgPicture.asset("assets/copylink.svg"),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Text("Copy Link"),
                ],
              ),
              Column(
                children: [
                  SvgPicture.asset("assets/whatsapp.svg"),
                  Text("WhatsApp"),
                ],
              ),
              Column(
                children: [
                  SvgPicture.asset("assets/facepic.svg"),
                  Text("Facebook"),
                ],
              ),
              Column(
                children: [
                  SvgPicture.asset("assets/messanger.svg"),
                  Text("Messanger"),
                ],
              )
            ],
          ),
          SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  SvgPicture.asset("assets/twitter.svg"),
                  Text("Twitter")
                ],
              ),
              Column(
                children: [
                  SvgPicture.asset("assets/instagram.svg"),
                  Text("Instagram")
                ],
              ),
              Column(
                children: [
                  SvgPicture.asset("assets/skype.svg"),
                  Text("Skype")
                ],
              ),
              Column(
                children: [
                  SvgPicture.asset("assets/message.svg"),
                  Text("Message")
                ],
              )
            ],
          ),
          SizedBox(height: 40),
          Padding(
            padding: EdgeInsets.only(left: 40, right: 40),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                backgroundColor: Color(0xFFEEEEEF),
                padding: EdgeInsets.symmetric(vertical: 16),
                elevation: 0.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      "CANCEL",
                      style: TextStyle(fontSize: 16.0, color: Colors.black54),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
