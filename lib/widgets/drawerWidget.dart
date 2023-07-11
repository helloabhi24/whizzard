import 'package:flutter/material.dart';
import 'package:whizzard/model/drawerItemModel.dart';

import '../data/drawerItemsData.dart';

class DrawerWidget extends StatelessWidget {
  final ValueChanged<DrawerItem> onSelectedItem;
  const DrawerWidget({super.key, required this.onSelectedItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 70, 16, 0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildDrawerItems(context),
          ],
        ),
      ),
    );
  }

  Widget buildDrawerItems(BuildContext context) => Column(
        children: DrawerItemsData.all
            .map((e) => ListTile(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                  leading: Icon(
                    e.icon,
                    color: Colors.white,
                    size: 22,
                  ),
                  title: Text(
                    e.title,
                    style: const TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  onTap: () => onSelectedItem(e),
                ))
            .toList(),
      );
}
