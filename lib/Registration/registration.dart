import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:game/Registration/registration_widget.dart';
import 'package:game/constants.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../Home/home.dart';
import '../Login/login.dart';
import '../Widgets/bottom_nav_bar.dart';

class Registration extends StatelessWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              // height: 150.h,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/background.png'),
                    fit: BoxFit.cover),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppBar(
                    elevation: 0,
                    toolbarHeight: 10,
                    backgroundColor: Colors.transparent,
                    leading: Image.asset(
                      'assets/images/backbtn.png',
                      scale: 0.6,
                      // height: 200,
                    ).objectTopLeft().onTap(() {
                      Get.back();
                    }),
                  ),
                  Center(
                    child: Text(
                      "Registration",
                      style: TextStyle(color: textColor, fontSize: 25),
                    ),
                  ),
                  2.h.heightBox,
                  Text(
                    "First Name*",
                    style: TextStyle(color: textColor),
                  ),
                  1.5.h.heightBox,
                  InputWidget(
                    hinttext: "User Name",
                    secure: false,
                  ),
                  2.h.heightBox,
                  Text(
                    "Middle Name",
                    style: TextStyle(color: textColor),
                  ),
                  1.5.h.heightBox,
                  InputWidget(
                    hinttext: "Middle name",
                    secure: false,
                  ),
                  2.h.heightBox,
                  Text(
                    "Last Name*",
                    style: TextStyle(color: textColor),
                  ),
                  1.5.h.heightBox,
                  InputWidget(
                    hinttext: "Surname",
                    secure: false,
                  ),
                  2.h.heightBox,
                  Text(
                    "Mobile Number*",
                    style: TextStyle(color: textColor),
                  ),
                  1.5.h.heightBox,
                  Row(
                    children: [
                      Container(
                        height: 6.h,
                        width: 20.w,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black45,
                                offset: const Offset(
                                  5.0,
                                  5.0,
                                ),
                                blurRadius: 5.0,
                                spreadRadius: 2.0,
                              ), //BoxShadow
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(7.sp)),
                        child: Row(
                          children: [
                            Text("+91"),
                            Icon(
                              Icons.arrow_drop_down,
                              size: 22.sp,
                            )
                          ],
                        ).pSymmetric(v: 0, h: 9.sp),
                      ),
                      5.w.widthBox,
                      Container(
                        height: 6.h,
                        width: 55.w,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black45,
                                offset: Offset(
                                  5.0,
                                  5.0,
                                ),
                                blurRadius: 5.0,
                                spreadRadius: 2.0,
                              ), //BoxShadow
                            ]),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 18),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: '0123456789',
                              hintStyle: TextStyle(color: Colors.grey),
                              border: InputBorder.none,
                            ),
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                                color: Colors.black),
                          ),
                        ),
                      )
                    ],
                  ),
                  2.h.heightBox,
                  Text(
                    "Email*",
                    style: TextStyle(color: textColor),
                  ),
                  1.5.h.heightBox,
                  InputWidget(
                    hinttext: "",
                    secure: false,
                  ),
                  2.h.heightBox,
                  Text(
                    "Country",
                    style: TextStyle(color: textColor),
                  ),
                  1.5.h.heightBox,
                  InputWidget(
                    hinttext: "",
                    secure: false,
                  ),
                  2.h.heightBox,
                  Text(
                    "Captcha",
                    style: TextStyle(color: textColor),
                  ),
                  1.5.h.heightBox,
                  InputWidget(
                    hinttext: "",
                    secure: false,
                  ),
                  3.h.heightBox,
                  Container(
                    height: 10.h,
                    width: 80.w,
                    color: Colors.grey,
                    child: Center(
                      child: Text(
                        "8V2U4",
                        style: TextStyle(color: textColor),
                      ),
                    ),
                  ),
                  3.h.heightBox,
                  InkWell(
                    onTap: () {
                      Get.to(Bottom());
                    },
                    child: Container(
                      height: 7.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: btnColor),
                      //  padding: const EdgeInsets.all(15),
                      child: const Text("REGISTER ",
                              style: TextStyle(
                                  color: textColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold))
                          .centered(),
                    ),
                  ),
                ],
              ).pSymmetric(v: 6.h, h: 4.h),
            ),
          ],
        ),
      ),
    );
  }
}
