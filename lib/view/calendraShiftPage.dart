import 'package:flutter/material.dart';
import '../widgets/drawerMenuWidget.dart';

class CalendraShiftPage extends StatelessWidget {
  final VoidCallback openDrawer;
  const CalendraShiftPage({super.key, required this.openDrawer});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          leading: DrawerMenuWidget(onClicked: openDrawer),
          title: const Text("Calendra Shift Page"),
        ),
      );
}
