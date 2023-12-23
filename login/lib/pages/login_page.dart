import 'dart:html';

import 'package:flutter/material.dart';
import 'package:simple_login/services/authentication_service.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  String? error;

  @override
  var controller = TextEditingController();
  var controller2 = TextEditingController();
  Widget build(BuildContext context) {
    const double space = 8;
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Email"),
          SizedBox(height: space),
          TextField(controller: controller),
          Text("Password"),
          SizedBox(height: space),
          TextField(controller: controller2),
          SizedBox(height: space),
          ElevatedButton(
            onPressed: () {
              setState(() {
                String username = controller.text;
                String password = controller2.text;
                error = AuthenticationService().login(username, password);
                controller.clear();
                controller2.clear();
              });
            },
            child: Text(
              "Login",
              style: TextStyle(color: Colors.purple),
            ),
          ),
          if (error != null) Text(error!),
          Text("test", style: TextStyle(color: Colors.blue))
        ]),
      ),
    ));
  }
}
