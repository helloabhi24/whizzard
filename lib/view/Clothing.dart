import 'package:flutter/material.dart';

import '../utils/color.dart';
import '../utils/customText.dart';
import 'package:get/get.dart';

class Clothing extends StatefulWidget {
  const Clothing({super.key});

  @override
  State<Clothing> createState() => _ClothingState();
}

class _ClothingState extends State<Clothing> {
  String? gender;
  bool _isSelected = false;
  bool _isSelected1 = false;
  bool _isSelected2 = false;
  bool _isSelected3 = false;
  bool _isSelected4 = false;
  bool _isSelected5 = false;
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
  bool _isSelected16 = false;
  bool _isSelected17 = false;
  bool _isSelected18 = false;
  bool _isSelected19 = false;
  bool _isSelected20 = false;
  bool _isSelected21 = false;
  bool _isSelected22 = false;

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
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(57, 128, 130, 199),
                    ),
                    width: 340,
                    height: 60,
                    child: Stack(alignment: Alignment.centerLeft, children: [
                      GestureDetector(
                        onTap: () => Get.back(),
                        child: Icon(
                          Icons.arrow_back,
                          size: 30,
                        ),
                      ),
                      Center(
                        child: const CustomText(
                          text: " CLOTHING DETAIL",
                          fontWeight: FontWeight.w700,
                          fontSize: 22,
                          wordSpacing: 2,
                        ),
                      )
                    ]),
                    // child: Center(
                    //   child: const CustomText(
                    //     text: "CLOTHING DETAIL",
                    //     fontWeight: FontWeight.w700,
                    //     fontSize: 22,
                    //     wordSpacing: 2,
                    //   ),
                    // ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomText(
                    text: "Height*",
                    fontSize: 19,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  const SizedBox(
                    height: 40,
                    width: 100,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const CustomText(
                    text: "Select Trouser (Waist size)36*",
                    fontSize: 19,
                  ),
                  Row(children: [
                    ChoiceChip(
                        selectedColor: pblue,
                        label: const Text('28'),
                        selected: _isSelected,
                        onSelected: (newBoolValue) {
                          setState(() {
                            _isSelected = newBoolValue;
                          });
                        }),
                    ChoiceChip(
                        selectedColor: pblue,
                        label: const Text('30'),
                        selected: _isSelected1,
                        onSelected: (newBoolValue) {
                          setState(() {
                            _isSelected1 = newBoolValue;
                          });
                        }),
                    ChoiceChip(
                        selectedColor: pblue,
                        label: const Text('32'),
                        selected: _isSelected2,
                        onSelected: (newBoolValue) {
                          setState(() {
                            _isSelected2 = newBoolValue;
                          });
                        }),
                    ChoiceChip(
                        selectedColor: pblue,
                        label: const Text('34'),
                        selected: _isSelected3,
                        onSelected: (newBoolValue) {
                          setState(() {
                            _isSelected3 = newBoolValue;
                          });
                        }),
                    ChoiceChip(
                        selectedColor: pblue,
                        label: const Text('36'),
                        selected: _isSelected4,
                        onSelected: (newBoolValue) {
                          setState(() {
                            _isSelected4 = newBoolValue;
                          });
                        }),
                    ChoiceChip(
                        selectedColor: pblue,
                        label: const Text('38'),
                        selected: _isSelected5,
                        onSelected: (newBoolValue) {
                          setState(() {
                            _isSelected5 = newBoolValue;
                          });
                        }),
                  ]),
                  Row(children: [
                    ChoiceChip(
                        selectedColor: pblue,
                        label: const Text('40'),
                        selected: _isSelected6,
                        onSelected: (newBoolValue) {
                          setState(() {
                            _isSelected6 = newBoolValue;
                          });
                        }),
                    ChoiceChip(
                        selectedColor: pblue,
                        label: const Text('42'),
                        selected: _isSelected7,
                        onSelected: (newBoolValue) {
                          setState(() {
                            _isSelected7 = newBoolValue;
                          });
                        }),
                    ChoiceChip(
                        selectedColor: pblue,
                        label: const Text('44'),
                        selected: _isSelected8,
                        onSelected: (newBoolValue) {
                          setState(() {
                            _isSelected8 = newBoolValue;
                          });
                        }),
                  ]),
                  const CustomText(
                    text: "Select Shirt Size *",
                    fontSize: 19,
                  ),
                  Row(children: [
                    ChoiceChip(
                        selectedColor: pblue,
                        label: const Text('XXS'),
                        selected: _isSelected9,
                        onSelected: (newBoolValue) {
                          setState(() {
                            _isSelected9 = newBoolValue;
                          });
                        }),
                    ChoiceChip(
                        selectedColor: pblue,
                        label: const Text('XS'),
                        selected: _isSelected10,
                        onSelected: (newBoolValue) {
                          setState(() {
                            _isSelected10 = newBoolValue;
                          });
                        }),
                    ChoiceChip(
                        selectedColor: pblue,
                        label: const Text('S'),
                        selected: _isSelected11,
                        onSelected: (newBoolValue) {
                          setState(() {
                            _isSelected11 = newBoolValue;
                          });
                        }),
                    ChoiceChip(
                        selectedColor: pblue,
                        label: const Text('M'),
                        selected: _isSelected12,
                        onSelected: (newBoolValue) {
                          setState(() {
                            _isSelected12 = newBoolValue;
                          });
                        }),
                    ChoiceChip(
                        selectedColor: pblue,
                        label: const Text('L'),
                        selected: _isSelected13,
                        onSelected: (newBoolValue) {
                          setState(() {
                            _isSelected13 = newBoolValue;
                          });
                        }),
                  ]),
                  Row(children: [
                    ChoiceChip(
                        selectedColor: pblue,
                        label: const Text('XL'),
                        selected: _isSelected14,
                        onSelected: (newBoolValue) {
                          setState(() {
                            _isSelected14 = newBoolValue;
                          });
                        }),
                    ChoiceChip(
                        selectedColor: pblue,
                        label: const Text('XXL'),
                        selected: _isSelected15,
                        onSelected: (newBoolValue) {
                          setState(() {
                            _isSelected15 = newBoolValue;
                          });
                        }),
                    ChoiceChip(
                        selectedColor: pblue,
                        label: const Text('XXXL'),
                        selected: _isSelected16,
                        onSelected: (newBoolValue) {
                          setState(() {
                            _isSelected16 = newBoolValue;
                          });
                        }),
                  ]),
                  const CustomText(
                    text: "Select Shoe Size *",
                    fontSize: 19,
                  ),
                  Row(children: [
                    ChoiceChip(
                        selectedColor: pblue,
                        label: const Text('6'),
                        selected: _isSelected17,
                        onSelected: (newBoolValue) {
                          setState(() {
                            _isSelected17 = newBoolValue;
                          });
                        }),
                    ChoiceChip(
                        selectedColor: pblue,
                        label: const Text('7'),
                        selected: _isSelected18,
                        onSelected: (newBoolValue) {
                          setState(() {
                            _isSelected18 = newBoolValue;
                          });
                        }),
                    ChoiceChip(
                        selectedColor: pblue,
                        label: const Text('8'),
                        selected: _isSelected19,
                        onSelected: (newBoolValue) {
                          setState(() {
                            _isSelected19 = newBoolValue;
                          });
                        }),
                    ChoiceChip(
                        selectedColor: pblue,
                        label: const Text('9'),
                        selected: _isSelected20,
                        onSelected: (newBoolValue) {
                          setState(() {
                            _isSelected20 = newBoolValue;
                          });
                        }),
                    ChoiceChip(
                        selectedColor: pblue,
                        label: const Text('10'),
                        selected: _isSelected21,
                        onSelected: (newBoolValue) {
                          setState(() {
                            _isSelected21 = newBoolValue;
                          });
                        }),
                    ChoiceChip(
                        selectedColor: pblue,
                        label: const Text('11'),
                        selected: _isSelected22,
                        onSelected: (newBoolValue) {
                          setState(() {
                            _isSelected22 = newBoolValue;
                          });
                        }),
                  ]),
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
    );
  }
}
