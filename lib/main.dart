import 'package:flutter/material.dart';
import 'package:flutter_application_trial/pages/home_page.dart';
import 'package:flutter_application_trial/pages/login_page.dart';
import 'package:flutter_application_trial/utils/routes.dart';

void main() {
  runApp(const MyTestApp());
}

class MyTestApp extends StatelessWidget {
  const MyTestApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => const LoginPage(),
        MyRoutes.homeRoute: (context) => const HomePage(),
        MyRoutes.loginRoute: ((context) => const LoginPage())
      },
    );
  }
}
