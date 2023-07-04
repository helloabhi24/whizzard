import 'package:flutter/material.dart';
import 'package:whizzard/view/mainPage.dart';
import 'package:whizzard/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme:
              ColorScheme.fromSwatch().copyWith(primary: Colors.white)),
      home: Scaffold(
          appBar: AppBar(
            iconTheme: const IconThemeData(color: Colors.black),
            actions: const [
              Icon(
                Icons.call,
              ),
              SizedBox(
                width: 20,
              ),
              Icon(Icons.notifications),
              SizedBox(
                width: 10,
              ),
            ],
          ),
          drawer: const DrawerList(),
          body: MainPage()),
    );
  }
}
