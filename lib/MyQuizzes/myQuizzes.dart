import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../constants.dart';

class MyQuizzes extends StatefulWidget {
  const MyQuizzes({Key? key}) : super(key: key);

  @override
  State<MyQuizzes> createState() => _MyQuizzesState();
}

class _MyQuizzesState extends State<MyQuizzes> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/background.png",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        DefaultTabController(
          length: 3,
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              bottom: const TabBar(
                tabs: [
                  Tab(text: "Contest"),
                  Tab(text: "My Contest (0)"),
                  Tab(text: "My Teams (0)")
                ],
              ),
              elevation: 0,
              title: Text(
                "My Quiz",
                style: TextStyle(fontSize: 20, letterSpacing: 2),
              ),
              leading: IconButton(
                icon: Image.asset('assets/images/backbtn.png'),
                onPressed: () {},
              ),
              centerTitle: true,
              backgroundColor: Colors.transparent,
            ),
            body: Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      3.h.heightBox,
                      Row(
                        children: [
                          Text(
                            "Today",
                            style: TextStyle(color: textColor, fontSize: 16),
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(4)),
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
                                    ),
                                  ),
                                ),
                              ],
                            ).p(12),
                          ],
                        ),
                      ).centered(),
                      2.h.heightBox,
                      Container(
                        height: 0.5.h,
                        // width: 90.w,
                        decoration: BoxDecoration(color: Colors.white38),
                      ).paddingOnly(right: 3.h, left: 3.h),
                      2.h.heightBox,
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(4)),
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
                                    ),
                                  ),
                                )
                              ],
                            ).p(12),
                          ],
                        ),
                      ).centered(),
                      2.h.heightBox,
                      Container(
                        height: 0.7.h,
                        // width: 90.w,
                        decoration: BoxDecoration(color: Colors.white38),
                      ),
                      Row(
                        children: [
                          Text(
                            "Upcoming quizzes",
                            style: TextStyle(color: textColor, fontSize: 16),
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(4)),
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
                                    ),
                                  ),
                                ),
                              ],
                            ).p(12),
                          ],
                        ),
                      ).centered(),
                      2.h.heightBox,
                      Container(
                        height: 0.5.h,
                        // width: 90.w,
                        decoration: BoxDecoration(color: Colors.white38),
                      ).paddingOnly(right: 3.h, left: 3.h),
                      2.h.heightBox,
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(4)),
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
                                    ),
                                  ),
                                )
                              ],
                            ).p(12),
                          ],
                        ),
                      ).centered(),
                      2.h.heightBox,
                      Container(
                        height: 0.7.h,
                        // width: 90.w,
                        decoration: BoxDecoration(color: Colors.white38),
                      ),
                      Row(
                        children: [
                          Text(
                            "Big Entry - Big Reward",
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
                                  "Prize Pool",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(color: textColor),
                                ).paddingOnly(left: 2.h, top: 2.h),
                              ],
                            ),
                            4.h.heightBox,
                            Column(
                              // mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "₹999",
                                      style: TextStyle(
                                          fontSize: 16, color: textColor),
                                    ),
                                    Spacer(),
                                    Column(
                                      children: [
                                        Text(
                                          "Entry",
                                          style: TextStyle(color: textColor),
                                        ).paddingOnly(left: 4.h, bottom: 1.h),
                                        Container(
                                          height: 3.h,
                                          width: 10.h,
                                          decoration: BoxDecoration(
                                            color: Color(
                                              0xff00BA33,
                                            ),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(4)),
                                          ),
                                          child: Center(
                                            child: Text(
                                              "₹250",
                                              style: TextStyle(
                                                  color: textColor,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                2.h.heightBox,
                                Divider(
                                  color: Colors.red,
                                  thickness: .2.h,
                                ),
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "3 spot left",
                                          style: TextStyle(
                                            color: Colors.red,
                                          ),
                                        ),
                                      ],
                                    ),
                                    2.h.heightBox,
                                  ],
                                ),
                              ],
                            ).paddingOnly(left: 2.h, right: 2.h),
                            2.h.heightBox,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "assets/images/first.png",
                                      scale: 2.5,
                                      color: Colors.white,
                                    ),
                                    2.w.widthBox,
                                    Text(
                                      "₹2999",
                                      style: TextStyle(
                                        color: textColor,
                                        fontSize: 16,
                                      ),
                                    ).paddingOnly(right: 3.h),
                                    Image.asset(
                                      "assets/images/trophy.png",
                                      scale: 2.5,
                                      color: Colors.white,
                                    ),
                                    2.w.widthBox,
                                    Text(
                                      "₹67%",
                                      style: TextStyle(
                                        color: textColor,
                                        fontSize: 16,
                                      ),
                                    ).paddingOnly(right: 3.h),
                                    Image.asset(
                                      "assets/images/dollar.png",
                                      scale: 2,
                                    ),
                                    2.w.widthBox,
                                    Text(
                                      "Single",
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
                                  "Prize Pool",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(color: textColor),
                                ).paddingOnly(left: 2.h, top: 2.h),
                              ],
                            ),
                            4.h.heightBox,
                            Column(
                              // mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "₹999",
                                      style: TextStyle(
                                          fontSize: 16, color: textColor),
                                    ),
                                    Spacer(),
                                    Column(
                                      children: [
                                        Text(
                                          "Entry",
                                          style: TextStyle(color: textColor),
                                        ).paddingOnly(left: 4.h, bottom: 1.h),
                                        Container(
                                          height: 3.h,
                                          width: 10.h,
                                          decoration: BoxDecoration(
                                            color: Color(
                                              0xff00BA33,
                                            ),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(4)),
                                          ),
                                          child: Center(
                                            child: Text(
                                              "₹250",
                                              style: TextStyle(
                                                  color: textColor,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                2.h.heightBox,
                                Divider(
                                  color: Colors.red,
                                  thickness: .2.h,
                                ),
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "3 spot left",
                                          style: TextStyle(
                                            color: Colors.red,
                                          ),
                                        ),
                                      ],
                                    ),
                                    2.h.heightBox,
                                  ],
                                ),
                              ],
                            ).paddingOnly(left: 2.h, right: 2.h),
                            2.h.heightBox,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "assets/images/first.png",
                                      scale: 2.5,
                                      color: Colors.white,
                                    ),
                                    2.w.widthBox,
                                    Text(
                                      "₹2999",
                                      style: TextStyle(
                                        color: textColor,
                                        fontSize: 16,
                                      ),
                                    ).paddingOnly(right: 3.h),
                                    Image.asset(
                                      "assets/images/trophy.png",
                                      scale: 2.5,
                                      color: Colors.white,
                                    ),
                                    2.w.widthBox,
                                    Text(
                                      "₹67%",
                                      style: TextStyle(
                                        color: textColor,
                                        fontSize: 16,
                                      ),
                                    ).paddingOnly(right: 3.h),
                                    Image.asset(
                                      "assets/images/dollar.png",
                                      scale: 2,
                                    ),
                                    2.w.widthBox,
                                    Text(
                                      "Single",
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
                      1.h.heightBox,
                    ],
                  ),
                ),
                Container(
                  height: 7.h,
                  width: 40.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.blue,
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/questions.png",
                        scale: 2,
                      ).paddingOnly(left: 7.5.h, top: 2.h),
                      Text(
                        "Quiz  /",
                        style: TextStyle(color: textColor, fontSize: 16),
                      ),
                      2.w.widthBox,
                      Image.asset(
                        "assets/images/plus.png",
                        scale: 2,
                      ),
                      2.w.widthBox,
                      Text(
                        "Create Team",
                        style: TextStyle(color: textColor, fontSize: 16),
                      )
                    ],
                  ).centered(),
                ).paddingOnly(top: 60.h).centered(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
