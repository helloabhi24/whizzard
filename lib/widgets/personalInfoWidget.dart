import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utils/customText.dart';
import '../view/aadharPage.dart';
import '../view/personalInfoPage.dart';

class PersonalInfoWidget extends StatelessWidget {
  const PersonalInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/bc.jpg"), fit: BoxFit.fill),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const CustomText(
              text: "PERSONAL INFORMATION",
              fontWeight: FontWeight.w700,
              fontSize: 22,
              wordSpacing: 2,
            ),
            const SizedBox(
              height: 30,
            ),
            Card(
              child: ListTile(
                onTap: () => Get.to(PersonalInfoPage()),
                leading: Icon(Icons.check),
                title: const CustomText(
                  text: "Personal",
                ),
                trailing: Icon(Icons.arrow_forward),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.check),
                title: CustomText(
                  text: "Family Information",
                ),
                trailing: Icon(Icons.arrow_forward),
              ),
            ),
            Card(
              child: ListTile(
                onTap: () => Get.to(AadharPage()),
                leading: Icon(Icons.check),
                title: CustomText(
                  text: "Aadhar Card",
                ),
                trailing: Icon(Icons.arrow_forward),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.check),
                title: CustomText(
                  text: "PAN Card",
                ),
                trailing: Icon(Icons.arrow_forward),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.check),
                title: CustomText(
                  text: "Personal",
                ),
                trailing: Icon(Icons.arrow_forward),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
