import 'package:flutter/material.dart';
import 'package:HTW/utils/customText.dart';

import '../utils/color.dart';
import 'package:get/get.dart';

class AadharPage extends StatefulWidget {
  const AadharPage({super.key});

  @override
  State<AadharPage> createState() => _AadharPageState();
}

class _AadharPageState extends State<AadharPage> {
  String? gender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        height: 780,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/bc.jpg"), fit: BoxFit.fill),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              width: 400,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(57, 128, 130, 199),
                ),
                width: 340,
                height: 60,
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    GestureDetector(
                      onTap: () => Get.back(),
                      child: Icon(
                        Icons.arrow_back,
                        size: 30,
                      ),
                    ),
                    Center(
                      child: SizedBox(
                        width: 270,
                        child: const CustomText(
                          text: "   UPDATE AADHAR \n       INFORMATION",
                          fontWeight: FontWeight.w700,
                          fontSize: 22,
                          wordSpacing: 2,
                        ),
                      ),
                    ),
                  ],
                ),
                // child: Center(
                //   child: SizedBox(
                //     width: 285,
                //     child: const CustomText(
                //       text: "UPDATE AADHAR INFORMATION",
                //       fontWeight: FontWeight.w700,
                //       fontSize: 22,
                //       wordSpacing: 2,
                //     ),
                //   ),
                // ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CustomText(
              text: "Name as Given in Aadhar No*",
              fontSize: 18,
            ),
            const SizedBox(
              height: 5,
            ),
            const SizedBox(
              width: 330,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Name',
                    labelStyle: TextStyle(fontSize: 13)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            const CustomText(
              text: "Aadhar Card No*",
              fontSize: 18,
            ),
            const SizedBox(
              height: 5,
            ),
            const SizedBox(
              width: 330,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Aadhar No',
                    labelStyle: TextStyle(fontSize: 13)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            const CustomText(
              text: "Date of Birth*",
              fontSize: 18,
            ),
            const SizedBox(
              height: 5,
            ),
            const SizedBox(
              width: 330,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Date of Birth',
                    labelStyle: TextStyle(fontSize: 13)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            const CustomText(
              text: "Upload Aadhar Font Photo *",
              fontSize: 18,
            ),
            const SizedBox(
              height: 5,
            ),
            const SizedBox(
              width: 330,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Upload Aadhar Card',
                    labelStyle: TextStyle(fontSize: 13)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            CustomText(
              text: "Upload Aadhar Back Photo *",
              fontSize: 18,
            ),
            const SizedBox(
              height: 5,
            ),
            const SizedBox(
              width: 330,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Upload Aadhar Card',
                    labelStyle: TextStyle(fontSize: 13)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Card(
                color: darkBlueColor,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: CustomText(
                    text: "Submit",
                    color: whiteColor,
                    fontWeight: FontWeight.w500,
                    wordSpacing: 1,
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    ));
  }
}
