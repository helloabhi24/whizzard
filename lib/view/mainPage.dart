import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:whizzard/utils/color.dart';
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
                const SizedBox(
                  width: 03,
                ),
                const CircleAvatar(
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
                    const SizedBox(
                      height: 10,
                    ),
                    AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText(
                          'SHIVAM RAJAK',
                          textStyle: const TextStyle(
                              fontSize: 20.0,
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
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "Driver & Associate",
                      style: TextStyle(fontSize: 14, color: Color(0xff3473cb)),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Row(
                      children: [
                        Text(
                          "Bhog",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff3059cf)),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Profile",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff3059cf)),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 30,
                )
              ],
            ),
          ),
          const Row(
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
                        fontSize: 13,
                        fontWeight: FontWeight.w800,
                      ),
                      CustomText(
                        text: "DISTANCE",
                        fontSize: 13,
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
                        fontSize: 13,
                        fontWeight: FontWeight.w800,
                      ),
                      CustomText(
                        text: "PACKAGE",
                        fontSize: 13,
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
                        fontSize: 13,
                        fontWeight: FontWeight.w800,
                      ),
                      CustomText(
                        text: "TRIPS",
                        fontSize: 13,
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
              child: const CustomText(
                text: "No Shift Assigned Today",
                color: Colors.black,
              )),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                // color: const Color.fromARGB(255, 238, 207, 217),
                color: whiteColor),
            height: 350,
            width: 340,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Date   ',
                        style: TextStyle(fontSize: 17),
                      ),
                      Text(
                        'Reporting Time - 6:00',
                        style: TextStyle(fontSize: 17),
                      ),
                    ],
                  ),
                ),
                // Divider(),
                Row(
                  children: [
                    Container(
                      color: Colors.blue,
                      height: 2,
                      width: 330,
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 35),
                  child: SizedBox(
                    height: 35,
                    child: Text(
                      'Amazan Ecommerce',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
                const Text(
                  'BHO-AMZ-Lal Ghati',
                  style: TextStyle(fontSize: 22),
                ),
                const Text(
                  'BHOE',
                  style: TextStyle(fontSize: 20),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Icon(
                    Icons.bike_scooter,
                    size: 40,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromARGB(255, 18, 98, 163),
                    ),
                    width: 320,
                    height: 60,
                    child: const Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Icon(Icons.thumb_down_alt_outlined,
                              color: Colors.white),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: Text(
                            'Mark Attendence(DDA)',
                            style: TextStyle(fontSize: 22, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
