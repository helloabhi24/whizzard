import 'package:HTW/utils/customText.dart';
import 'package:HTW/view/pollution.dart';
import 'package:flutter/material.dart';
import '../widgets/drawerMenuWidget.dart';
import 'Insurance_page.dart';
import 'package:get/get.dart';

class MyPlan extends StatelessWidget {
  final VoidCallback openDrawer;
  const MyPlan({super.key, required this.openDrawer});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          leading: DrawerMenuWidget(onClicked: openDrawer),
          title: const Text("My Plan"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(17)),
              color: Color.fromARGB(255, 221, 83, 59),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomText(
                  text: 'Name',
                  fontSize: 17,
                  color: Colors.white,
                ),
                GestureDetector(
                  onTap: () => Get.off(Pollution()),
                  child: CustomText(
                    text: 'Plan',
                    fontSize: 17,
                    color: Colors.white,
                  ),
                ),
                GestureDetector(
                  onTap: () => Get.off(Insurance()),
                  child: CustomText(
                    text: 'Info',
                    fontSize: 17,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            height: 40,
            width: 340,
          ),
        ),
      );
}
