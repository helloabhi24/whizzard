import 'package:flutter/material.dart';
import 'package:HTW/utils/customText.dart';

import '../utils/color.dart';
import 'package:get/get.dart';

class PanCard extends StatefulWidget {
  const PanCard({super.key});

  @override
  State<PanCard> createState() => _PanCardState();
}

class _PanCardState extends State<PanCard> {
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
                      text: "  PAN CARD DETAIL",
                      fontWeight: FontWeight.w700,
                      fontSize: 22,
                      wordSpacing: 2,
                    ),
                  )
                ]),
                // child: Center(
                //   child: SizedBox(
                //     width: 285,
                //     child: const CustomText(
                //       text: "PAN CARD DETAIL",
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
              text: "Name as Given in PAN CARD*",
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
              text: "PAN Card No*",
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
                    labelText: 'Pan No',
                    labelStyle: TextStyle(fontSize: 13)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            const CustomText(
              text: "Upload PAN Photo*",
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
                    labelText: 'upload PAN Card',
                    labelStyle: TextStyle(fontSize: 13)),
              ),
            ),
            SizedBox(
              height: 100,
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
