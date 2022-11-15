import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:dashed_rect/dashed_rect.dart';
import 'package:dotted_border/dotted_border.dart';

import '../constants.dart';

class ReferScreen extends StatefulWidget {
  const ReferScreen({Key? key}) : super(key: key);

  @override
  State<ReferScreen> createState() => _ReferScreenState();
}

class _ReferScreenState extends State<ReferScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.cover),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppBar(
                elevation: 0,
                backgroundColor: Colors.transparent,
                leading: IconButton(
                  icon: Image.asset('assets/images/backbtn.png'),
                  onPressed: () {},
                ),
              ),
              2.h.heightBox,
              Text(
                "Refer & Earn",
                style: TextStyle(
                    color: textColor,
                    fontSize: 25,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 1),
              ),
              2.h.heightBox,
              Image.asset(
                "assets/images/refer.png",
                width: 100.w,
                fit: BoxFit.fitWidth,
              ),
              1.h.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/money.png",
                    scale: 4,
                  ).paddingOnly(top: 1.h),
                  Text(
                    "Up to ₹500 Cash Bonus per friend",
                    style: TextStyle(color: textColor, fontSize: 18),
                  ),
                ],
              ).centered(),
              1.h.heightBox,
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Collect 10% every time they use their amount added to pay ",
                    style: TextStyle(
                      color: textColor,
                    ),
                  ),
                  Text(
                    "a Quiz Contest entry!",
                    style: TextStyle(color: textColor),
                  )
                ],
              ),
              1.h.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/info.png",
                    scale: 3,
                  ),
                  .5.w.widthBox,
                  Text(
                    "HOW IT WORKS",
                    style: TextStyle(color: textColor, fontSize: 16),
                  ),
                ],
              ).centered(),
              3.h.heightBox,
              Container(
                height: 7.h,
                width: 90.w,
                child: DottedBorder(
                  color: Colors.white,
                  strokeWidth: 2,
                  dashPattern: [6, 6],
                  child: TextField(
                    readOnly: true,
                    decoration: InputDecoration(
                      prefixIcon: ImageIcon(
                        AssetImage(
                          "assets/images/copy.png",
                        ),
                        color: Colors.white,
                      ),
                      border: InputBorder.none,
                      hintText: 'QUIZ0865',
                      hintStyle: TextStyle(color: textColor, fontSize: 18),
                    ),
                  ).centered(),
                ),
              ).centered(),
              3.h.heightBox,
              Container(
                height: 7.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4), color: btn1Color),
                //  padding: const EdgeInsets.all(15),
                child: const Text("INVITE PHONE CONTACTS",
                        style: TextStyle(
                            color: textColor1,
                            fontSize: 18,
                            fontWeight: FontWeight.bold))
                    .centered(),
              ).paddingOnly(right: 2.h, left: 2.h),
              3.h.heightBox,
              Container(
                height: 7.h,
                decoration: BoxDecoration(
                    border: Border.all(width: .5.w, color: btn1Color),
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.transparent),
                //  padding: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/whatsapp.png",
                      scale: 2,
                    ),
                    3.w.widthBox,
                    const Text("SHARE ON WHATSAPP",
                            style: TextStyle(
                                color: textColor,
                                fontSize: 18,
                                fontWeight: FontWeight.bold))
                        .centered(),
                  ],
                ),
              ).paddingOnly(right: 2.h, left: 2.h),
              3.h.heightBox,
              Container(
                height: 7.h,
                decoration: BoxDecoration(
                    border: Border.all(width: .5.w, color: btn1Color),
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.transparent),
                //  padding: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/share.png",
                      scale: 3,
                    ),
                    3.w.widthBox,
                    const Text("MORE OPTIONS",
                            style: TextStyle(
                                color: textColor,
                                fontSize: 18,
                                fontWeight: FontWeight.bold))
                        .centered(),
                  ],
                ),
              ).paddingOnly(right: 2.h, left: 2.h),
              10.h.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/group.png",
                    scale: 3,
                  ),
                  3.w.widthBox,
                  Text(
                    "Your invited friends on (app name)",
                    style: TextStyle(
                        color: textColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  3.w.widthBox,
                  Container(
                    height: 5.h,
                    width: 10.w,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Text(
                      "2",
                      style: TextStyle(color: textColor, fontSize: 18),
                    ).centered(),
                  ),
                  3.w.widthBox,
                  Image.asset(
                    "assets/images/backbtn2.png",
                    scale: 2,
                  )
                ],
              ),
              10.h.heightBox,
            ],
          ),
        ),
      ),
    );
  }
}
