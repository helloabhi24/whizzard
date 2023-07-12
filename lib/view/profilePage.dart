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
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              width: 360,
              height: 250,
              color: Colors.blue,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    CircleAvatar(
                      radius: 35,
                      child: Icon(
                        Icons.abc,
                        size: 50,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Name',
                      style: TextStyle(
                          fontSize: 20, color: Color.fromARGB(255, 95, 39, 39)),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    CustomText(
                      text: "BHO-AMZ-Lal GHATI(BHOE)",
                      color: whiteColor,
                      fontSize: 16,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    CustomText(
                      text: "Driver & Associate || 1234567890",
                      fontSize: 16,
                      color: whiteColor,
                    )
                  ]),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 3),
                    child: Container(
                      margin: EdgeInsets.only(left: 8, right: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 209, 209, 219),
                            blurRadius: 2.0,
                            spreadRadius: 0.0,
                            offset: Offset(
                                0.0, 2.0), // shadow direction: bottom right
                          )
                        ],
                        color: Color.fromARGB(96, 161, 165, 179),
                      ),
                      height: 75,
                      width: 360,
                      child: ListTile(
                        onTap: () => Get.to(PersonalInfoWidget()),
                        leading: Icon(Icons.person),
                        iconColor: Color.fromARGB(255, 102, 100, 100),
                        title: CustomText(
                          text: "Personal Information",
                        ),
                        subtitle: CustomText(
                          text: "Aadhar, Pan, Address",
                        ),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 8, right: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 209, 209, 219),
                          blurRadius: 2.0,
                          spreadRadius: 0.0,
                          offset: Offset(
                              0.0, 2.0), // shadow direction: bottom right
                        )
                      ],
                      color: Color.fromARGB(96, 161, 165, 179),
                    ),
                    height: 75,
                    width: 360,
                    child: ListTile(
                      onTap: () => Get.to(VehicleInfoWidget()),
                      leading: Icon(Icons.directions_car),
                      iconColor: Color.fromARGB(255, 102, 100, 100),
                      title: CustomText(
                        text: "Vehicle Details",
                      ),
                      subtitle: CustomText(
                        text: "Tax, Pollution, Insurance, Fitness",
                      ),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 3),
                    child: Container(
                      margin: EdgeInsets.only(left: 8, right: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 209, 209, 219),
                            blurRadius: 2.0,
                            spreadRadius: 0.0,
                            offset: Offset(
                                0.0, 2.0), // shadow direction: bottom right
                          )
                        ],
                        color: Color.fromARGB(96, 161, 165, 179),
                      ),
                      height: 75,
                      width: 360,
                      child: ListTile(
                        onTap: () => Get.to(BankInfoPage()),
                        leading: Icon(Icons.account_balance),
                        iconColor: Color.fromARGB(255, 102, 100, 100),
                        title: CustomText(
                          text: "Bank Details",
                        ),
                        subtitle: CustomText(
                          text: "Bank, IFSC, Account",
                        ),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                  ),
                  CustomText(
                    text: "Other Account Info",
                    fontSize: 23,
                    color: Colors.grey,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      margin: EdgeInsets.only(left: 8, right: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 209, 209, 219),
                            blurRadius: 2.0,
                            spreadRadius: 0.0,
                            offset: Offset(
                                0.0, 2.0), // shadow direction: bottom right
                          )
                        ],
                        color: Color.fromARGB(96, 161, 165, 179),
                      ),
                      height: 50,
                      width: 360,
                      child: ListTile(
                        title: CustomText(
                          text: "Blood Group",
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 8, right: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 209, 209, 219),
                          blurRadius: 2.0,
                          spreadRadius: 0.0,
                          offset: Offset(
                              0.0, 2.0), // shadow direction: bottom right
                        )
                      ],
                      color: Color.fromARGB(96, 161, 165, 179),
                    ),
                    height: 75,
                    width: 360,
                    child: ListTile(
                      leading: Icon(Icons.directions_car),
                      iconColor: Color.fromARGB(255, 102, 100, 100),
                      title: CustomText(
                        text: "Vehicle Details",
                      ),
                      subtitle: CustomText(
                        text: "Tax, Pollution, Insurance, Fitness",
                      ),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 3),
                    child: Container(
                      margin: EdgeInsets.only(left: 8, right: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 209, 209, 219),
                            blurRadius: 2.0,
                            spreadRadius: 0.0,
                            offset: Offset(
                                0.0, 2.0), // shadow direction: bottom right
                          )
                        ],
                        color: Color.fromARGB(96, 161, 165, 179),
                      ),
                      height: 75,
                      width: 360,
                      child: ListTile(
                        leading: Icon(Icons.account_balance),
                        iconColor: Color.fromARGB(255, 102, 100, 100),
                        title: CustomText(
                          text: "Bank Details",
                        ),
                        subtitle: CustomText(
                          text: "Bank, IFSC, Account",
                        ),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ]),
        ),
      );
}
