import 'package:flutter/material.dart';
import 'package:HTW/utils/color.dart';
import 'package:HTW/view/Add_vehical_info.dart';
import 'package:get/get.dart';

import '../utils/customText.dart';

class VehicleInfoWidget extends StatelessWidget {
  const VehicleInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/bc.jpg"), fit: BoxFit.fill),
        ),
        child: Column(children: [
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
            child: Center(
              child: const CustomText(
                text: "VAHICLE INFORMATION",
                fontWeight: FontWeight.w700,
                fontSize: 22,
                wordSpacing: 2,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 35),
            child: SizedBox(
              height: 70,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                elevation: 3,
                child: ListTile(
                  leading: Icon(Icons.check),
                  title: Column(
                    children: [
                      CustomText(
                        text: "Vehicle-CT 100",
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      CustomText(
                        text: 'MP-04-QH-7016',
                        fontSize: 14,
                      )
                    ],
                  ),
                  trailing: Icon(Icons.arrow_forward),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: SizedBox(
              height: 40,
              width: 330,
              child: OutlinedButton(
                onPressed: () => Get.to(Add_Vehicle_info()),
                child: CustomText(
                  text: "Add New Vehical",
                  fontSize: 18,
                  color: Dblue,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 440),
            child: SizedBox(
                height: 40,
                width: 150,
                child: ElevatedButton(
                    onPressed: () {},
                    child: (Text(
                      'NEXT',
                      style: TextStyle(fontSize: 18),
                    )))),
          )
        ]),
      ),
    );
  }
}
