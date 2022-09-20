// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../constrains.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width - 100,
      height: 50,
      decoration: BoxDecoration(
          color: kPrimaryColor, borderRadius: BorderRadius.circular(30)),
      child: Text(
        "Login",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
