import 'dart:async';
import 'package:HTW/view/signIn.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  int text = 0;
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Get.to(SignInWidget(), transition: Transition.downToUp);
      // print("hello");
      // Navigator.pushReplacement(
      //     context,
      //     MaterialPageRoute(
      //       builder: (context) => SignInWidget(),
      //     ));
      // print("hello99");
    });
  }

  void finished() {
    print("This is function call in the init state");
    setState(() {
      text = text + 1;
    });

    finished();
  }

  // _navigatetohome() async {
  //   await Future.delayed(Duration(milliseconds: 1500), () {});
  //   Navigator.pushReplacement(
  //       context, MaterialPageRoute(builder: (context) => SignInWidget()));
  // }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(248, 10, 241, 145),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '  Welcome,',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 1, 156, 48)),
          ),
          Center(
            child: CircleAvatar(
                minRadius: 20,
                maxRadius: 70,
                backgroundColor: Colors.transparent,
                child: Image(
                  image: AssetImage(
                    "assets/images/logo2.png",
                  ),
                  width: 200,
                  height: 100,
                )),
          ),
          SizedBox(
            height: 35,
            child: Text('H T W',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87)),
          )
        ],
      ),
    );
  }
}
