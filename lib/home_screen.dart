// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<IconData>listicon = [
    Icons.sports_baseball,
    Icons.music_note_rounded,
    Icons.restaurant_menu,
    Icons.sports_baseball,
    Icons.music_note_rounded,
    Icons.restaurant_menu,
    Icons.sports_baseball,
    Icons.music_note_rounded,
    Icons.restaurant_menu,
    Icons.sports_baseball,
    Icons.music_note_rounded,
    Icons.restaurant_menu,

  ];
  List<Color> colors = [
    Colors.pinkAccent,
    Colors.yellowAccent,
    Colors.greenAccent,
    Colors.blueAccent,
    Colors.pinkAccent,
    Colors.yellowAccent,
    Colors.greenAccent,
    Colors.blueAccent,
    Colors.pinkAccent,
    Colors.yellowAccent,
    Colors.greenAccent,
    Colors.blueAccent,
    Colors.pinkAccent,
    Colors.yellowAccent,
    Colors.greenAccent,
    Colors.blueAccent, Colors.pinkAccent,
    Colors.yellowAccent,
    Colors.greenAccent,
    Colors.blueAccent,
    Colors.pinkAccent,
    Colors.yellowAccent,
    Colors.greenAccent,
    Colors.blueAccent,

  ];
  bool status1 = false;
  var items = [
    'New Yourk, USA',
    'Surat',
    'Aurangabad',
    'Pune',
    'Hyderabad',
    'Bangalore',
    'Nashik',
    'Kolkata',
    'Agra',
    'Mumbai',
    'Delhi',
    'Chennai',
    'Dubai',
    'Vasai',
  ];
  String dropdownvalue = 'New Yourk, USA';
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(32), bottomRight: Radius.circular(32)),
            child: SizedBox(
              height: 230,
              child: Stack(
                children: [
                  IgnorePointer(
                    ignoring: false,
                    child: Container(
                      height: 200,
                      color: Color(0xFF4A43EC),
                      child: Padding(
                        padding: EdgeInsets.only(top: 25),
                        child: Column(
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(left: 20,right: 20),
                              child: Row(
                                children: [
                                  IconButton(
                                    icon: Icon(
                                      Icons.menu,
                                      size: 40,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {},
                                  ),
                                  SizedBox(width: 35,),
                                  Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        DropdownButton(
                                          iconEnabledColor: Colors.white,
                                          hint: Padding(
                                            padding: EdgeInsets.only(left: 10),
                                            child: Text(
                                              "Current Location",
                                              style:
                                                  TextStyle(fontSize: 16, color: Color(0xFFA29EF0)),
                                            ),
                                          ),
                                          items: items.map((String items) {
                                            return DropdownMenuItem(
                                              value: items,
                                              child: Text(items),
                                            );
                                          }).toList(),
                                          onChanged: (String? newValue) {
                                            setState(() {
                                              dropdownvalue = newValue!;
                                            });
                                          },
                                        ),
                                        Text(
                                          dropdownvalue.toString(),
                                          style: TextStyle(fontSize: 20, color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 35,),
                                  Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: CircleAvatar(
                                        backgroundColor: Color(0xFF5D56F3),
                                        child: Icon(Icons.add_alert_sharp,
                                            size: 25, color: Colors.white)),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height:10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(width: 35),
                                Icon(Icons.search_rounded,size: 35,color: Colors.white),
                                SizedBox(width: 10),
                                Text("|",style: TextStyle(fontSize: 35,color: Color(0xFFA29EF0))),
                                SizedBox(width: 5),
                                Text("Search...",style: TextStyle(
                                  fontSize: 20,color: Color(0xFFA29EF0),
                                ),),
                                SizedBox(width: 95),
                                FlutterSwitch(
                                  toggleColor: Color(0xFFA29EF0),
                                  activeText: "Filters",
                                  inactiveText: "madan",
                                  inactiveTextColor: Colors.white,
                                  padding: 2.0,
                                  toggleSize: 30,
                                  height: 40,
                                  width: 80,
                                  activeColor: Color(0xFF5D56F3),
                                  inactiveColor: Color(0xFF5D56F3),
                                  value: status1,
                                  onToggle: (val) {
                                    setState(() {
                                      status1 = val;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 60,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 8,
                        physics: AlwaysScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return  Padding(
                            padding:  EdgeInsets.all(8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(32),
                              child: Container(
                                width: 100,
                                height:40,
                                color: colors[index],
                                child:Row(
                                  children: [
                                    SizedBox(width: 5,),
                                    // Icon(Icons.sports_baseball,size: 25,color:Colors.white),
                                    Image.asset("assets/icsport.png"),

                                    SizedBox(width: 5),
                                    Text("Sport",style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20
                                    ),),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },),
                    ),
                  ),
                ],
              ),
            ),
          ),
         // Row(
         //   mainAxisAlignment: MainAxisAlignment.spaceAround,
         //   children: [
         //     ClipRRect(
         //       borderRadius: BorderRadius.circular(32),
         //       child: Container(
         //         width: 100,
         //         height:40,
         //         color: Color(0xFFF0635A),
         //         child:Row(
         //           children: [
         //             SizedBox(width: 5,),
         //             Icon(Icons.sports_baseball,size: 25,color:Colors.white),
         //             SizedBox(width: 5),
         //             Text("Sport",style: TextStyle(
         //                 color: Colors.white,
         //                 fontSize: 20
         //             ),),
         //           ],
         //         ),
         //       ),
         //     ),
         //     SizedBox(height: 20),
         //     ClipRRect(
         //       borderRadius: BorderRadius.circular(32),
         //       child: Container(
         //         width: 100,
         //         height:40,
         //         color: Color(0xFFF59762),
         //         child:Row(
         //           children: [
         //             SizedBox(width: 5,),
         //             Icon(Icons.music_note_rounded,size: 25,color:Colors.white),
         //             SizedBox(width: 5),
         //             Text("Music",style: TextStyle(
         //                 color: Colors.white,
         //                 fontSize: 20
         //             ),),
         //           ],
         //         ),
         //       ),
         //     ),
         //     SizedBox(height: 20),
         //     ClipRRect(
         //       borderRadius: BorderRadius.circular(32),
         //       child: Container(
         //         width: 100,
         //         height:40,
         //         color: Color(0xFF29D697),
         //         child:Row(
         //           children: [
         //             SizedBox(width: 5,),
         //             Icon(Icons.restaurant_menu,size: 25,color:Colors.white),
         //             SizedBox(width: 5),
         //             Text("Food",style: TextStyle(
         //                 color: Colors.white,
         //                 fontSize: 20
         //             ),),
         //           ],
         //         ),
         //       ),
         //     ),
         //   ],
          SizedBox(height: 8),
          SingleChildScrollView(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Upcoming Events",style: TextStyle(
                  fontSize: 20,
                  fontFamily: "AirbnbCereal",
                ),),
                Text("See all",style: TextStyle(fontSize: 16),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
