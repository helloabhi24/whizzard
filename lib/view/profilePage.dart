import 'package:HTW/view/Drop.dart';
import 'package:HTW/view/Edit_prifile.dart';
import 'package:HTW/view/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:HTW/utils/color.dart';
import 'package:HTW/utils/customText.dart';
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
            backgroundColor: Color.fromARGB(137, 113, 8, 134),
            leading: DrawerMenuWidget(onClicked: openDrawer),
            title: const Text("Profile Page"),
            iconTheme: const IconThemeData(color: Colors.black),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 12),
                child: GestureDetector(
                    onTap: () => Get.to(Edit_profile(openDrawer: openDrawer)),
                    child: Icon(Icons.edit,
                        color: Color.fromARGB(255, 227, 252, 5))),
              ),
            ]),
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              width: 360,
              height: 250,
              color: Color.fromARGB(255, 155, 194, 209),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                            radius: 35,
                            child: GestureDetector(
                              onTap: () => Get.to(DropdownButtonApp()),
                              child: Text(
                                "PIC",
                                style: TextStyle(
                                    wordSpacing: 10,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20),
                              ),
                            )),
                        GestureDetector(
                          onTap: () => Get.to(FilePickerScreen()),
                          child: Icon(
                            Icons.zoom_in,
                            size: 30,
                          ),
                        )
                      ],
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
                      text: "Client Site Code",
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
                      color: Colors.blueGrey),
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
                        color: Color.fromARGB(95, 208, 211, 221),
                      ),
                      height: 50,
                      width: 360,
                      child: ListTile(
                        title: CustomText(
                          text:
                              "Blood Group                                             A+",
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
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
                        color: lightgery),
                    height: 50,
                    width: 360,
                    child: ListTile(
                      title: CustomText(
                        text: "Emergency Contact          7906509341",
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
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
                        color: lightgery,
                      ),
                      height: 50,
                      width: 360,
                      child: ListTile(
                        title: CustomText(
                          text: "Holydays List",
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
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
                          color: lightgery),
                      height: 50,
                      width: 360,
                      child: ListTile(
                        title: CustomText(
                          text: "Insurance Card",
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 3),
                    child: Container(
                      margin: EdgeInsets.only(left: 8, right: 8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromARGB(255, 209, 209, 219),
                              blurRadius: 2.0,
                              spreadRadius: 0.0,
                              offset: Offset(
                                  0.0, 2.0), // shadow direction: bottom right
                            )
                          ],
                          color: lightgery),
                      height: 50,
                      width: 360,
                      child: ListTile(
                        title: CustomText(
                          text: "Payslip",
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                        trailing: Icon(Icons.calendar_month),
                      ),
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
                          color: lightgery),
                      height: 50,
                      width: 360,
                      child: ListTile(
                        title: CustomText(
                          text: "ID Card",
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
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
                          color: lightgery),
                      height: 50,
                      width: 360,
                      child: ListTile(
                        title: CustomText(
                          text: "Verification Status",
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                        trailing: Icon(
                          Icons.check_box,
                          color: Colors.blue,
                        ),
                      ),
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
                          color: lightgery),
                      height: 50,
                      width: 360,
                      child: ListTile(
                        title: CustomText(
                          text: "Contract Agreement",
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                  ),
                  CustomText(
                    text: "User Activity",
                    fontSize: 23,
                    color: Colors.blueGrey,
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
                          color: lightgery),
                      height: 50,
                      width: 360,
                      child: ListTile(
                        title: CustomText(
                          text:
                              "You are referred by                               NA",
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
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
                          color: lightgery),
                      height: 50,
                      width: 360,
                      child: ListTile(
                        title: CustomText(
                          text: "last Login          sat Jul 08 2023 8:16 PM",
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
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
