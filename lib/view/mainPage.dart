import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:whizzard/utils/color.dart';
import 'package:whizzard/utils/customText.dart';
import 'package:whizzard/view/profilePage.dart';
import 'package:get/get.dart';

import '../widgets/drawerMenuWidget.dart';

class MainPage extends StatelessWidget {
  final VoidCallback openDrawer;
  const MainPage({super.key, required this.openDrawer});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(136, 139, 59, 155),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(137, 113, 8, 134),
        leading: DrawerMenuWidget(
          onClicked: openDrawer,
        ),
        iconTheme: const IconThemeData(color: Colors.black),
        actions: const [
          Icon(Icons.call, color: Color.fromARGB(255, 227, 252, 5)),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.notifications, color: Color.fromARGB(255, 227, 252, 5)),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 10),
        child: Column(
          children: [
            SizedBox(
              width: 345,
              child: GestureDetector(
                onTap: () {
                  Get.to(ProfilePage(openDrawer: openDrawer));
                },
                child: Card(
                  elevation: 5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(
                        width: 1,
                      ),
                      const CircleAvatar(
                        backgroundColor: Color.fromARGB(213, 48, 88, 207),
                        maxRadius: 30,
                        child: Icon(
                          Icons.abc,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            AnimatedTextKit(
                              animatedTexts: [
                                TypewriterAnimatedText(
                                  'FLEET NAME',
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
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xff3473cb)),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Row(
                              children: [
                                Text(
                                  "Site Code",
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
                      ),
                      const Icon(
                        Icons.arrow_forward_ios,
                        color: Color.fromARGB(255, 5, 8, 197),
                        size: 30,
                      )
                    ],
                  ),
                ),
              ),
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Card(
                    elevation: 4,
                    child: SizedBox(
                      height: 100,
                      width: 100,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Icon(
                            Icons.route_sharp,
                            color: Color.fromARGB(255, 197, 4, 4),
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
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: Card(
                    elevation: 4,
                    child: SizedBox(
                      height: 100,
                      width: 100,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Icon(
                            Icons.backpack_rounded,
                            color: Color.fromARGB(255, 177, 192, 42),
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
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 4,
                    child: SizedBox(
                      height: 100,
                      width: 100,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Icon(
                            Icons.fire_truck,
                            color: Color.fromARGB(255, 65, 124, 31),
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
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              width: 338,
              child: ElevatedButton(
                  onPressed: () {},
                  child: const CustomText(
                    text: "No Shift Assigned Today",
                    fontSize: 17,
                    color: Colors.black,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    // color: const Color.fromARGB(255, 238, 207, 217),
                    color: whiteColor),
                height: 350,
                width: 340,
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(15.0),
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
                          'Client Name',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      'Client Site Code',
                      style: TextStyle(fontSize: 18),
                    ),
                    const Text(
                      'BHOE',
                      style: TextStyle(fontSize: 18),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Icon(
                        Icons.bike_scooter,
                        color: Color.fromARGB(255, 5, 8, 197),
                        size: 40,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromARGB(137, 113, 8, 134),
                        ),
                        width: 300,
                        height: 50,
                        child: const Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Icon(Icons.fingerprint,
                                  size: 30,
                                  color: Color.fromARGB(255, 6, 3, 156)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Text(
                                'Mark Attendence(DDA)',
                                style: TextStyle(
                                    fontSize: 22, color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
