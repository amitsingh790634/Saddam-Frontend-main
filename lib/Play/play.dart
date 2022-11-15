import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:game/constants.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class PlayScreen extends StatefulWidget {
  const PlayScreen({Key? key}) : super(key: key);

  @override
  State<PlayScreen> createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              10.h.heightBox,
              Container(
                height: 11.h,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: btn1Color),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Total Numbers of Players : 04",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
                    ).p(12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Question : 6/10",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w800),
                        ).p(12),
                        Text(
                          "Time : 60 sec",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w800),
                        ).p(12),
                      ],
                    ),
                  ],
                ),
              ),
              5.h.heightBox,
              Container(
                height: 28.h,
                width: 47.h,
                decoration: BoxDecoration(
                  border: Border.all(color: btn1Color, width: 0.3.h),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 2),
                        color: Colors.transparent.withOpacity(0.2),
                        blurRadius: .2),
                  ],
                ),
                child: Scrollbar(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    reverse: true,
                    child: SizedBox(
                      height: 190.0,
                      child: const TextField(
                        keyboardType: TextInputType.number,
                        maxLines: 100,
                        cursorHeight: 30,
                        autocorrect: true,
                        cursorColor: textColor,
                        style: TextStyle(
                            color: textColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                        decoration: InputDecoration(
                          border: InputBorder.none,

                          // hintText: 'Add your text here',
                        ),
                      ).p(15),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
