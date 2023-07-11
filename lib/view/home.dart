import 'package:flutter/material.dart';
import '../widgets/drawerMenuWidget.dart';

class Home extends StatelessWidget {
  final VoidCallback openDrawer;
  const Home({super.key, required this.openDrawer});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: DrawerMenuWidget(
          onClicked: openDrawer,
        ),
        iconTheme: const IconThemeData(color: Colors.black),
        actions: const [
          Icon(Icons.call, color: Colors.white),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.notifications, color: Colors.white),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
