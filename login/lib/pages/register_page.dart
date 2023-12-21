import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  var controller1 = TextEditingController();
  var controller2 = TextEditingController();
  var controller3 = TextEditingController();
  String a = "a";
  String b = "b";
  String c = "c";
  Widget build(BuildContext context) {
    double space = 8;
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Email"),
            TextField(
              controller: controller1,
            ),
            SizedBox(height: space),
            Text("Password"),
            TextField(
              controller: controller2,
            ),
            SizedBox(height: space),
            Text("Confirm password"),
            TextField(
              controller: controller3,
            ),
            SizedBox(height: space),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  a = controller1.toString();
                  b = controller2.toString();
                  c = controller3.toString();
                  controller1.clear();
                  controller2.clear();
                  controller3.clear();
                });
              },
              child: Text(
                "Register",
                style: TextStyle(color: Colors.purple),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
