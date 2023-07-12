import 'package:flutter/material.dart';
import 'package:whizzard/utils/color.dart';
import 'package:whizzard/utils/customText.dart';

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
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/bc.jpg"),
                fit: BoxFit.fitHeight),
          ),
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomText(
                    text: "UPDATE AADHAR INFORMATION",
                    fontWeight: FontWeight.w700,
                    fontSize: 22,
                    wordSpacing: 2,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomText(
                    text: "Name as Given in AADHAR CARD*",
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const SizedBox(
                    width: 280,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: 'Name'),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const CustomText(
                    text: "AADHAR CARD NO *",
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const SizedBox(
                    width: 280,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'AADHAR CARD NUMBER'),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const CustomText(
                    text: "Date of Birth",
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const SizedBox(
                    width: 280,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Date of Birth'),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const CustomText(
                    text: "Upload Aadhar Font Photo *",
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    width: 280,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Upload Aadhar Card'),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
