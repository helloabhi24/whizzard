import 'package:flutter/material.dart';
import 'package:whizzard/model/drawerItemModel.dart';
import 'package:whizzard/utils/color.dart';
import 'package:whizzard/view/calendraShiftPage.dart';
import 'package:whizzard/view/mainPage.dart';
import 'package:whizzard/view/myPlanPage.dart';
import 'package:whizzard/view/myTripPage.dart';
import 'package:whizzard/view/myVouchersPage.dart';
import 'package:whizzard/view/profilePage.dart';
import 'package:whizzard/view/referPage.dart';
import 'package:whizzard/widgets/drawer.dart';

import '../data/drawerItemsData.dart';
import '../widgets/drawerWidget.dart';
import 'home.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late double xOffset;
  late double yOffset;
  late double scaleFactor;
  late bool isDrawerOpen = false;
  DrawerItem item = DrawerItemsData.home;
  bool isDrawer = false;

  @override
  void initState() {
    super.initState();
    // openDrawer();
    closeDrawer();
  }

  void closeDrawer() => setState(() {
        xOffset = 0;
        yOffset = 0;
        scaleFactor = 1;
        isDrawerOpen = false;
      });

  void openDrawer() => setState(() {
        xOffset = 250;
        yOffset = 150;
        scaleFactor = 0.6;
        isDrawerOpen = true;
      });
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme:
              ColorScheme.fromSwatch().copyWith(primary: Colors.white)),
      home: Scaffold(
        // appBar: AppBar(
        //   iconTheme: const IconThemeData(color: Colors.black),
        //   actions: const [
        //     Icon(
        //       Icons.call,
        //     ),
        //     SizedBox(
        //       width: 20,
        //     ),
        //     Icon(Icons.notifications),
        //     SizedBox(
        //       width: 10,
        //     ),
        //   ],
        // ),
        // drawer: const DrawerList(),
        // body: MainPage()
        backgroundColor: darkBlueColor,
        body: Stack(
          children: [drawerWidget(), buildPage()],
        ),
      ),
    );
  }

  Widget drawerWidget() => SafeArea(
          child: Container(
        width: xOffset,
        child: DrawerWidget(
          onSelectedItem: (item) {
            setState(() => this.item = item);
            closeDrawer();
          },
          // onSelectedItem: (item) {
          //   switch (item) {
          //     case DrawerItemsData.logout:
          //       ScaffoldMessenger.of(context)
          //           .showSnackBar(SnackBar(content: Text("Logging Out")));
          //       return;
          //     default:
          //       setState(() => this.item = item);
          //       closeDrawer();
          //   }
          // },
        ),
      ));

  Widget buildPage() {
    return WillPopScope(
      onWillPop: () async {
        if (isDrawerOpen) {
          closeDrawer();
          return false;
        } else {
          return true;
        }
      },
      child: GestureDetector(
        onHorizontalDragStart: (details) => isDrawer = true,
        onHorizontalDragUpdate: (details) {
          if (!isDrawer) return;
          const delta = 1;
          if (details.delta.dx > delta) {
            openDrawer();
          } else if (details.delta.dx < -delta) {
            closeDrawer();
          }
          isDrawer = false;
        },
        onTap: closeDrawer,
        child: AnimatedContainer(
            duration: const Duration(milliseconds: 250),
            transform: Matrix4.translationValues(xOffset, yOffset, 0)
              ..scale(scaleFactor),
            child: AbsorbPointer(
              absorbing: isDrawerOpen,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(isDrawerOpen ? 20 : 0),
                child: Container(
                  color: isDrawerOpen ? Colors.white12 : darkBlueColor,
                  child: getDrawerPage(),
                  // Home(
                  //   openDrawer: openDrawer,
                  // ),
                ),
              ),
            )),
      ),
    );
  }

  Widget getDrawerPage() {
    switch (item) {
      case DrawerItemsData.myTrips:
        return MyTrip(openDrawer: openDrawer);
      case DrawerItemsData.calendraShift:
        return CalendraShiftPage(openDrawer: openDrawer);
      case DrawerItemsData.profile:
        return ProfilePage(openDrawer: openDrawer);
      case DrawerItemsData.myPlans:
        return MyPlan(openDrawer: openDrawer);
      case DrawerItemsData.myVouchers:
        return MyVouchers(openDrawer: openDrawer);
      case DrawerItemsData.refer:
        return ReferPage(openDrawer: openDrawer);
      case DrawerItemsData.home:
      default:
        return MainPage(openDrawer: openDrawer);
    }
  }
}
