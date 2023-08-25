import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DrawerMenuWidget extends StatelessWidget {
  final VoidCallback onClicked;
  const DrawerMenuWidget({super.key, required this.onClicked});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onClicked,
      icon: const Icon(FontAwesomeIcons.alignLeft),
      color: Color.fromARGB(255, 2, 99, 58),
    );
  }
}
