import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:game/Home/home.dart';
import 'package:game/Widgets/bottom_nav_bar.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../constants.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/background.png'),
              fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  icon: Image.asset('assets/images/backbtn.png'),
                  onPressed: () {},
                ),
                3.h.heightBox,
                Center(
                    child: Text(
                  "My Wallet",
                  style: TextStyle(
                      color: textColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1),
                )),
                Text(
                  "Hello, User Name",
                  style: TextStyle(
                      color: textColor, fontSize: 18, letterSpacing: 1),
                ).p(20),
                Container(
                  height: 20.h,
                  width: 90.w,
                  decoration: BoxDecoration(
                    color: Color(0xff001EFF),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "356000.00",
                        style: TextStyle(
                          color: textColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ).paddingOnly(left: 7.h, top: 5.h),
                      Text(
                        "* * * * * * * * * * * *  3565",
                        style: TextStyle(
                          color: textColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ).paddingOnly(left: 7.h, top: 3.h),
                    ],
                  ),
                ).centered(),
                2.h.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total Balance",
                      style: TextStyle(color: textColor),
                    ).paddingOnly(left: 20),
                    Center(
                      child: Container(
                        height: 3.h,
                        width: 15.h,
                        decoration: BoxDecoration(
                          color: Color(0xff00E840),
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                        ),
                        child: Center(
                          child: Text(
                            "ADD CASH",
                            style: TextStyle(
                                color: textColor,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ).paddingOnly(right: 20),
                  ],
                ).centered(),
                0.5.h.heightBox,
                Text(
                  "₹2999.00",
                  style: TextStyle(color: textColor),
                ).paddingOnly(left: 20),
                Divider(
                  height: 2,
                  thickness: 1,
                  color: btn1Color,
                ).p(12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total Balance",
                      style: TextStyle(color: textColor),
                    ).paddingOnly(left: 20),
                    Image.asset(
                      "assets/images/info.png",
                      scale: 2,
                    ).paddingOnly(right: 20),
                  ],
                ).centered(),
                0.5.h.heightBox,
                Text(
                  "00",
                  style: TextStyle(color: textColor),
                ).paddingOnly(left: 20),
                Divider(
                  height: 2,
                  thickness: 1,
                  color: btn1Color,
                ).p(12),
                Text(
                  "Winnings",
                  style: TextStyle(color: textColor),
                ).paddingOnly(left: 20),
                0.5.h.heightBox,
                Row(
                  children: [
                    Text(
                      "00",
                      style: TextStyle(color: textColor),
                    ).paddingOnly(left: 20),
                    Spacer(),
                    Center(
                      child: Container(
                        height: 3.h,
                        width: 20.h,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: btn1Color),
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                        ),
                        child: Center(
                          child: Text(
                            "Withdraw Instantly",
                            style: TextStyle(
                                color: textColor,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ).paddingOnly(right: 20),
                    Image.asset(
                      "assets/images/info.png",
                      scale: 2,
                    ).paddingOnly(right: 20),
                  ],
                ),
                Divider(
                  height: 2,
                  thickness: 1,
                  color: btn1Color,
                ).p(12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total Balance",
                      style: TextStyle(color: textColor),
                    ).paddingOnly(left: 20),
                    Image.asset(
                      "assets/images/info.png",
                      scale: 2,
                    ).paddingOnly(right: 20),
                  ],
                ).centered(),
                0.5.h.heightBox,
                Text(
                  "00",
                  style: TextStyle(color: textColor),
                ).paddingOnly(left: 20),
                Divider(
                  height: 2,
                  thickness: 1,
                  color: btn1Color,
                ).p(12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total Balance",
                      style: TextStyle(color: textColor),
                    ).paddingOnly(left: 20),
                    Image.asset(
                      "assets/images/backbtn2.png",
                      scale: 2.5,
                      color: btn1Color,
                    ).paddingOnly(right: 20),
                  ],
                ).centered(),
                0.5.h.heightBox,
                Divider(
                  height: 2,
                  thickness: 1,
                  color: btn1Color,
                ).p(12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "My Transactions",
                      style: TextStyle(color: textColor),
                    ).paddingOnly(left: 20),
                    Image.asset(
                      "assets/images/backbtn2.png",
                      scale: 2.5,
                      color: btn1Color,
                    ).paddingOnly(right: 20),
                  ],
                ).centered(),
                0.5.h.heightBox,
                Divider(
                  height: 2,
                  thickness: 1,
                  color: btn1Color,
                ).p(12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "My Transactions",
                      style: TextStyle(color: textColor),
                    ).paddingOnly(left: 20),
                    Image.asset(
                      "assets/images/backbtn2.png",
                      scale: 2.5,
                      color: btn1Color,
                    ).paddingOnly(right: 20),
                  ],
                ).centered(),
                0.5.h.heightBox,
                Text(
                  "Add/Remove Cards, Wallet, etc.",
                  style: TextStyle(color: textColor),
                ).paddingOnly(left: 20),
                Divider(
                  height: 2,
                  thickness: 1,
                  color: btn1Color,
                ).p(12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "KYC Details",
                      style: TextStyle(color: textColor),
                    ).paddingOnly(left: 20),
                    Image.asset(
                      "assets/images/backbtn2.png",
                      scale: 2.5,
                      color: btn1Color,
                    ).paddingOnly(right: 20),
                  ],
                ).centered(),
                0.5.h.heightBox,
                Divider(
                  height: 2,
                  thickness: 1,
                  color: btn1Color,
                ).p(12),
                Row(
                  children: [
                    Image.asset(
                      "assets/images/info.png",
                      scale: 2.5,
                      color: btn1Color,
                    ).paddingOnly(left: 20),
                    .5.w.widthBox,
                    Text(
                      "Have a question about your balance?",
                      style: TextStyle(color: textColor),
                    ),
                    .5.w.widthBox,
                    Text(
                      " Get help",
                      style: TextStyle(color: btnColor),
                    ),
                  ],
                ).centered(),
                5.h.heightBox,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
