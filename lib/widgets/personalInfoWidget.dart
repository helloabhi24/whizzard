import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whizzard/view/Address.dart';
import 'package:whizzard/view/Clothing.dart';
import 'package:whizzard/view/Driving_licence.dart';
import 'package:whizzard/view/panpage.dart';
import 'package:whizzard/widgets/familyinfowidget.dart';
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                elevation: 5,
                child: ListTile(
                  onTap: () => Get.to(PersonalInfoPage()),
                  leading: Icon(Icons.check),
                  title: const CustomText(
                    text: "Personal",
                    fontSize: 19,
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                elevation: 5,
                child: ListTile(
                  leading: Icon(Icons.check),
                  onTap: () => Get.to(
                    Familyinfo(),
                  ),
                  title: CustomText(
                    text: "Family Information",
                    fontSize: 19,
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                elevation: 5,
                child: ListTile(
                  onTap: () => Get.to(AadharPage()),
                  leading: Icon(Icons.check),
                  title: CustomText(
                    text: "Aadhar Card",
                    fontSize: 19,
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                elevation: 5,
                child: ListTile(
                  onTap: () => Get.to(PanCard()),
                  leading: Icon(Icons.check),
                  title: CustomText(
                    text: "PAN Card",
                    fontSize: 19,
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                elevation: 5,
                child: ListTile(
                  onTap: () => Get.to(DrivingL()),
                  leading: Icon(Icons.check),
                  title: CustomText(
                    text: "Driving License",
                    fontSize: 19,
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                elevation: 5,
                child: ListTile(
                  onTap: () => Get.to(Address()),
                  leading: Icon(Icons.check),
                  title: CustomText(
                    text: "Address",
                    fontSize: 19,
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                elevation: 5,
                child: ListTile(onTap: () => Get.to(Clothing()),
                  leading: Icon(Icons.check),
                  title: CustomText(
                    text: "Clothing",
                    fontSize: 19,
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60, bottom: 40),
              child: SizedBox(
                  height: 40,
                  width: 330,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(), elevation: 10),
                      onPressed: () {},
                      child: (Text(
                        'NEXT',
                        style: TextStyle(fontSize: 18),
                      )))),
            ),
          ],
        ),
      ),
    );
  }
}
