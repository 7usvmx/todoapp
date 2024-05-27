// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todoapp/pages/toDoApp.dart';
import 'package:todoapp/pages/welcome.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => WelcomePage(),
        "/home": (context) => Todoapp(),
        "/welcome": (context) => Todoapp(),
      },
    );
  }
}
