// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_ui/LoginScreen/Screens/login_screen.dart';
import 'package:login_ui/LoginScreen/Widgets/email_field.dart';
import 'package:login_ui/LoginScreen/Widgets/password_field.dart';
import 'package:login_ui/SignUpScreen/Widgets/signup_button.dart';

import '../../constrains.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
                top: -5,
                left: -9,
                child: Image(
                  image: AssetImage(
                    'assets/images/signup_top.png',
                  ),
                  width: 150,
                  height: 150,
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sign Up',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                            color: kPrimaryColor),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SvgPicture.asset(
                        'assets/icons/signup.svg',
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
                      SignUpButton(),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "You already have an account? ",
                            style:
                                TextStyle(color: kPrimaryColor, fontSize: 18),
                          ),
                          InkWell(
                            onTap: (() {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return LoginScreen();
                                  },
                                ),
                              );
                            }),
                            child: Text(
                              " Sign In? ",
                              style: TextStyle(
                                  color: kPrimaryColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 80,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Divider(
                                height: 1.5,
                                thickness: 1,
                                indent: 0,
                                endIndent: 0,
                                color: kPrimaryColor,
                              ),
                            ),
                            Text(
                              'OR',
                              style: TextStyle(color: kPrimaryColor),
                            ),
                            Expanded(
                              child: Divider(
                                height: 1.5,
                                thickness: 1,
                                indent: 0,
                                endIndent: 0,
                                color: kPrimaryColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: kPrimaryLightColor),
                            child: SvgPicture.asset(
                              'assets/icons/facebook.svg',
                              width: 25,
                              
                            ),
                          ),
                          SizedBox(width: 20,),
                          Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: kPrimaryLightColor),
                            child: SvgPicture.asset(
                              'assets/icons/twitter.svg',
                              width: 25,
                              
                            ),
                          ),
                          SizedBox(width: 20,),
                          Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: kPrimaryLightColor),
                            child: SvgPicture.asset(
                              'assets/icons/google-plus.svg',
                              width: 25,
                              
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: -15,
                child: Image(
                  height: 100,
                  width: 100,
                  image: AssetImage(
                    'assets/images/main_bottom.png',
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
