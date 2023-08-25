import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpWidget extends StatelessWidget {
  const SignUpWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            const CircleAvatar(
              child: Icon(
                Icons.abc,
                color: Colors.white,
              ),
              backgroundColor: Color.fromARGB(255, 101, 206, 41),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Welcome,',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Sign up to continue',
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 250,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Mobile Number'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 250,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Password'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [Text("Remember me"), Text('show password')],
            ),
            SizedBox(
              height: 20,
            ),
            Text('Forgot password ?'),
            SizedBox(
              width: 265,
              height: 80,
              child: Card(
                color: const Color.fromARGB(255, 54, 143, 244),
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
            Row(
              children: [
                Text("Already having account? "),
                GestureDetector(
                    onTap: () {
                      // Navigator.pop(context);
                      Get.back();
                    },
                    child: Text(
                      "Sign In",
                      style: TextStyle(color: Colors.green),
                    )),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
