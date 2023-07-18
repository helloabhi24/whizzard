import 'package:flutter/material.dart';
import 'package:whizzard/utils/color.dart';
import 'package:whizzard/utils/customText.dart';
import 'package:get/get.dart';
import 'package:whizzard/view/pollution.dart';

class Add_Vehicle_info extends StatefulWidget {
  Add_Vehicle_info({super.key});

  @override
  State<Add_Vehicle_info> createState() => _Add_Vehicle_infoState();
}

class _Add_Vehicle_infoState extends State<Add_Vehicle_info> {
  String? gender;
  bool isChecked = false;
  bool _isSelected6 = false;
  bool _isSelected7 = false;
  bool _isSelected8 = false;

  bool _isSelected9 = false;
  bool _isSelected10 = false;
  bool _isSelected11 = false;
  bool _isSelected12 = false;
  bool _isSelected13 = false;
  bool _isSelected14 = false;
  bool _isSelected15 = false;
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
            padding: const EdgeInsets.only(top: 50, left: 13),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: CustomText(
                      text: "Add Vehicle Information",
                      fontWeight: FontWeight.w700,
                      fontSize: 22,
                      wordSpacing: 2,
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(22)),
                      color: Colors.blue,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomText(
                          text: 'Vehicle/RC',
                          fontSize: 17,
                          color: Colors.white,
                        ),
                        GestureDetector(
                          onTap: () => Get.to(Pollution()),
                          child: CustomText(
                            text: 'Pollution',
                            fontSize: 17,
                            color: Colors.white,
                          ),
                        ),
                        CustomText(
                          text: 'insurance',
                          fontSize: 17,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    height: 40,
                    width: 340,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomText(
                    text: "Vehicle Registration No*",
                    fontSize: 19,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const SizedBox(
                    width: 280,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Please Enter Vehicle Number'),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  const CustomText(
                    text: "Vehicle Type*",
                    fontSize: 19,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ChoiceChip(
                          labelPadding:
                              EdgeInsets.symmetric(horizontal: 18, vertical: 2),
                          selectedColor: pblue,
                          label: const Icon(
                            Icons.bike_scooter,
                            size: 30,
                            color: Color.fromARGB(255, 119, 133, 68),
                          ),
                          selected: _isSelected6,
                          onSelected: (newBoolValue) {
                            setState(() {
                              _isSelected6 = newBoolValue;
                            });
                          }),
                      ChoiceChip(
                          labelPadding:
                              EdgeInsets.symmetric(horizontal: 18, vertical: 2),
                          selectedColor: pblue,
                          label: const Icon(
                            Icons.car_rental,
                            size: 30,
                            color: Color.fromARGB(255, 241, 87, 40),
                          ),
                          selected: _isSelected7,
                          onSelected: (newBoolValue) {
                            setState(() {
                              _isSelected7 = newBoolValue;
                            });
                          }),
                      ChoiceChip(
                          labelPadding:
                              EdgeInsets.symmetric(horizontal: 18, vertical: 2),
                          selectedColor: pblue,
                          label: const Icon(
                            Icons.fire_truck,
                            size: 30,
                            color: Color.fromARGB(255, 126, 89, 68),
                          ),
                          selected: _isSelected8,
                          onSelected: (newBoolValue) {
                            setState(() {
                              _isSelected8 = newBoolValue;
                            });
                          }),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const CustomText(
                    text: "Vehicle Brand*",
                    fontSize: 19,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const SizedBox(
                    width: 280,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Select Vehicle Brand'),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const CustomText(
                    text: "Vehicle Variant* ",
                    fontSize: 19,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const SizedBox(
                    width: 280,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Select Vehicle Variant'),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const CustomText(
                    text: "Vehicle Model*",
                    fontSize: 19,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    width: 280,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Select Vehicle Model'),
                    ),
                  ),
                  CustomText(
                    text: "Vehicle Tonnage*",
                    fontSize: 19,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    width: 280,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Select Vehicle Tonnage'),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const CustomText(
                    text: "Vehicle Class*",
                    fontSize: 19,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    ChoiceChip(
                        shape: StadiumBorder(
                          side: BorderSide(color: Colors.black, width: 2),
                        ),
                        selectedColor: pblue,
                        label: const CustomText(
                          text: 'MC 50CC',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                        selected: _isSelected9,
                        onSelected: (newBoolValue) {
                          setState(() {
                            _isSelected9 = newBoolValue;
                          });
                        }),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: ChoiceChip(
                          shape: StadiumBorder(
                            side: BorderSide(color: Colors.black, width: 2),
                          ),
                          selectedColor: pblue,
                          label: const CustomText(
                            text: 'LVM-NT',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                          selected: _isSelected10,
                          onSelected: (newBoolValue) {
                            setState(() {
                              _isSelected10 = newBoolValue;
                            });
                          }),
                    ),
                  ]),
                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    ChoiceChip(
                        shape: StadiumBorder(
                          side: BorderSide(color: Colors.black, width: 2),
                        ),
                        selectedColor: pblue,
                        label: const CustomText(
                          text: 'FVG',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                        selected: _isSelected11,
                        onSelected: (newBoolValue) {
                          setState(() {
                            _isSelected11 = newBoolValue;
                          });
                        }),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: ChoiceChip(
                          shape: StadiumBorder(
                            side: BorderSide(color: Colors.black, width: 2),
                          ),
                          selectedColor: pblue,
                          label: const CustomText(
                            text: 'MC EX50CC',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                          selected: _isSelected12,
                          onSelected: (newBoolValue) {
                            setState(() {
                              _isSelected12 = newBoolValue;
                            });
                          }),
                    ),
                  ]),
                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    ChoiceChip(
                        shape: StadiumBorder(
                          side: BorderSide(color: Colors.black, width: 2),
                        ),
                        selectedColor: pblue,
                        label: const CustomText(
                          text: 'MCWG',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                        selected: _isSelected13,
                        onSelected: (newBoolValue) {
                          setState(() {
                            _isSelected13 = newBoolValue;
                          });
                        }),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: ChoiceChip(
                          shape: StadiumBorder(
                            side: BorderSide(color: Colors.black, width: 2),
                          ),
                          selectedColor: pblue,
                          label: const CustomText(
                            text: 'HGMV',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                          selected: _isSelected14,
                          onSelected: (newBoolValue) {
                            setState(() {
                              _isSelected14 = newBoolValue;
                            });
                          }),
                    ),
                    ChoiceChip(
                        shape: StadiumBorder(
                          side: BorderSide(color: Colors.black, width: 2),
                        ),
                        selectedColor: pblue,
                        label: const CustomText(
                          text: 'HPMV',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                        selected: _isSelected15,
                        onSelected: (newBoolValue) {
                          setState(() {
                            _isSelected15 = newBoolValue;
                          });
                        }),
                  ]),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(children: [
                    Icon(
                      Icons.upload_file,
                      color: Color.fromARGB(255, 3, 114, 165),
                      size: 40,
                    ),
                    const SizedBox(
                      height: 45,
                      width: 250,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Upload Vehicle RC Front Side Photo*',
                        ),
                      ),
                    ),
                  ]),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Row(children: [
                      Icon(
                        Icons.upload_file,
                        color: Color.fromARGB(255, 3, 114, 165),
                        size: 40,
                      ),
                      const SizedBox(
                        height: 45,
                        width: 250,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Upload Vehicle RC Back Side Photo*',
                          ),
                        ),
                      ),
                    ]),
                  ),
                  Row(children: [
                    Icon(
                      Icons.upload_file,
                      color: Color.fromARGB(255, 3, 114, 165),
                      size: 40,
                    ),
                    const SizedBox(
                      height: 45,
                      width: 250,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Upload Vehicle Front  Photo*',
                        ),
                      ),
                    ),
                  ]),
                  const SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: SizedBox(
                      width: 270,
                      child: Card(
                        color: darkBlueColor,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Center(
                            child: CustomText(
                              text: "Submit",
                              fontSize: 15,
                              color: whiteColor,
                              fontWeight: FontWeight.w500,
                              wordSpacing: 1,
                            ),
                          ),
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
    );
  }
}
