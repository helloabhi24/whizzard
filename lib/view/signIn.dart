import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whizzard/view/homePage.dart';
import 'package:whizzard/view/signUp.dart';

class SignInWidget extends StatelessWidget {
  const SignInWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 50, left: 20),
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(100),
                  bottomRight: Radius.circular(100)),
              color: Color.fromARGB(121, 174, 165, 229),
            ),
            // color: Color.fromARGB(123, 60, 153, 96),
            height: 610,
            width: 320,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Icon(
                    Icons.abc,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Welcome,',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Sign in to continue',
                  style: TextStyle(fontSize: 25),
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  width: 280,
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Mobile Number'),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  width: 280,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: 'Password'),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                const Padding(
                  padding: const EdgeInsets.only(left: 37),
                  child: Column(children: [
                    Row(
                      children: [
                        Icon(
                          Icons.check_box,
                          color: Colors.blue,
                        ),
                        Text(
                          "Remember me",
                          style: TextStyle(fontSize: 15),
                        ),
                        Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: SizedBox(
                              width: 10,
                              child: Icon(
                                Icons.check_box,
                                color: Colors.blue,
                              ),
                            )),
                        Text(
                          'Show password',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 35,
                        ),
                        Icon(
                          Icons.check_box,
                          color: Colors.blue,
                        ),
                        Text(
                          'Forgot password ?',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ]),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //     context, MaterialPageRoute(builder: (context) => HomePage()));
                    Get.to(const HomePage());
                  },
                  child: const SizedBox(
                    width: 300,
                    height: 80,
                    child: Card(
                      color: Colors.blue,
                      margin: EdgeInsets.all(20),
                      child: Center(
                          child: Text(
                        "CONTINUE",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                      )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 35),
                  child: Row(
                    children: [
                      const Text("Don't have an account? "),
                      GestureDetector(
                        onTap: () {
                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: (context) => SignUpWidget()));
                          Get.to(const SignUpWidget());
                        },
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                              color: Color.fromARGB(255, 8, 126, 223)),
                        ),
                      ),
                      Text(" now.")
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
