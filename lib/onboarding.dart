// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pro_flutter/sign_in.dart';

import 'controller/main_controller.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> with WidgetsBindingObserver {
  MainController  controller = Get.put(MainController());
  final List<String> imgList = [
    'assets/onboarding1.png',
    'assets/onboarding3.png',
    'assets/onboarding2.png',
  ];
  int _current = 0;
  CarouselController _controller = CarouselController();

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);

    super.initState();
  }

  @override
  Future<void> didChangePlatformBrightness() async {
    controller.changeTheme(black: RxBool(!controller.isDark.value));
    super.didChangePlatformBrightness();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () =>  Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: 69),
          child: Column(
            children: [
              CarouselSlider.builder(
                itemCount: imgList.length,
                carouselController: _controller,
                options: CarouselOptions(
                  height: 450,
                  enlargeCenterPage: true,
                  autoPlay: false,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 0.8,
                  onPageChanged: (index, reason) {
                    setState(
                      () {
                        _current = index;
                      },
                    );
                  },
                ),
                itemBuilder: (BuildContext context, int index, int realIndex) {
                  return Container(
                    height: 330,
                    width: 330,
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage(imgList[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
              SizedBox(height: 5),
              ClipRRect(
                borderRadius: BorderRadius.circular(32),
                child: Container(
                  color: Color(0xFF5669FF),
                  height: 276,
                  width: 360,
                  child: Column(children: [
                    Column(
                      children: [
                        _current == 0
                            ? Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Text("Explore Upcoming and Nearby Events",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white,
                                    )),
                              )
                            : SizedBox(),
                        _current == 1
                            ? Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Text(
                                    " Web Have Modern Events Calendar Feature",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white,
                                        )),
                              )
                            : SizedBox(),
                        _current == 2
                            ? Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Text(
                                    "  To Look Up More Events or Activities Nearby By Map",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white,
                                       )),
                              )
                            : SizedBox(),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                              " In publishing and graphic design,Lorem is",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  ),
                              textAlign: TextAlign.center),
                        ),
                        Text(" a placeholder text commonly",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                               ),
                            textAlign: TextAlign.center),
                      ],
                    ),
                    SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Skip',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(

                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: imgList.asMap().entries.map((entry) {
                              return GestureDetector(
                                onTap: () => _controller.animateToPage(entry.key,
                                    duration: Duration(milliseconds: 20),
                                    curve: Curves.fastOutSlowIn),
                                child: Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Container(
                                    width: 8.0,
                                    height: 8.0,
                                    margin: EdgeInsets.symmetric(
                                        vertical: 8.0, horizontal: 4.0),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: ((controller.isDark.value)
                                              ? Colors.black
                                              : Colors.white)
                                          .withOpacity(
                                        _current == entry.key ? 0.9 : 0.4,
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                        TextButton(
                          onPressed: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => SignIn())),
                          child: Text(
                            'Next',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
