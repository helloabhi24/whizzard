import 'package:flutter/material.dart';
import '../widgets/drawerMenuWidget.dart';

class ReferPage extends StatelessWidget {
  final VoidCallback openDrawer;
  const ReferPage({super.key, required this.openDrawer});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          leading: DrawerMenuWidget(onClicked: openDrawer),
          title: const Text("Refer Page"),
        ),
      );
}
