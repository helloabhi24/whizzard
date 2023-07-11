import 'package:flutter/material.dart';
import '../widgets/drawerMenuWidget.dart';

class MyVouchers extends StatelessWidget {
  final VoidCallback openDrawer;
  const MyVouchers({super.key, required this.openDrawer});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          leading: DrawerMenuWidget(onClicked: openDrawer),
          title: const Text("My Voucher"),
        ),
      );
}
