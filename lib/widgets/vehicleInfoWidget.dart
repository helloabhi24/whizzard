import 'package:flutter/material.dart';

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
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const CustomText(
              text: "VAHICLE INFORMATION",
              fontWeight: FontWeight.w700,
              fontSize: 22,
              wordSpacing: 2,
            ),
            SizedBox(
              height: 30,
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.check),
                title: CustomText(
                  text: "Tax",
                ),
                trailing: Icon(Icons.arrow_forward),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.check),
                title: CustomText(
                  text: "Pollution",
                ),
                trailing: Icon(Icons.arrow_forward),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.check),
                title: CustomText(
                  text: "Insurance",
                ),
                trailing: Icon(Icons.arrow_forward),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.check),
                title: CustomText(
                  text: "Fitness",
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
