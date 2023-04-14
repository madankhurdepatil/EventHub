// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../Invite_frinedsv1.dart';
import '../frinds_invite.dart';

class InviteFriend extends StatefulWidget {
  const InviteFriend({Key? key}) : super(key: key);

  @override
  State<InviteFriend> createState() => _InviteFriendState();
}

class _InviteFriendState extends State<InviteFriend> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Container(
        width: 330,
        height: 120,
        decoration: BoxDecoration(
          color: Color(0xFFd8feff),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 50,
              top: -80,
              right: -20,
              child: Image.asset("assets/decoration.png",
                  height: 310, width: 300, alignment: Alignment.centerRight),
            ),
            Positioned(
              top: 10,
              left: 15,
              child: Column(
                children: [
                  Text(
                    "Invite your friend",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: EdgeInsets.only(right: 45),
                    child: Row(
                      children: [
                        Text(
                          "Get \$20 for ticket",
                          style:
                              TextStyle(fontSize: 14, color: Color(0xFF716E90)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8),
                  Padding(
                    padding: EdgeInsets.only(right: 60),
                    child: Container(
                      height: 35,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Color(0xFF00F8FF),
                          borderRadius: BorderRadius.circular(8)),
                      child: Padding(
                        padding: EdgeInsets.only(top: 7),
                        child: GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(25.0),
                                ),
                              ),
                              isScrollControlled: true,
                              context: context,
                              builder: (context) {
                              return FriendsInvite();
                            },);
                          },
                          child: Text("INVITE",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                              textAlign: TextAlign.center),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
