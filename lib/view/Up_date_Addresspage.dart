import 'package:flutter/material.dart';
import 'package:HTW/utils/color.dart';
import 'package:HTW/utils/customText.dart';
import 'package:get/get.dart';

class Up_Adress extends StatefulWidget {
  Up_Adress({super.key});
  @override
  State<Up_Adress> createState() => _Up_AdressState();
}

class _Up_AdressState extends State<Up_Adress> {
  String? gender;
  bool isChecked = false;

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
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 35),
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
                            text: "   Up Date Address",
                            fontWeight: FontWeight.w700,
                            fontSize: 22,
                            wordSpacing: 2,
                          ),
                        )
                      ]),
                      // child: Center(
                      //   child: const CustomText(
                      //     text: "Local Address",
                      //     fontWeight: FontWeight.w700,
                      //     fontSize: 22,
                      //     wordSpacing: 2,
                      //   ),
                      // ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomText(
                    text: "Flat no./House no.*",
                    fontSize: 19,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const SizedBox(
                    width: 330,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'House no',
                          labelStyle: TextStyle(fontSize: 13)),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const CustomText(
                    text: "Street name/Area Name*",
                    fontSize: 19,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const SizedBox(
                    width: 330,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Area name',
                          labelStyle: TextStyle(fontSize: 13)),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const CustomText(
                    text: "Landmark* ",
                    fontSize: 19,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const SizedBox(
                    width: 330,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Landmark',
                          labelStyle: TextStyle(fontSize: 13)),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const CustomText(
                    text: "City*",
                    fontSize: 19,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    width: 330,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'city',
                          labelStyle: TextStyle(fontSize: 13)),
                    ),
                  ),
                  CustomText(
                    text: "State*",
                    fontSize: 19,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    width: 330,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'state',
                          labelStyle: TextStyle(fontSize: 13)),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const CustomText(
                    text: "Pin code*",
                    fontSize: 19,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    width: 330,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Pin no',
                          labelStyle: TextStyle(fontSize: 13)),
                    ),
                  ),
                  CustomText(
                    text: "Country*",
                    fontSize: 19,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    width: 330,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'country',
                          labelStyle: TextStyle(fontSize: 13)),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                      CustomText(
                        text: 'Permanent Address same as local address',
                        fontSize: 12.8,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomText(
                    text: "Flat no./House no.*",
                    fontSize: 19,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const SizedBox(
                    width: 330,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'House no',
                          labelStyle: TextStyle(fontSize: 13)),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const CustomText(
                    text: "Street name/Area Name*",
                    fontSize: 19,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const SizedBox(
                    width: 330,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Area name',
                          labelStyle: TextStyle(fontSize: 13)),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const CustomText(
                    text: "Landmark* ",
                    fontSize: 19,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const SizedBox(
                    width: 330,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Landmark',
                          labelStyle: TextStyle(fontSize: 13)),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const CustomText(
                    text: "City*",
                    fontSize: 19,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    width: 330,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'city',
                          labelStyle: TextStyle(fontSize: 13)),
                    ),
                  ),
                  CustomText(
                    text: "State*",
                    fontSize: 19,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    width: 330,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'state',
                          labelStyle: TextStyle(fontSize: 13)),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const CustomText(
                    text: "Pin code*",
                    fontSize: 19,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    width: 330,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Pin no',
                          labelStyle: TextStyle(fontSize: 13)),
                    ),
                  ),
                  CustomText(
                    text: "Country*",
                    fontSize: 19,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    width: 330,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'country',
                          labelStyle: TextStyle(fontSize: 13)),
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
