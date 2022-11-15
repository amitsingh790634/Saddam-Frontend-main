import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../constants.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
                Center(
                  child: CircleAvatar(
                    radius: (52),
                    backgroundColor: Colors.white,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset("assets/images/profile.png"),
                    ),
                  ),
                ),
                3.h.heightBox,
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
                        "Edit Profile",
                        style: TextStyle(
                            color: textColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                2.h.heightBox,
                Container(
                  height: 0.2.h,
                  width: 90.w,
                  color: Colors.white54,
                ).centered(),
                Container(
                  height: 40,
                  width: 90.w,
                  child: Row(
                    children: [
                      Text(
                        'User Name :',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      15.w.widthBox,
                      Container(
                              height: .3.h,
                              width: 3.w,
                              decoration: BoxDecoration(color: btn1Color))
                          .centered(),
                      5.w.widthBox,
                      Container(
                        height: 40,
                        width: 30.w,
                        child: TextField(
                          style: TextStyle(color: textColor, fontSize: 18),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "User Name",
                            hintStyle: TextStyle(
                              color: Color(0xffA9A9A9),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ).centered(),
                1.h.heightBox,
                Container(
                  height: 40,
                  width: 90.w,
                  child: Row(
                    children: [
                      Text(
                        'Email Address :',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      8.w.widthBox,
                      Container(
                              height: .3.h,
                              width: 3.w,
                              decoration: BoxDecoration(color: btn1Color))
                          .centered(),
                      5.w.widthBox,
                      Container(
                        height: 40,
                        width: 30.w,
                        child: TextField(
                          style: TextStyle(color: textColor, fontSize: 18),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Email Address",
                            hintStyle: TextStyle(
                              color: Color(0xffA9A9A9),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ).centered(),
                1.h.heightBox,
                Container(
                  height: 40,
                  width: 90.w,
                  child: Row(
                    children: [
                      Text(
                        'Contact Number :',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      4.w.widthBox,
                      Container(
                              height: .3.h,
                              width: 3.w,
                              decoration: BoxDecoration(color: btn1Color))
                          .centered(),
                      5.w.widthBox,
                      Container(
                        height: 40,
                        width: 40.w,
                        child: TextField(
                          style: TextStyle(color: textColor, fontSize: 18),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Contact Number",
                            hintStyle: TextStyle(
                              color: Color(0xffA9A9A9),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ).centered(),
                1.h.heightBox,
                Container(
                  height: 40,
                  width: 90.w,
                  child: Row(
                    children: [
                      Text(
                        'Language :',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      18.w.widthBox,
                      Container(
                              height: .3.h,
                              width: 3.w,
                              decoration: BoxDecoration(color: btn1Color))
                          .centered(),
                      5.w.widthBox,
                      Container(
                        height: 40,
                        width: 30.w,
                        child: TextField(
                          style: TextStyle(color: textColor, fontSize: 18),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Language",
                            hintStyle: TextStyle(
                              color: Color(0xffA9A9A9),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ).centered(),
                1.h.heightBox,
                Container(
                  height: 40,
                  width: 90.w,
                  child: Row(
                    children: [
                      Text(
                        'Country :',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      23.w.widthBox,
                      Row(
                        children: [
                          Container(
                                  height: .3.h,
                                  width: 3.w,
                                  decoration: BoxDecoration(color: btn1Color))
                              .centered(),
                          3.w.widthBox,
                          Container(
                            height: 40,
                            width: 30.w,
                            child: TextField(
                              style: TextStyle(color: textColor, fontSize: 18),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Country",
                                hintStyle: TextStyle(
                                  color: Color(0xffA9A9A9),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      5.w.widthBox,
                    ],
                  ),
                ).centered(),
                1.h.heightBox,
                Container(
                  height: 40,
                  width: 90.w,
                  child: Row(
                    children: [
                      Text(
                        'Contact Number :',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      5.w.widthBox,
                      Row(
                        children: [
                          Container(
                                  height: .3.h,
                                  width: 3.w,
                                  decoration: BoxDecoration(color: btn1Color))
                              .centered(),
                          2.w.widthBox,
                          Container(
                            height: 40,
                            width: 40.w,
                            child: TextField(
                              style: TextStyle(color: textColor, fontSize: 18),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Contact Number",
                                hintStyle: TextStyle(
                                  color: Color(0xffA9A9A9),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ).centered(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
