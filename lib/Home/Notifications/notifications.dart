import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:game/constants.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBar(
                elevation: 0,
                automaticallyImplyLeading: false,
                backgroundColor: Colors.transparent,
                title: Image.asset(
                  'assets/images/backbtn.png',
                  height: 50.0,
                ).onTap(() {
                  Get.back();
                }),
              ),
              Text(
                "Notifications",
                style: TextStyle(
                    color: textColor,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1),
              ).centered(),
              2.h.heightBox,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Today",
                    style: TextStyle(color: textColor),
                  ),
                ],
              ).paddingOnly(left: 3.h),
              2.h.heightBox,
              Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 7.h,
                        width: 14.w,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5.sp),
                            image: DecorationImage(
                                image: AssetImage("assets/images/icon1.png"))),
                      ),
                      Positioned(
                        left: 30.sp,
                        child: Container(
                          height: 2.h,
                          width: 4.w,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10.sp),
                          ),
                        ),
                      )
                    ],
                  ),
                  5.w.widthBox,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 71.w,
                        child: Text(
                          "Lorem ipsum You have a (subject name) class at today 9:00 AM",
                          style: TextStyle(color: textColor),
                        ),
                      ),
                      Text(
                        "Just now",
                        style: TextStyle(color: btnColor),
                      )
                    ],
                  )
                ],
              ).paddingOnly(left: 3.h),
              2.h.heightBox,
              Container(
                height: 0.2.h,
                width: 90.w,
                color: Colors.white54,
              ).centered(),
              2.h.heightBox,
              Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 7.h,
                        width: 14.w,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5.sp),
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/images/notice.png",
                              ),
                            )),
                      ),
                      Positioned(
                        left: 30.sp,
                        child: Container(
                          height: 2.h,
                          width: 4.w,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10.sp),
                          ),
                        ),
                      )
                    ],
                  ),
                  5.w.widthBox,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Transaction Information",
                        style: TextStyle(color: textColor),
                      ),
                      Container(
                        width: 71.w,
                        child: Text(
                          "Lorem ipsum You have a (subject name) class at today 9:00 AM",
                          style: TextStyle(color: textColor),
                        ),
                      ),
                      Text(
                        "3 hours ago",
                        style: TextStyle(color: btnColor),
                      )
                    ],
                  )
                ],
              ).paddingOnly(left: 3.h),
              3.h.heightBox,
              Divider(
                color: Colors.white,
                thickness: .5.h,
              ),
              2.h.heightBox,
              Text(
                "27 Mar, 2022",
                style: TextStyle(color: textColor),
              ).paddingOnly(left: 3.h),
              2.h.heightBox,
              Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 7.h,
                        width: 14.w,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5.sp),
                            image: DecorationImage(
                                image:
                                    AssetImage("assets/images/message.png"))),
                      ),
                      Positioned(
                        left: 30.sp,
                        child: Container(
                          height: 2.h,
                          width: 4.w,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10.sp),
                          ),
                        ),
                      )
                    ],
                  ),
                  5.w.widthBox,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 71.w,
                        child: Text(
                          "Lorem ipsum You have a (subject name) class at today 9:00 AM",
                          style: TextStyle(color: textColor),
                        ),
                      ),
                    ],
                  )
                ],
              ).paddingOnly(left: 3.h),
              2.h.heightBox,
              Container(
                height: 0.2.h,
                width: 90.w,
                color: Colors.white54,
              ).centered(),
              2.h.heightBox,
              Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 7.h,
                        width: 14.w,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5.sp),
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/images/icon1.png",
                              ),
                            )),
                      ),
                      Positioned(
                        left: 30.sp,
                        child: Container(
                          height: 2.h,
                          width: 4.w,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10.sp),
                          ),
                        ),
                      )
                    ],
                  ),
                  5.w.widthBox,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Transaction Information",
                        style: TextStyle(color: textColor),
                      ),
                      Container(
                        width: 71.w,
                        child: Text(
                          "Lorem ipsum You have a (subject name) class at today 9:00 AM",
                          style: TextStyle(color: textColor),
                        ),
                      ),
                    ],
                  )
                ],
              ).paddingOnly(left: 3.h),
              3.h.heightBox,
              Divider(
                color: Colors.white,
                thickness: .5.h,
              ),
              2.h.heightBox,
              Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 7.h,
                        width: 14.w,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5.sp),
                            image: DecorationImage(
                                image:
                                    AssetImage("assets/images/message.png"))),
                      ),
                      Positioned(
                        left: 30.sp,
                        child: Container(
                          height: 2.h,
                          width: 4.w,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10.sp),
                          ),
                        ),
                      )
                    ],
                  ),
                  5.w.widthBox,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 71.w,
                        child: Text(
                          "Lorem ipsum You have a (subject name) class at today 9:00 AM",
                          style: TextStyle(color: textColor),
                        ),
                      ),
                    ],
                  )
                ],
              ).paddingOnly(left: 3.h),
              2.h.heightBox,
              Container(
                height: 0.2.h,
                width: 90.w,
                color: Colors.white54,
              ).centered(),
              2.h.heightBox,
              Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 7.h,
                        width: 14.w,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5.sp),
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/images/icon1.png",
                              ),
                            )),
                      ),
                      Positioned(
                        left: 30.sp,
                        child: Container(
                          height: 2.h,
                          width: 4.w,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10.sp),
                          ),
                        ),
                      )
                    ],
                  ),
                  5.w.widthBox,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Transaction Information",
                        style: TextStyle(color: textColor),
                      ),
                      Container(
                        width: 71.w,
                        child: Text(
                          "Lorem ipsum You have a (subject name) class at today 9:00 AM",
                          style: TextStyle(color: textColor),
                        ),
                      ),
                    ],
                  )
                ],
              ).paddingOnly(left: 3.h),
              2.h.heightBox,
              Container(
                height: 0.2.h,
                width: 90.w,
                color: Colors.white54,
              ).centered(),
              2.h.heightBox,
              Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 7.h,
                        width: 14.w,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5.sp),
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/images/icon1.png",
                              ),
                            )),
                      ),
                      Positioned(
                        left: 30.sp,
                        child: Container(
                          height: 2.h,
                          width: 4.w,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10.sp),
                          ),
                        ),
                      )
                    ],
                  ),
                  5.w.widthBox,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Transaction Information",
                        style: TextStyle(color: textColor),
                      ),
                      Container(
                        width: 71.w,
                        child: Text(
                          "Lorem ipsum You have a (subject name) class at today 9:00 AM",
                          style: TextStyle(color: textColor),
                        ),
                      ),
                    ],
                  )
                ],
              ).paddingOnly(left: 3.h),
              10.h.heightBox,
            ],
          ).centered(),
        ),
      ),
    );
  }
}
