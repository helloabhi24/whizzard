import 'package:flutter/material.dart';
import 'package:whizzard/utils/customText.dart';
import 'package:whizzard/view/Up_date_Addresspage.dart';
import 'package:get/get.dart';

class Address extends StatefulWidget {
  const Address({super.key});

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {
  String? gender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/bc.jpg"),
                fit: BoxFit.fitHeight),
          ),
          child: Padding(
            padding: EdgeInsets.all(30.0),
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: "Address",
                      fontWeight: FontWeight.w700,
                      fontSize: 22,
                      wordSpacing: 2,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CustomText(
                      text: "Local Address*",
                      fontSize: 19,
                    ),
                    SizedBox(
                      height: 5,
                    ),

                    SizedBox(
                      width: 280,
                      height: 65,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Local Address'),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomText(
                      text: "Permanent Address *",
                      fontSize: 19,
                    ),
                    SizedBox(
                      width: 280,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Local Address'),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomText(
                      text: "Up Date Address*",
                      fontSize: 19,
                    ),
                    SizedBox(
                      height: 40,
                      width: 280,
                      child: ElevatedButton(
                          onPressed: () {
                            Get.to(Up_Adress());
                          },
                          child: CustomText(
                            text: 'Click here ',
                          )),
                    )
                    //  SizedBox(width: 30,height: 300,
                    //    child: GestureDetector(onTap: () => Get.to(Up_Adress()),
                    //      child: Card(elevation: 5,child: CustomText(text: ('Up Date Address'),color: Color.fromARGB(255, 7, 85, 255),)

                    //       ),
                    //    ),
                    //  ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
