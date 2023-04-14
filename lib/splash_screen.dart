// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'onboarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

  class _SplashScreenState extends State<SplashScreen> {
    @override
    void initState() {
      super.initState();
      Timer(Duration(seconds: 2),
            () => Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => Onboarding())),
      );
    }
    @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap:  () => Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => Onboarding())),
      child: Scaffold(
       body: Center(
         child: SvgPicture.asset("assets/splashscreen.svg"),
       ),
      ),
    );
  }
}
