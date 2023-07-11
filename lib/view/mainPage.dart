import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:whizzard/utils/customText.dart';

import '../widgets/drawerMenuWidget.dart';

class MainPage extends StatelessWidget {
  final VoidCallback openDrawer;
  const MainPage({super.key, required this.openDrawer});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: DrawerMenuWidget(
          onClicked: openDrawer,
        ),
        iconTheme: const IconThemeData(color: Colors.black),
        actions: const [
          Icon(Icons.call, color: Colors.white),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.notifications, color: Colors.white),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Column(
        children: [
          Card(
            elevation: 5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 03,
                ),
                CircleAvatar(
                  backgroundColor: Color(0xff3059cf),
                  maxRadius: 30,
                  child: Icon(
                    Icons.abc,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText(
                          'SHIVAM RAJAK',
                          textStyle: const TextStyle(
                              fontSize: 22.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                          speed: const Duration(milliseconds: 50),
                        ),
                      ],
                      totalRepeatCount: 1,
                      pause: const Duration(milliseconds: 100),
                      displayFullTextOnTap: true,
                      stopPauseOnTap: true,
                    ),
                    // AnimatedTextKit(animatedTexts: [
                    //   TypewriterAnimatedText("Shivam Rajak"),
                    // ]),
                    // Text(
                    //   "Shivam Rajak",
                    //   style: TextStyle(
                    //     fontSize: 22,
                    //     fontWeight: FontWeight.w700,
                    //   ),
                    // ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Driver & Associate",
                      style: TextStyle(fontSize: 20, color: Color(0xff3473cb)),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          "Bhog",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff3059cf)),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Profile",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff3059cf)),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 30,
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Card(
                elevation: 4,
                child: SizedBox(
                  height: 115,
                  width: 110,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Icon(
                        Icons.location_city,
                        color: Color(0xff3473cb),
                        size: 35,
                      ),
                      CustomText(
                        text: "0",
                        fontSize: 15,
                        fontWeight: FontWeight.w800,
                      ),
                      CustomText(
                        text: "DISTANCE",
                        fontSize: 15,
                        fontWeight: FontWeight.w800,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 4,
                child: SizedBox(
                  height: 115,
                  width: 110,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Icon(
                        Icons.backpack_rounded,
                        color: Color(0xff3473cb),
                        size: 35,
                      ),
                      CustomText(
                        text: "0",
                        fontSize: 15,
                        fontWeight: FontWeight.w800,
                      ),
                      CustomText(
                        text: "PACKAGE",
                        fontSize: 15,
                        fontWeight: FontWeight.w800,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 4,
                child: SizedBox(
                  height: 115,
                  width: 110,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Icon(
                        Icons.fire_truck,
                        color: Color(0xff3473cb),
                        size: 35,
                      ),
                      CustomText(
                        text: "0",
                        fontSize: 15,
                        fontWeight: FontWeight.w800,
                      ),
                      CustomText(
                        text: "TRIPS",
                        fontSize: 15,
                        fontWeight: FontWeight.w800,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          ElevatedButton(
              onPressed: () {},
              child: CustomText(
                text: "No Shift Assigned Today",
                color: Colors.black,
              ))
        ],
      ),
    );
  }
}
