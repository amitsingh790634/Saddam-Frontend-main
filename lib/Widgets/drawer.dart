import 'package:game/Terms%20&%20Conditions/terms_conditions.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';

import '../Privacy Policy/privacy_policy.dart';
import '../Refer & Earn/refer_&_earn.dart';
import '../constants.dart';

class OpenDrawer extends StatefulWidget {
  const OpenDrawer({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _OpenDrawerState createState() => _OpenDrawerState();
}

class _OpenDrawerState extends State<OpenDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: const BoxDecoration(
            color: Color(0xff230040),
            image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            4.h.heightBox,
            Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  // backgroundColor: Colors.green,
                  radius: 42,
                  child: CircleAvatar(
                    backgroundColor: Colors.greenAccent[100],
                    radius: 41,
                    child: CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/images/user.png'), //NetworkImage
                      radius: 39,
                    ), //CircleAvatar
                  ), //CircleAvatar
                ).px32(),
                Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'User Name',
                      style: TextStyle(
                        color: textColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                      ),
                    ),
                    1.h.heightBox,

                    //Image.asset('lib/assets/asset/avatar.png'),

                    Text(
                      'userid@gmail.com',
                      style: TextStyle(
                        color: textColor,
                        fontSize: 11,
                      ),
                    ),
                    1.h.heightBox,

                    //Image.asset('lib/assets/asset/avatar.png'),

                    Text(
                      '+91 0123456789',
                      style: TextStyle(
                        color: textColor,
                        fontSize: 11,
                      ),
                    )
                  ],
                ),
              ],
            ),
            1.h.heightBox,
            2.h.heightBox,
            Expanded(
              child: ListView(
                padding: EdgeInsets.all(0.0),
                children: [
                  ListTile(
                    //Icon(FontAwesomeIcons.calendarCheck,color: textColor,),
                    title: Text(
                      'Refer & Earn',
                      style: TextStyle(color: textColor),
                    ),
                    //PersonalDetails
                  ).px16().onTap(() {
                    Get.to(() => ReferScreen());
                  }),

                  ListTile(
                    //Icon(Icons.supervised_user_circle,color: textColor,),
                    title: Text(
                      'Change Language',
                      style: TextStyle(color: textColor),
                    ),
                    //PersonalDetails
                  ).px16().onTap(() {
                    // Get.to(() => DiscoverPage());

                    //Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderPage()));
                  }),

                  ListTile(
                    title: Text(
                      'Settings',
                      style: TextStyle(color: textColor),
                    ),
                    //PersonalDetails
                  ).px16().onTap(() {
                    // Get.to(() => CategaryPage());

                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>GoogleFit()));
                  }),
                  ListTile(
                    title: Text(
                      'About us',
                      style: TextStyle(color: textColor),
                    ),
                    //PersonalDetails
                  ).px16().onTap(() {
                    // Get.to(() => CheckoutAddress());

                    //Navigator.push(context, MaterialPageRoute(builder: (context)=>UserComments()));
                  }),
                  ListTile(
                    title: Text(
                      'Help & Support',
                      style: TextStyle(color: textColor),
                    ),
                    //PersonalDetails
                  ).px16().onTap(() {
                    // Get.to(() => ProductPage());

                    //Navigator.push(context, MaterialPageRoute(builder: (context)=>MyReports()));
                  }),
                  ListTile(
                    //Icon(Icons.supervised_user_circle,color: textColor,),
                    title: Text(
                      'Privacy Policy',
                      style: TextStyle(color: textColor),
                    ),
                    //PersonalDetails
                  ).px16().onTap(() {
                    Get.to(PrivacyPolicyScreen());
                  }), //ShrareDetails

                  ListTile(
                    title: Text(
                      'Terms & Condition',
                      style: TextStyle(color: textColor),
                    ),
                    //PersonalDetails
                  ).px16().onTap(() {
                    Get.to(TermsConditionsScreen());
                  }),

                  ListTile(
                    title: Text(
                      'Logout',
                      style: TextStyle(color: textColor),
                    ),
                    //PersonalDetails
                  ).px16().onTap(() {
                    //Navigator.push(context, MaterialPageRoute(builder: (context)=>MyAppointment()));
                  }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
