import 'package:flutter/material.dart';
import '../widgets/drawerMenuWidget.dart';

class MyPlan extends StatelessWidget {
  final VoidCallback openDrawer;
  const MyPlan({super.key, required this.openDrawer});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          leading: DrawerMenuWidget(onClicked: openDrawer),
          title: const Text("My Plan"),
        ),
      );
}
