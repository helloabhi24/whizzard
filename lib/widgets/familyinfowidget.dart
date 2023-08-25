import 'package:flutter/material.dart';

import '../utils/color.dart';
import '../utils/customText.dart';
import 'package:get/get.dart';

class Familyinfo extends StatefulWidget {
  const Familyinfo({super.key});

  @override
  State<Familyinfo> createState() => _FamilyinfoState();
}

class _FamilyinfoState extends State<Familyinfo> {
  String? gender;
  String? radioVlaue;
  bool? isAdd = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/bc.jpg"), fit: BoxFit.fill),
            ),
            child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
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
                          text: "  FAMILY INFORMATION",
                          fontWeight: FontWeight.w700,
                          fontSize: 22,
                          wordSpacing: 2,
                        ),
                      )
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 14, top: 20),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: "Marital status",
                            fontSize: 18,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Radio(
                                  value: "Single",
                                  groupValue: radioVlaue,
                                  onChanged: (v) {
                                    setState(() {
                                      radioVlaue = v;
                                    });
                                  }),
                              CustomText(
                                text: "Single*",
                                fontSize: 16,
                              ),
                              Row(
                                children: [
                                  Radio(
                                      value: 'Married',
                                      groupValue: radioVlaue,
                                      onChanged: (v) {
                                        setState(() {
                                          radioVlaue = v;
                                        });
                                      }),
                                  CustomText(
                                    text: "Married*",
                                    fontSize: 16,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              bottom: 25,
                            ),
                            child: CustomText(
                              text: "Father/Husband Name",
                              fontSize: 18,
                            ),
                          ),
                        ]),
                  ),
                  SizedBox(
                    width: 330,
                    height: 90,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Father/husband Name',
                          labelStyle: TextStyle(fontSize: 13)),
                    ),
                  ),
                  Divider(
                    height: 7,
                    thickness: 1.5,
                    indent: 10,
                    endIndent: 7,
                    color: Color.fromARGB(255, 131, 204, 235),
                  ),
                  Row(
                    children: [
                      Column(children: [
                        Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 20, left: 20),
                              child: CustomText(
                                text: 'Kids Detail',
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 10, bottom: 20, left: 150),
                              child: OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                    elevation: 2, shadowColor: Colors.white),
                                onPressed: () {
                                  debugPrint('Received click');
                                  setState(() {
                                    isAdd = true;
                                  });
                                },
                                child: CustomText(
                                  text: "Add",
                                  fontSize: 17,
                                  color: Dblue,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Visibility(
                          visible: isAdd!,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 0),
                            child: Container(
                              height: 320,
                              width: 300,
                              color: Color.fromARGB(104, 194, 217, 238),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                    width: 290,
                                    child: CustomText(
                                      text: "Name*",
                                      fontSize: 18,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 40,
                                    width: 230,
                                    child: TextField(
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          labelText: 'Name'),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 290,
                                    child: CustomText(
                                      text: "Date of Birth*",
                                      fontSize: 18,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 40,
                                    width: 230,
                                    child: TextField(
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          labelText: 'DOB'),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 290,
                                    child: const CustomText(
                                      text: "Gender *",
                                      fontSize: 18,
                                    ),
                                  ),
                                  RadioListTile(
                                    title: Text("Male"),
                                    value: "male",
                                    groupValue: gender,
                                    onChanged: (value) {
                                      setState(() {
                                        gender = value.toString();
                                      });
                                    },
                                  ),
                                  RadioListTile(
                                    title: Text("Female"),
                                    value: "female",
                                    groupValue: gender,
                                    onChanged: (value) {
                                      setState(() {
                                        gender = value.toString();
                                      });
                                    },
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      OutlinedButton(
                                          style: OutlinedButton.styleFrom(
                                              elevation: 1,
                                              shape: StadiumBorder(),
                                              shadowColor: Colors.white),
                                          onPressed: () => setState(() {
                                                isAdd = false;
                                              }),
                                          child: CustomText(
                                            text: "Cancel",
                                            color: Dblue,
                                          )),
                                      SizedBox(
                                        height: 37,
                                        width: 80,
                                        child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                elevation: 2,
                                                shape: StadiumBorder()),
                                            onPressed: () {},
                                            child: (Text(
                                              'Save',
                                              style: TextStyle(fontSize: 13),
                                            ))),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                          width: 100,
                          child: ElevatedButton(
                              onPressed: () {},
                              child: (Text(
                                'SAVE',
                                style: TextStyle(fontSize: 15),
                              ))),
                        ),
                      ]),
                    ],
                  )
                ])));
  }
}
