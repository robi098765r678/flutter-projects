import 'package:flutter/material.dart';
import 'package:simple_login/pages/1.dart';
import 'package:simple_login/pages/login_page.dart';
import 'package:simple_login/pages/register_page.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      home: Storybook(stories: [
        Story(name: 'Login Page', builder: (_) => const LoginPage()),
        Story(name: 'Register Page', builder: (_) => const RegisterPage()),
        Story(name: "1", builder: (_) => const aaa()),
      ]),
    );
  }
}
