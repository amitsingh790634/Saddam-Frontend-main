import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:game/Play/play.dart';
import 'package:game/View_All/view_all.dart';
import 'package:game/Widgets/bottom_nav_bar.dart';
import 'package:game/Widgets/drawer.dart';
import 'package:game/constants.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      endDrawer: OpenDrawer(),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              AppBar(
                elevation: 0,
                backgroundColor: Colors.transparent,
                title: Row(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/user.png',
                      height: 50.0,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Hii User",
                              style: TextStyle(color: textColor, fontSize: 12),
                            ).paddingOnly(left: 12),
                            Image.asset('assets/images/hand.png')
                          ],
                        ),
                        Text(
                          " Welcome",
                          style: TextStyle(color: textColor, fontSize: 12),
                        ),
                      ],
                    ).p(12),
                  ],
                ),
                actions: [
                  Builder(
                    builder: (context) => InkWell(
                      onTap: () => Scaffold.of(context).openEndDrawer(),
                      child: Container(
                        height: 15.h,
                        width: 15.w,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/drawer.png"))),
                      ),
                    ),
                  ),
                ],
              ),
              2.h.heightBox,
              Image.asset(
                "assets/images/banner.png",
                width: 100.w,
                fit: BoxFit.fitWidth,
              ),
              Row(
                children: [
                  Text(
                    "My Quizzes",
                    style: TextStyle(color: textColor, fontSize: 16),
                  ).p(12),
                  Spacer(),
                  Text(
                    "View all",
                    style: TextStyle(
                      color: textColor,
                      fontSize: 14,
                      decoration: TextDecoration.underline,
                      decorationThickness: 2,
                    ),
                  ).p(12),
                ],
              ),
              Container(
                height: 28.h,
                width: 47.h,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 2),
                      color: Colors.transparent.withOpacity(0.2),
                      blurRadius: .2),
                ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Quiz Name",
                      textAlign: TextAlign.start,
                      style: TextStyle(color: textColor),
                    ).paddingOnly(left: 2.h, top: 1.h),
                    1.h.heightBox,
                    Divider(
                      height: 20,
                      thickness: 2,
                      // indent: 20,
                      // endIndent: 0,
                      color: btn1Color,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Image.asset(
                                  "assets/images/usericon.png",
                                  // scale: 1,
                                ),
                                Text(
                                  "User Name",
                                  style: TextStyle(color: textColor),
                                )
                              ],
                            ),
                            Image.asset(
                              "assets/images/vs.png",
                              scale: 2,
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  "assets/images/usericon.png",
                                  // scale: 1,
                                ),
                                Text(
                                  "Player Name",
                                  style: TextStyle(color: textColor),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ).paddingOnly(left: 2.h, top: 2.h, right: 2.h),
                    2.h.heightBox,
                    Divider(
                      height: 20,
                      thickness: 2,
                      // indent: 20,
                      // endIndent: 0,
                      color: btn1Color,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              "1 Team",
                              style: TextStyle(color: textColor),
                            ).paddingOnly(right: 3.h),
                            Text(
                              "1 Contest",
                              style: TextStyle(color: textColor),
                            )
                          ],
                        ),
                        Container(
                          height: 3.h,
                          width: 15.h,
                          decoration: BoxDecoration(
                            color: btn1Color,
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                          ),
                          child: Center(
                              child: Text(
                            "Completed",
                            style: TextStyle(
                                color: Color(
                                  0xff380169,
                                ),
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          )),
                        )
                      ],
                    ).p(12),
                  ],
                ),
              ).centered(),
              Row(
                children: [
                  Text(
                    "Available Topics",
                    style: TextStyle(color: textColor, fontSize: 16),
                  ).p(12),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      Get.to(ViewAll());
                    },
                    child: Text(
                      "View all",
                      style: TextStyle(
                        color: textColor,
                        fontSize: 14,
                        decoration: TextDecoration.underline,
                        decorationThickness: 2,
                      ),
                    ).p(12),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 18.h,
                    width: 15.h,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 2),
                            color: Colors.transparent.withOpacity(0.2),
                            blurRadius: .2),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              "assets/images/table.png",
                              scale: 1.5,
                            ),
                            1.h.heightBox,
                            Text(
                              "Table",
                              style: TextStyle(color: textColor, fontSize: 18),
                            )
                          ],
                        ).p(14)
                      ],
                    ),
                  ).paddingOnly(left: 12),
                  Container(
                    height: 18.h,
                    width: 15.h,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 2),
                            color: Colors.transparent.withOpacity(0.2),
                            blurRadius: .2),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              "assets/images/addition.png",
                              scale: 1.7,
                            ),
                            1.h.heightBox,
                            Text(
                              "Addition",
                              style: TextStyle(color: textColor, fontSize: 18),
                            )
                          ],
                        ).p(14)
                      ],
                    ),
                  ).centered(),
                  Container(
                    height: 18.h,
                    width: 15.h,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 2),
                            color: Colors.transparent.withOpacity(0.2),
                            blurRadius: .2),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Center(
                              child: Container(
                                height: 11.h,
                                child: Image.asset(
                                  "assets/images/sub.png",
                                  scale: 1.7,
                                ),
                              ),
                            ),
                            Text(
                              "Subtraction",
                              style: TextStyle(color: textColor, fontSize: 16),
                            )
                          ],
                        ).p(14)
                      ],
                    ),
                  ).paddingOnly(right: 12),
                ],
              ).centered(),
              3.h.heightBox,
              Row(
                children: [
                  Text(
                    "Live Quizzes",
                    style: TextStyle(color: textColor, fontSize: 16),
                  ).p(12),
                ],
              ),
              Container(
                height: 28.h,
                width: 47.h,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 2),
                        color: Colors.transparent.withOpacity(0.2),
                        blurRadius: .2),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Quiz Name",
                          textAlign: TextAlign.start,
                          style: TextStyle(color: textColor),
                        ).paddingOnly(left: 2.h, top: 1.h),
                        Row(
                          children: [
                            Image.asset("assets/images/green.png")
                                .paddingOnly(left: 2.h, top: 2.h),
                            Text(
                              "Lineups out",
                              textAlign: TextAlign.start,
                              style: TextStyle(color: Color(0xff00FF46)),
                            ).paddingOnly(left: 2.h, top: 1.h),
                            Image.asset("assets/images/clock.png")
                                .paddingOnly(left: 2.h, right: 2.h, top: 1.h),
                          ],
                        ),
                      ],
                    ),
                    1.h.heightBox,
                    Divider(
                      height: 20,
                      thickness: 2,
                      // indent: 20,
                      // endIndent: 0,
                      color: btn1Color,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Topic",
                                  style: TextStyle(
                                      color: textColor,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                2.h.heightBox,
                                Container(
                                  height: 4.h,
                                  width: 10.h,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: btn1Color,
                                      width: 2,
                                    ),
                                    color: Colors.transparent,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(4)),
                                  ),
                                  child: Center(
                                    child: InkWell(
                                      onTap: () {
                                        Get.to(PlayScreen());
                                      },
                                      child: Text(
                                        "Play",
                                        style: TextStyle(
                                            color: textColor,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    ).paddingOnly(left: 2.h, top: 2.h, right: 2.h),
                    2.h.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 4.h,
                              width: 10.h,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: btn1Color,
                                  width: 2,
                                ),
                                color: Colors.transparent,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4)),
                              ),
                              child: Center(
                                child: Text(
                                  "MEGA",
                                  style: TextStyle(
                                      color: textColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ).paddingOnly(right: 3.h),
                            Text(
                              "₹2999",
                              style: TextStyle(
                                color: textColor,
                                fontSize: 16,
                              ),
                            ).paddingOnly(right: 3.h),
                          ],
                        ),
                      ],
                    ).p(12),
                  ],
                ),
              ).centered(),
              3.h.heightBox,
              Row(
                children: [
                  Text(
                    "Upcoming Quizzes",
                    style: TextStyle(color: textColor, fontSize: 16),
                  ).p(12),
                ],
              ),
              Container(
                height: 30.h,
                width: 47.h,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 2),
                        color: Colors.transparent.withOpacity(0.2),
                        blurRadius: .2),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Quiz Name",
                          textAlign: TextAlign.start,
                          style: TextStyle(color: textColor),
                        ).paddingOnly(left: 2.h, top: 1.h),
                        Row(
                          children: [
                            Image.asset("assets/images/clock.png")
                                .paddingOnly(left: 2.h, right: 2.h, top: 1.h),
                          ],
                        ),
                      ],
                    ),
                    1.h.heightBox,
                    Divider(
                      height: 20,
                      thickness: 2,
                      // indent: 20,
                      // endIndent: 0,
                      color: btn1Color,
                    ),
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "04 hr 57 m 30 s",
                          style: TextStyle(fontSize: 16, color: textColor),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Topic",
                                  style: TextStyle(
                                      color: textColor,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                2.h.heightBox,
                                InkWell(
                                  onTap: () {
                                    Get.to(PlayScreen());
                                  },
                                  child: Container(
                                    height: 4.h,
                                    width: 20.h,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: btn1Color,
                                        width: 2,
                                      ),
                                      color: Colors.transparent,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(4)),
                                    ),
                                    child: Text(
                                      "Join 1st Contest",
                                      style: TextStyle(
                                          color: textColor,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ).centered(),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ).paddingOnly(left: 2.h, right: 2.h),
                    2.h.heightBox,
                    Divider(
                      height: 20,
                      thickness: 2,
                      // indent: 20,
                      // endIndent: 0,
                      color: btn1Color,
                    ),
                    // 1.h.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 4.h,
                              width: 10.h,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: btn1Color,
                                  width: 2,
                                ),
                                color: Colors.transparent,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4)),
                              ),
                              child: Center(
                                child: Text(
                                  "MEGA",
                                  style: TextStyle(
                                      color: textColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ).paddingOnly(right: 3.h),
                            Text(
                              "₹2999",
                              style: TextStyle(
                                color: textColor,
                                fontSize: 16,
                              ),
                            ).paddingOnly(right: 3.h),
                          ],
                        ),
                      ],
                    ).p(12),
                  ],
                ),
              ).centered(),
              2.h.heightBox,
              Container(
                height: 30.h,
                width: 47.h,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 2),
                        color: Colors.transparent.withOpacity(0.2),
                        blurRadius: .2),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Quiz Name",
                          textAlign: TextAlign.start,
                          style: TextStyle(color: textColor),
                        ).paddingOnly(left: 2.h, top: 1.h),
                        Row(
                          children: [
                            Image.asset("assets/images/clock.png")
                                .paddingOnly(left: 2.h, right: 2.h, top: 1.h),
                          ],
                        ),
                      ],
                    ),
                    1.h.heightBox,
                    Divider(
                      height: 20,
                      thickness: 2,
                      // indent: 20,
                      // endIndent: 0,
                      color: btn1Color,
                    ),
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "04 hr 57 m 30 s",
                          style: TextStyle(fontSize: 16, color: textColor),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Topic",
                                  style: TextStyle(
                                      color: textColor,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                2.h.heightBox,
                                InkWell(
                                  onTap: () {
                                    Get.to(PlayScreen());
                                  },
                                  child: Container(
                                    height: 4.h,
                                    width: 20.h,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: btn1Color,
                                        width: 2,
                                      ),
                                      color: Colors.transparent,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(4)),
                                    ),
                                    child: Text(
                                      "Join 1st Contest",
                                      style: TextStyle(
                                          color: textColor,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ).centered(),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ).paddingOnly(left: 2.h, right: 2.h),
                    2.h.heightBox,
                    Divider(
                      height: 20,
                      thickness: 2,
                      // indent: 20,
                      // endIndent: 0,
                      color: btn1Color,
                    ),
                    // 1.h.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 4.h,
                              width: 10.h,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: btn1Color,
                                  width: 2,
                                ),
                                color: Colors.transparent,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4)),
                              ),
                              child: Center(
                                child: Text(
                                  "MEGA",
                                  style: TextStyle(
                                      color: textColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ).paddingOnly(right: 3.h),
                            Text(
                              "₹2999",
                              style: TextStyle(
                                color: textColor,
                                fontSize: 16,
                              ),
                            ).paddingOnly(right: 3.h),
                          ],
                        ),
                      ],
                    ).p(12),
                  ],
                ),
              ).centered(),
              5.h.heightBox,
              Container(
                      height: .8.h,
                      width: 35.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: btn1Color))
                  .centered(),
              5.h.heightBox,
            ],
          ),
        ),
      ),
    );
  }
}
