import 'package:flutter/material.dart';
import 'package:HTW/utils/customText.dart';
import '../utils/color.dart';
import '../widgets/drawerMenuWidget.dart';
import 'package:get/get.dart';

class Edit_profile extends StatelessWidget {
  final VoidCallback openDrawer;
  const Edit_profile({super.key, required this.openDrawer});

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
          shadowColor: Colors.transparent,
          backgroundColor: Color.fromARGB(137, 113, 8, 134),
          leading: DrawerMenuWidget(onClicked: openDrawer),
          title: const Text("Edit Profile"),
          iconTheme: const IconThemeData(color: Colors.black),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 17),
              child: GestureDetector(
                onTap: () => Get.back(),
                child: Icon(
                  Icons.cancel,
                  size: 25,
                  color: Color.fromARGB(255, 227, 252, 5),
                ),
              ),
            ),
          ]),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.only(left: 12),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            width: 360,
            height: 130,
            color: Color.fromARGB(179, 238, 226, 226),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                    radius: 42,
                    child: Text(
                      "PIC",
                      style: TextStyle(
                          wordSpacing: 10,
                          fontWeight: FontWeight.w700,
                          fontSize: 20),
                    )),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 50,
                  ),
                  child: Icon(
                    Icons.zoom_in,
                    size: 30,
                  ),
                ),
                CustomText(
                  text: 'Change Image',
                  color: Color.fromARGB(255, 99, 85, 44),
                  fontSize: 18,
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          CustomText(
            text: "Name*",
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
                  labelText: 'Enter the name',
                  labelStyle: TextStyle(fontSize: 13)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          const CustomText(
            text: "Role*",
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
                  labelText: 'Driver & Associate',
                  labelStyle: TextStyle(fontSize: 13)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          const CustomText(
            text: "Client Employee Id:*",
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
                  labelText: 'Enter Id',
                  labelStyle: TextStyle(fontSize: 13)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          const CustomText(
            text: "Emergency Contact Person Name*",
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
                  labelText: 'Enter the name',
                  labelStyle: TextStyle(fontSize: 13)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          CustomText(
            text: "Contact Number Emergency*",
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
                  labelText: 'Enter the no.',
                  labelStyle: TextStyle(fontSize: 13)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: SizedBox(
              width: 100,
              child: Card(
                color: darkBlueColor,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
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
          )
        ]),
      )));
}
