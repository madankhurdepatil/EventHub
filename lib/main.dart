// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pro_flutter/onboarding.dart';
import 'package:get/get.dart';
import 'package:pro_flutter/splash_screen.dart';
import 'controller/main_controller.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDark = false;
  MainController  controller = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        // log(controller.isDark.value.toString());
        return GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: "AirbnbCereal",
          primarySwatch: Colors.grey,
          brightness: controller.isDark.value? Brightness.dark:Brightness.light,
        ),
        debugShowCheckedModeBanner: false,
        home:  SplashScreen(),
      );
      },
    );
  }
}

