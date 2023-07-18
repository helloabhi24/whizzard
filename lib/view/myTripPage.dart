import 'package:flutter/material.dart';
import 'package:whizzard/utils/color.dart';
import '../utils/customText.dart';
import '../widgets/drawerMenuWidget.dart';

class MyTrip extends StatelessWidget {
  final VoidCallback openDrawer;
  const MyTrip({super.key, required this.openDrawer});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(137, 113, 8, 134),
          leading: DrawerMenuWidget(onClicked: openDrawer),
          title: Text("My Trip"),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Container(
                margin: EdgeInsets.only(left: 8, right: 8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 117, 99, 108),
                        blurRadius: 2.0,
                        spreadRadius: 0.0,
                        offset:
                            Offset(4.0, 4.0), // shadow direction: bottom right
                      )
                    ],
                    color: lightgery),
                height: 90,
                width: 335,
                child: const ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: CustomText(
                      text: "July 2023",
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: Padding(
                    padding: EdgeInsets.only(top: 23),
                    child: Icon(
                      Icons.calendar_month,
                      size: 40,
                      color: Color.fromARGB(255, 78, 61, 35),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 35,
                        width: 35,
                        child: Card(
                          shape: CircleBorder(side: BorderSide(width: 1)),
                          elevation: 5,
                          child: Center(
                            child: Text(
                              'All',
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                          color: Color.fromARGB(255, 230, 109, 181),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 0),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 40,
                        width: 70,
                        child: Card(
                          shape: StadiumBorder(side: BorderSide(width: 1)),
                          elevation: 5,
                          child: Center(
                            child: Text(
                              'Verified',
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                          color: Color.fromARGB(255, 230, 109, 181),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 0),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 40,
                        width: 80,
                        child: Card(
                          shape: StadiumBorder(side: BorderSide(width: 1)),
                          elevation: 5,
                          child: Center(
                            child: Text(
                              'Rejected',
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                          color: Color.fromARGB(255, 230, 109, 181),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 0),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 40,
                        width: 95,
                        child: Card(
                          shape: StadiumBorder(side: BorderSide(width: 1)),
                          elevation: 5,
                          child: Center(
                            child: Text(
                              'Un-Verified',
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                          color: tripColor,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Text(
                'No Trips found...',
                style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
              ),
            ),
          ],
        ),
      );
}
