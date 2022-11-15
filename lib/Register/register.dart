import 'package:flutter/material.dart';
import 'package:game/Login/login.dart';
import 'package:game/Otp/otp.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../constants.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

bool _checkbox = false;
bool _checkboxListTile = false;

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/background.png'),
                  fit: BoxFit.cover),
            ),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.height,
              child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppBar(
                      elevation: 0,
                      backgroundColor: Colors.transparent,
                      leading:
                          Image(image: AssetImage("assets/images/backbtn.png"))
                              .onTap(() {
                        Get.back();
                      }),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        2.h.heightBox.centered(),
                        const Text(
                          "Register",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                              color: textColor),
                        ),
                        2.h.heightBox,
                        const TextField(
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: btn1Color),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: btn1Color),
                            ),
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(color: btn1Color),
                            ),
                            labelText: 'Email/Mobile No.',
                            labelStyle:
                                TextStyle(fontSize: 14, color: textColor),
                            hintText: 'Email/Mobile No.',
                            hintStyle:
                                TextStyle(fontSize: 14, color: textColor),
                          ),
                          style: TextStyle(color: textColor),
                        ),
                        1.h.heightBox,
                        const TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: btn1Color),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: btn1Color),
                            ),
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(color: btn1Color),
                            ),
                            labelText: 'Password',
                            labelStyle:
                                TextStyle(fontSize: 14, color: textColor),
                            hintText: 'Enter Password',
                            hintStyle:
                                TextStyle(fontSize: 14, color: textColor),
                          ),
                          style: TextStyle(color: textColor),
                        ),
                        1.h.heightBox,
                        const TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: btn1Color),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: btn1Color),
                            ),
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(color: btn1Color),
                            ),
                            labelText: 'Verify Password',
                            labelStyle:
                                TextStyle(fontSize: 14, color: textColor),
                            hintText: 'Verify Passwordd',
                            hintStyle:
                                TextStyle(fontSize: 14, color: textColor),
                          ),
                          style: TextStyle(color: textColor),
                        ),
                      ],
                    ).paddingOnly(right: 2.h, left: 2.h),
                    3.h.heightBox,
                    InkWell(
                      onTap: () {
                        Get.to(OTPScren());
                      },
                      child: Container(
                        height: 7.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: btnColor),
                        //  padding: const EdgeInsets.all(15),
                        child: const Text("Register ",
                                style: TextStyle(
                                    color: textColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold))
                            .centered(),
                      ),
                    ).paddingOnly(right: 2.h, left: 2.h),
                    3.h.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                                height: 1,
                                width: 41.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: btn1Color))
                            .centered(),
                        const Text(
                          "or",
                          style: TextStyle(color: textColor, fontSize: 14),
                        ).centered(),
                        Container(
                                height: 1,
                                width: 41.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: btn1Color))
                            .centered()
                      ],
                    ).paddingOnly(right: 2.h, left: 2.h),
                    3.h.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/google.png'),
                        Image.asset('assets/images/facebook.png')
                      ],
                    ),
                    2.h.heightBox,
                    Row(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account?",
                          style: TextStyle(
                            fontSize: 15,
                            color: textColor,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(LoginScren());
                          },
                          child: Text(
                            ' Log In',
                            style: TextStyle(
                              fontSize: 15,
                              color: btnColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    11.h.heightBox,
                    const Center(
                      child: Text(
                        'By creating an account, you are agreeing to our',
                        style: TextStyle(
                          fontSize: 15,
                          color: textColor,
                        ),
                      ),
                    ),
                    Row(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'ByTerms of Service ',
                          style: TextStyle(
                            fontSize: 15,
                            color: btnColor,
                          ),
                        ),
                        Text(
                          ' and ',
                          style: TextStyle(
                            fontSize: 15,
                            color: textColor,
                          ),
                        ),
                        Text(
                          ' Privacy Policy',
                          style: TextStyle(
                            fontSize: 15,
                            color: btnColor,
                          ),
                        ),
                      ],
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
