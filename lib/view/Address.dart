//
import 'package:HTW/view/Up_date_Addresspage.dart';
import 'package:flutter/material.dart';
import 'package:HTW/utils/customText.dart';
import 'package:get/get.dart';

import '../utils/color.dart';

class Address extends StatefulWidget {
  const Address({super.key});

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {
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
                      text: " Address",
                      fontWeight: FontWeight.w700,
                      fontSize: 22,
                      wordSpacing: 2,
                    ),
                  )
                ]),
                // child: Center(
                //   child: SizedBox(
                //     width: 285,
                //     child: Center(
                //       child: const CustomText(
                //         text: "Address",
                //         fontWeight: FontWeight.w700,
                //         fontSize: 22,
                //         wordSpacing: 2,
                //       ),
                //     ),
                //   ),
                // ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CustomText(
              text: "Local Address*",
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
                    labelText: 'Local Address',
                    labelStyle: TextStyle(fontSize: 13)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            const CustomText(
              text: "Permanent Address*",
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
                    labelText: 'Permanent Address',
                    labelStyle: TextStyle(fontSize: 13)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            const CustomText(
              text: "UP DATE ADDRESS*",
              fontSize: 18,
            ),
            const SizedBox(
              height: 100,
            ),
            Center(
              child: Card(
                color: darkBlueColor,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: GestureDetector(
                    onTap: () => Get.to(Up_Adress()),
                    child: CustomText(
                      text: "CLICK HERE",
                      color: whiteColor,
                      fontWeight: FontWeight.w500,
                      wordSpacing: 1,
                    ),
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
