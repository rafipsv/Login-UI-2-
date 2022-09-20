// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_ui/LoginScreen/Widgets/email_field.dart';
import 'package:login_ui/LoginScreen/Widgets/login_button.dart';
import 'package:login_ui/LoginScreen/Widgets/password_field.dart';
import 'package:login_ui/SignUpScreen/Screens/sign_up.dart';
import 'package:login_ui/constrains.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isShowPass = true;

  void checkPass() {
    setState(() {
      isShowPass = !isShowPass;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                top: 0,
                left: -9,
                child: Image(
                  image: AssetImage(
                    'assets/images/main_top.png',
                  ),
                  width: 170,
                  height: 170,
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Login',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                            color: kPrimaryColor),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SvgPicture.asset(
                        'assets/icons/login.svg',
                        height: MediaQuery.of(context).size.height * 0.38,
                        width: MediaQuery.of(context).size.width * 0.4,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      EmailField(),
                      SizedBox(
                        height: 20,
                      ),
                      PasswordField(
                        isShowPass: isShowPass,
                        onPress: checkPass,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      LoginButton(),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account? ",
                            style:
                                TextStyle(color: kPrimaryColor, fontSize: 18),
                          ),
                          InkWell(
                            onTap: (() {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return SignUpPage();
                                  },
                                ),
                              );
                            }),
                            child: Text(
                              " Sign Up? ",
                              style: TextStyle(
                                  color: kPrimaryColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: -10,
                right: 0,
                child: InkWell(
                  onTap: (() {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return SignUpPage();
                        },
                      ),
                    );
                  }),
                  child: Image(
                    height: 130,
                    width: 140,
                    image: AssetImage(
                      'assets/images/login_bottom.png',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
