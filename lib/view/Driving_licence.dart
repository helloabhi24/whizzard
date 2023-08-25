//
import 'package:flutter/material.dart';
import 'package:HTW/utils/customText.dart';

import '../utils/color.dart';
import 'package:get/get.dart';

class DrivingL extends StatefulWidget {
  const DrivingL({super.key});

  @override
  State<DrivingL> createState() => _DrivingLState();
}

class _DrivingLState extends State<DrivingL> {
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
                child: Stack(alignment: Alignment.centerLeft, children: [
                  GestureDetector(
                    onTap: () => Get.back(),
                    child: Icon(
                      Icons.arrow_back,
                      size: 30,
                    ),
                  ),
                  Center(
                    child: const CustomText(
                      text: "    DRIVING LICENCE DETAIL",
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      wordSpacing: 2,
                    ),
                  )
                ]),
                // child: Center(
                //   child: SizedBox(
                //     width: 285,
                //     child: const CustomText(
                //       text: "DRIVING LICENCE DETAIL",
                //       fontWeight: FontWeight.w700,
                //       fontSize: 20,
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
              text: "Driving Licence No*",
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
                    labelText: 'Enter the no',
                    labelStyle: TextStyle(fontSize: 13)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            const CustomText(
              text: "DL Expiry date*",
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
                    labelText: 'Expiry no',
                    labelStyle: TextStyle(fontSize: 13)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            const CustomText(
              text: "Upload Licence Front Photo*",
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
                    labelText: 'Upload the photo',
                    labelStyle: TextStyle(fontSize: 13)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            const CustomText(
              text: "Upload Licence Back photo*",
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
                    labelText: 'Upload the photo',
                    labelStyle: TextStyle(fontSize: 13)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            CustomText(
              text: "Driving licence Category *",
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
                    labelText: 'Categary Typse',
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
