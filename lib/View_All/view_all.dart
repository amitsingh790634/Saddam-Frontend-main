import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:game/Login/login.dart';
import 'package:game/constants.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class ViewAll extends StatefulWidget {
  const ViewAll({Key? key}) : super(key: key);

  @override
  State<ViewAll> createState() => _ViewAllState();
}

class _ViewAllState extends State<ViewAll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,

      // bottomNavigationBar: CustomAnimatedBottomBar(),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          // height: MediaQuery.of(context).size.height,
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
                leading: Image(image: AssetImage("assets/images/backbtn.png"))
                    .onTap(() {
                  Get.back();
                }),
              ),
              SizedBox(
                width: double.infinity,
                // height: MediaQuery.of(context).size.height,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                        child: Image.asset(
                      'assets/images/game_banner.png',
                    )),
                    5.h.heightBox.centered(),
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
                                    style: TextStyle(
                                        color: textColor, fontSize: 18),
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
                                    style: TextStyle(
                                        color: textColor, fontSize: 18),
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
                                    style: TextStyle(
                                        color: textColor, fontSize: 16),
                                  )
                                ],
                              ).p(14)
                            ],
                          ),
                        ).paddingOnly(right: 12),
                      ],
                    ).centered(),
                    2.h.heightBox,
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
                                    style: TextStyle(
                                        color: textColor, fontSize: 18),
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
                                    style: TextStyle(
                                        color: textColor, fontSize: 18),
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
                                    style: TextStyle(
                                        color: textColor, fontSize: 16),
                                  )
                                ],
                              ).p(14)
                            ],
                          ),
                        ).paddingOnly(right: 12),
                      ],
                    ).centered(),
                    2.h.heightBox,
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
                                    style: TextStyle(
                                        color: textColor, fontSize: 18),
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
                                    style: TextStyle(
                                        color: textColor, fontSize: 18),
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
                                    style: TextStyle(
                                        color: textColor, fontSize: 16),
                                  )
                                ],
                              ).p(14)
                            ],
                          ),
                        ).paddingOnly(right: 12),
                      ],
                    ).centered(),
                    2.h.heightBox,
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
                                    style: TextStyle(
                                        color: textColor, fontSize: 18),
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
                                    style: TextStyle(
                                        color: textColor, fontSize: 18),
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
                                    style: TextStyle(
                                        color: textColor, fontSize: 16),
                                  )
                                ],
                              ).p(14)
                            ],
                          ),
                        ).paddingOnly(right: 12),
                      ],
                    ).centered(),
                    2.h.heightBox,
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
                                    style: TextStyle(
                                        color: textColor, fontSize: 18),
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
                                    style: TextStyle(
                                        color: textColor, fontSize: 18),
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
                                    style: TextStyle(
                                        color: textColor, fontSize: 16),
                                  )
                                ],
                              ).p(14)
                            ],
                          ),
                        ).paddingOnly(right: 12),
                      ],
                    ).centered(),
                    2.h.heightBox,
                  ],
                ),
              ),
              10.h.heightBox,
            ],
          ),
        ),
      ),
    );
  }
}
