import 'package:HTW/view/Add_vehical_info.dart';
import 'package:HTW/view/pollution.dart';
import 'package:flutter/material.dart';
import 'package:HTW/utils/color.dart';
import 'package:HTW/utils/customText.dart';
import 'package:get/get.dart';

class Insurance extends StatefulWidget {
  Insurance({super.key});

  @override
  State<Insurance> createState() => _InsuranceState();
}

class _InsuranceState extends State<Insurance> {
  String? gender;
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Container(
            height: 900,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/bc.jpg"),
                  fit: BoxFit.fitHeight),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(57, 128, 130, 199),
                      ),
                      width: 340,
                      height: 60,
                      child: Center(
                        child: CustomText(
                          text: "Add Vehicle Information",
                          fontWeight: FontWeight.w700,
                          fontSize: 22,
                          wordSpacing: 2,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(17)),
                          color: Colors.blue,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () => Get.off(Add_Vehicle_info()),
                              child: CustomText(
                                text: 'Vehicle/RC',
                                fontSize: 17,
                                color: Colors.white,
                              ),
                            ),
                            GestureDetector(
                              onTap: () => Get.off(Pollution()),
                              child: CustomText(
                                text: 'Pollution',
                                fontSize: 17,
                                color: Colors.white,
                              ),
                            ),
                            CustomText(
                              text: 'insurance',
                              fontSize: 17,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        height: 40,
                        width: 340,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(children: [
                      Icon(
                        Icons.upload_file,
                        color: Color.fromARGB(255, 3, 114, 165),
                        size: 40,
                      ),
                      const SizedBox(
                        height: 45,
                        width: 250,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Upload Insurance Photo*',
                            labelStyle: TextStyle(fontSize: 13),
                          ),
                        ),
                      ),
                    ]),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: CustomText(
                        text: "Insurance Provider Name*",
                        fontSize: 19,
                      ),
                    ),
                    SizedBox(
                      height: 80,
                      width: 280,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Enter Insurance Provider Name',
                            labelStyle: TextStyle(fontSize: 13)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: CustomText(
                        text: "Insurance Number*",
                        fontSize: 19,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const SizedBox(
                      width: 280,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Enter Insurance Number',
                            labelStyle: TextStyle(fontSize: 13)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: CustomText(
                        text: "Insurance Expiry Date*",
                        fontSize: 19,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const SizedBox(
                      width: 280,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Select Expiry Date',
                            labelStyle: TextStyle(fontSize: 13)),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: SizedBox(
                          height: 50,
                          width: 200,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 0),
                            child: Card(
                              color: darkBlueColor,
                              child: Center(
                                child: CustomText(
                                  text: "Submit",
                                  fontSize: 15,
                                  color: whiteColor,
                                  fontWeight: FontWeight.w500,
                                  wordSpacing: 1,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
