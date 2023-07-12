import 'package:flutter/material.dart';
import 'package:whizzard/utils/color.dart';
import 'package:whizzard/utils/customText.dart';

class BankInfoPage extends StatefulWidget {
  const BankInfoPage({super.key});

  @override
  State<BankInfoPage> createState() => _BankInfoPageState();
}

class _BankInfoPageState extends State<BankInfoPage> {
  String? gender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          Center(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/bc.jpg"),
                    fit: BoxFit.fill),
              ),
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Scrollbar(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CustomText(
                          text: "UPDATE BANK INFORMATION",
                          fontWeight: FontWeight.w700,
                          fontSize: 22,
                          wordSpacing: 2,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const CustomText(
                          text: "Bank's IFSC Code*",
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const SizedBox(
                          width: 200,
                          child: TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'IFSC CODE'),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const CustomText(
                          text: "Bank Name *",
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const SizedBox(
                          width: 280,
                          child: TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Enter Bank Name'),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const CustomText(
                          text: "Bank's Branch Name",
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const SizedBox(
                          width: 280,
                          child: TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Enter Branch Name'),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const CustomText(
                          text: "Branch's Address*",
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const SizedBox(
                          width: 280,
                          child: TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: "Enter Branch's Address"),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const CustomText(
                          text: "Account Number*",
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const SizedBox(
                          width: 280,
                          child: TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: "Account Number"),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const CustomText(
                          text: "Confirm Account Number*",
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const SizedBox(
                          width: 280,
                          child: TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: "Confirm Account Number"),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: SizedBox(
                            // width: 0.52,
                            width: 170,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: blackColor,
                                      radius: 6,
                                    ),
                                    // getwidth(context, 0.020),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    CircleAvatar(
                                      radius: 6,
                                      backgroundColor: whiteColor,
                                    ),
                                    // getwidth(context, 0.020),
                                    // CircleAvatar(
                                    //   radius: 6,
                                    //   backgroundColor:
                                    //       greyColor.withOpacity(0.5),
                                    // ),
                                    // getwidth(context, 0.020),
                                    // CircleAvatar(
                                    //   radius: 6,
                                    //   backgroundColor:
                                    //       greyColor.withOpacity(0.5),
                                    // ),
                                  ],
                                ),
                                IconButton(
                                    // onPressed: () {
                                    //   controller.controller.animateToPage(1,
                                    //       duration:
                                    //           const Duration(milliseconds: 10),
                                    //       curve: Curves.easeIn);
                                    // },
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.arrow_forward,
                                      size: 25,
                                      color: darkBlueColor,
                                    )),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/bc.jpg"),
                    fit: BoxFit.fitHeight),
              ),
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Scrollbar(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CustomText(
                          text: "Account Type*",
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Chip(
                                backgroundColor: darkBlueColor,
                                label: CustomText(
                                  text: "Saving",
                                  color: whiteColor,
                                  fontWeight: FontWeight.w500,
                                )),
                            const SizedBox(
                              width: 20,
                            ),
                            const Chip(
                                label: CustomText(
                              text: "Current",
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ))
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const CustomText(
                          text: "Upload Bank Passbook *",
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const SizedBox(
                          width: 280,
                          child: TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: "Bank Passbook"),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const CustomText(
                          text: "Upload Other Proof *",
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const SizedBox(
                          width: 280,
                          child: TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: "Upload Other Proof"),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const CustomText(
                          text: "Account Holder Name *",
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const SizedBox(
                          width: 280,
                          child: TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: "Account Holder Name"),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const CustomText(
                          text: "Enter Beneficiary Information",
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: Card(
                            color: darkBlueColor,
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: CustomText(
                                text: "Submit",
                                color: whiteColor,
                                fontWeight: FontWeight.w500,
                                wordSpacing: 1,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
