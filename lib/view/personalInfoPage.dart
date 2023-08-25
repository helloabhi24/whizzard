import 'package:HTW/view/Dropdown.dart';
import 'package:flutter/material.dart';
import 'package:HTW/utils/color.dart';
import 'package:HTW/utils/customText.dart';
import 'package:get/get.dart';

class PersonalInfoPage extends StatefulWidget {
  const PersonalInfoPage({super.key});
  @override
  State<PersonalInfoPage> createState() => _PersonalInfoPageState();
}

class _PersonalInfoPageState extends State<PersonalInfoPage> {
  String? gender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 780,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/bc.jpg"), fit: BoxFit.fill),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 50),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
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
                              text: "   UPDATE PERSONAL \n       INFORMATION",
                              fontWeight: FontWeight.w700,
                              fontSize: 22,
                              wordSpacing: 2,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomText(
                    text: "Email ID *",
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const SizedBox(
                    width: 280,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Email ID',
                          labelStyle: TextStyle(fontSize: 13)),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const CustomText(
                    text: "Corprate Email ID *",
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const SizedBox(
                    width: 280,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Email ID',
                          labelStyle: TextStyle(fontSize: 13)),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const CustomText(
                    text: "Alternate Moblie Number",
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const SizedBox(
                    width: 280,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Mobile Number',
                          labelStyle: TextStyle(fontSize: 13)),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const CustomText(
                    text: "Gender *",
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
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
                  GestureDetector(
                    onTap: () => Get.to(DropdownButtonApp()),
                    child: const CustomText(
                      text: "Mother Tongue *",
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    width: 280,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Mobile Number',
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
                        padding: const EdgeInsets.all(10.0),
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
