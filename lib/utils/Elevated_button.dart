import 'package:flutter/material.dart';

class Delevated extends StatelessWidget {
  const Delevated({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 45,
        width: 100,
        child: ElevatedButton(
            onPressed: () {},
            child: (Text(
              'SAVE',
              style: TextStyle(fontSize: 18),
            ))),
      ),
    );
  }
}
