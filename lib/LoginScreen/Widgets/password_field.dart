// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

import '../../constrains.dart';

class PasswordField extends StatelessWidget {
  final bool isShowPass;
  final Function onPress;
  PasswordField({
    required this.isShowPass,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15, right: 5),
      width: MediaQuery.of(context).size.width - 70,
      decoration: BoxDecoration(
        color: kPrimaryLightColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        obscureText: isShowPass,
        style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.w500),
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          hintText: "Password...",
          hintStyle: TextStyle(fontWeight: FontWeight.w400),
          suffixIcon: IconButton(
            icon: Icon(
              Icons.remove_red_eye_sharp,
              color: kPrimaryColor,
            ),
            onPressed: () => onPress(),
          ),
        ),
      ),
    );
  }
}
