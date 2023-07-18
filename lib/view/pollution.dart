import 'package:flutter/material.dart';
import 'package:whizzard/utils/color.dart';
import 'package:whizzard/utils/customText.dart';
import 'package:get/get.dart';

class Pollution extends StatefulWidget {
  Pollution({super.key});

  @override
  State<Pollution> createState() => _PollutionState();
}

class _PollutionState extends State<Pollution> {
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
                    const Padding(
                      padding: EdgeInsets.only(bottom: 20),
                      child: CustomText(
                        text: "Add Vehicle Information",
                        fontWeight: FontWeight.w700,
                        fontSize: 22,
                        wordSpacing: 2,
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(22)),
                        color: Colors.blue,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CustomText(
                            text: 'Vehicle/RC',
                            fontSize: 17,
                            color: Colors.white,
                          ),
                          GestureDetector(
                            onTap: () => Get.to(Pollution()),
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
                            labelText: 'Upload Pollution Photo*',
                          ),
                        ),
                      ),
                    ]),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: CustomText(
                        text: "Pollution Certification Expiry Date*",
                        fontSize: 19,
                      ),
                    ),
                    SizedBox(
                      height: 80,
                      width: 280,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Select Expiry Date'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Row(children: [
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
                              labelText: 'Upload Vehicle RC Back Side Photo*',
                            ),
                          ),
                        ),
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: CustomText(
                        text: "Pollution Certification Expiry Date*",
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
                            labelText: 'Select Expiry Date'),
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
