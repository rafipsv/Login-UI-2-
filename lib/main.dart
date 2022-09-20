// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:login_ui/MainScreen/Screens/mainScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
    );
  }
}
