import 'package:flutter/material.dart';
import 'package:whizzard/utils/color.dart';
import 'package:whizzard/utils/customText.dart';
import '../widgets/drawerMenuWidget.dart';
import '../widgets/personalInfoWidget.dart';
import 'package:get/get.dart';

import '../widgets/vehicleInfoWidget.dart';
import 'bankInfoPage.dart';

class ProfilePage extends StatelessWidget {
  final VoidCallback openDrawer;
  const ProfilePage({super.key, required this.openDrawer});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          shadowColor: Colors.transparent,
          backgroundColor: Colors.red,
          leading: DrawerMenuWidget(onClicked: openDrawer),
          title: const Text("Profile Page"),
        ),
        body: Column(
          children: [
            Container(
              height: 200,
              color: Colors.red,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(),
                    CustomText(
                      text: "BHO-AMZ-Lal GHATI(BHOE)",
                      color: whiteColor,
                    ),
                    CustomText(
                      text: "Driver & Associate || 1234567890",
                      color: whiteColor,
                    )
                  ]),
            ),
            GestureDetector(
              onTap: () => Get.to(PersonalInfoWidget()),
              child: ListTile(
                leading: Icon(Icons.person),
                title: CustomText(
                  text: "Personal Information",
                ),
                subtitle: CustomText(
                  text: "Aadhar, Pan, Address",
                ),
                trailing: Icon(Icons.arrow_forward),
              ),
            ),
            GestureDetector(
              onTap: () => Get.to(VehicleInfoWidget()),
              child: ListTile(
                leading: Icon(Icons.directions_car),
                title: CustomText(
                  text: "Vehicle Details",
                ),
                subtitle: CustomText(
                  text: "Tax, Pollution, Insurance, Fitness",
                ),
                trailing: Icon(Icons.arrow_forward),
              ),
            ),
            ListTile(
              onTap: () => Get.to(BankInfoPage()),
              leading: Icon(Icons.account_balance),
              title: CustomText(
                text: "Bank Details",
              ),
              subtitle: CustomText(
                text: "Bank, IFSC, Account",
              ),
              trailing: Icon(Icons.arrow_forward),
            )
          ],
        ),
      );
}
