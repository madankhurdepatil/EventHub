// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last
import 'package:flutter/material.dart';
import 'package:pro_flutter/widget/custom_drower.dart';
import 'widget/app_bar_widget.dart';
import 'widget/gridview_upevent.dart';
import 'widget/invite_friend.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isSwitched = false;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: CustomDrower(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBarWidget(
              scaffoldKey: _scaffoldKey,
            ),
            SingleChildScrollView(child: GridUpcoming()),
            InviteFriend(),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Nearby You",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text("See All"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
