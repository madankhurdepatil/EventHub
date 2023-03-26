
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:pro_flutter/onboarding.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
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

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return Obx(
      () {
        log(controller.isDark.value.toString());
        return GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: "AirbnbCereal",
          primarySwatch: Colors.grey,
          brightness: controller.isDark.value? Brightness.dark:Brightness.light,
        ),
        debugShowCheckedModeBanner: false,
        home:  Onboarding(),
      );
      },
    );
  }
}

