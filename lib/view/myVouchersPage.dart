// import 'package:HTW/view/pollution.dart';
import 'package:HTW/view/pollution.dart';
import 'package:flutter/material.dart';
import '../utils/customText.dart';
import '../widgets/drawerMenuWidget.dart';
import 'package:get/get.dart';

class MyVouchers extends StatelessWidget {
  final VoidCallback openDrawer;
  const MyVouchers({super.key, required this.openDrawer});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          leading: DrawerMenuWidget(onClicked: openDrawer),
          title: const Text("My Voucher"),
        ),
        body: Column(
          children: [
            Padding(
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
                      text: 'My Vouchers',
                      fontSize: 17,
                      color: Colors.white,
                    ),
                    GestureDetector(
                      onTap: () => Get.off(Pollution()),
                      child: CustomText(
                        text: 'Created by Me',
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
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: CustomText(
                text: 'No Vouchers added to you',
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      );
}
