import 'package:flutter/material.dart';
import 'package:game/Register/register.dart';
import 'package:game/constants.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../Login/login.dart';

class WelcomeScreen extends StatefulWidget {
  WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.cover),
          ),
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: Column(
              // // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    10.h.heightBox,
                    Center(child: Image.asset('assets/images/Logo.png')),
                    10.h.heightBox.centered(),
                    const Text(
                      "Welcome",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          color: textColor),
                    ),
                    1.h.heightBox,
                    const Text(
                      "Adzetera:The best multifunctional E-Wallet of our time and more.",
                      style: TextStyle(color: textColor, fontSize: 15),
                    ),
                  ],
                ),
                3.h.heightBox,
                InkWell(
                  onTap: () {
                    Get.to(RegisterScreen());
                  },
                  child: Container(
                    height: 7.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: btnColor),
                    //  padding: const EdgeInsets.all(15),
                    child: const Text("Sign Up",
                            style: TextStyle(
                                color: textColor,
                                fontSize: 18,
                                fontWeight: FontWeight.bold))
                        .centered(),
                  ),
                ),
                3.h.heightBox,
                InkWell(
                  onTap: () {
                    Get.to(LoginScren());
                  },
                  child: Container(
                    height: 7.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: btn1Color),
                    //  padding: const EdgeInsets.all(15),
                    child: const Text("Login ",
                            style: TextStyle(
                                color: textColor1,
                                fontSize: 18,
                                fontWeight: FontWeight.bold))
                        .centered(),
                  ),
                ),
                3.h.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                            height: 1,
                            width: 35.w,
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
                            width: 35.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: btn1Color))
                        .centered()
                  ],
                ),
                3.h.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/google.png'),
                    Image.asset('assets/images/facebook.png')
                  ],
                ),
                5.h.heightBox,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
