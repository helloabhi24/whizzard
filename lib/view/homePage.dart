import 'package:flutter/material.dart';
import 'package:whizzard/view/mainPage.dart';
import 'package:whizzard/widgets/drawer.dart';

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
        backgroundColor: Color(0xff3473cb),
        body: Stack(
          children: [
            // drawerWidget(),
            buildPage()
          ],
        ),
      ),
    );
  }

  // Widget drawerWidget() => SafeArea(child: DrawerWidget());

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
                  color: isDrawerOpen ? Colors.white12 : Color(0xff3473cb),
                  child: Home(
                    openDrawer: openDrawer,
                  ),
                ),
              ),
            )),
      ),
    );
  }
}
