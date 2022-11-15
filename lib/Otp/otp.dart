import 'package:flutter/material.dart';
import 'package:game/Registration/registration.dart';
import 'package:game/constants.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../Login/login.dart';

class OTPScren extends StatefulWidget {
  OTPScren({Key? key}) : super(key: key);

  @override
  State<OTPScren> createState() => _OTPScrenState();
}

class _OTPScrenState extends State<OTPScren> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/background.png'),
              fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              // // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AppBar(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  leading: Image(image: AssetImage("assets/images/backbtn.png"))
                      .onTap(() {
                    Get.back();
                  }),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    1.h.heightBox,
                    Center(child: Image.asset('assets/images/OTP.png')),
                    10.h.heightBox.centered(),
                    const Center(
                      child: Text(
                        " OTP Verification",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: textColor),
                      ),
                    ),
                    1.h.heightBox,
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                              text: 'Enter the OTP sent to ',
                              style: TextStyle(color: textColor)),
                          TextSpan(
                            text: '+91 0123456789',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: textColor),
                          ),
                        ],
                      ),
                    ).centered(),
                    2.h.heightBox,
                    OTPTextField(
                        otpFieldStyle: OtpFieldStyle(
                            backgroundColor: btn1Color, borderColor: textColor),
                        // controller: otpController,
                        length: 4,
                        width: 60.w,
                        textFieldAlignment: MainAxisAlignment.spaceAround,
                        fieldWidth: 50,
                        fieldStyle: FieldStyle.box,
                        // outlineBorderRadius: 1,
                        style: TextStyle(fontSize: 17, color: textColor1),
                        onChanged: (pin) {
                          print("Changed: " + pin);
                        },
                        onCompleted: (pin) {
                          print("Completed: " + pin);
                        }).centered(),
                    3.h.heightBox,
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                              text: 'Didnt you receive the OTP? ',
                              style: TextStyle(color: textColor)),
                          TextSpan(
                            text: 'Resend OTP.',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: btnColor),
                          ),
                        ],
                      ),
                    ).centered(),
                  ],
                ),
                3.h.heightBox,
                InkWell(
                  onTap: () {
                    Get.to(Registration());
                  },
                  child: Container(
                    height: 7.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: btnColor),
                    //  padding: const EdgeInsets.all(15),
                    child: const Text(
                      "Submit",
                      style: TextStyle(
                          color: textColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ).centered(),
                  ),
                ),
                3.h.heightBox,
              ],
            ),
          ).paddingOnly(right: 15, left: 15),
        ),
      ),
    );
  }
}
