// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../constrains.dart';

class EmailField extends StatelessWidget {
  const EmailField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15),
      width: MediaQuery.of(context).size.width - 70,
      decoration: BoxDecoration(
          color: kPrimaryLightColor, borderRadius: BorderRadius.circular(30)),
      child: TextField(
        style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.w500),
        decoration: InputDecoration(
            border: InputBorder.none,
            icon: Icon(
              Icons.person,
              color: kPrimaryColor,
            ),
            hintText: "Email...",
            hintStyle: TextStyle(fontWeight: FontWeight.w400)),
      ),
    );
  }
}
