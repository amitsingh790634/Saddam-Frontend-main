import 'package:flutter/material.dart';
import 'package:game/Onboarding/onboarding_contents.dart';
import 'package:game/Onboarding/size_config.dart';
import 'package:game/Welcome/welcome.dart';
import 'package:game/constants.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';
// import 'package:onboarding_app/size_config.dart';
// import 'package:onboarding_app/onboarding_contents.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final _controller = PageController();
  int _currentPage = 0;
  // List colors = [Color(0xffDAD3C8), Color(0xffFFE5DE), Color(0xffDCF6E6)];

  AnimatedContainer _buildDots({int? index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
        color: textColor,
      ),
      margin: const EdgeInsets.only(right: 5),
      height: 8,
      curve: Curves.easeIn,
      width: _currentPage == index ? 40 : 10,
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.screenW!;
    double height = SizeConfig.screenH!;
    double blockH = SizeConfig.blockH!;
    double blockV = SizeConfig.blockV!;

    return Scaffold(
      body: Center(
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
              Expanded(
                flex: 2,
                child: PageView.builder(
                  controller: _controller,
                  onPageChanged: (value) =>
                      setState(() => _currentPage = value),
                  itemCount: contents.length,
                  itemBuilder: (context, i) {
                    return Container(
                      child: Center(
                        child: Column(
                          children: [
                            20.h.heightBox,
                            // SizedBox(height: 20.h,),
                            Image.asset(
                              contents[i].image,
                              height: SizeConfig.blockV! * 33,
                            ),
                            1.h.heightBox.centered(),
                            Text(
                              contents[i].title,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: textColor,
                                fontWeight: FontWeight.w600,
                                fontSize: (width <= 550) ? 20 : 35,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        contents.length,
                        (int index) => _buildDots(index: index),
                      ),
                    ),
                    _currentPage + 1 == contents.length
                        ? Padding(
                            padding: const EdgeInsets.all(40),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => WelcomeScreen()),
                                );
                              },
                              child: Text("START"),
                              style: ElevatedButton.styleFrom(
                                primary: btnColor,
                                shape: new RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                elevation: 0,
                                padding: (width <= 550)
                                    ? EdgeInsets.symmetric(
                                        horizontal: 110, vertical: 20)
                                    : EdgeInsets.symmetric(
                                        horizontal: width * 0.2, vertical: 25),
                                textStyle: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ),
                          )
                        : Padding(
                            padding: const EdgeInsets.all(40),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    _controller.nextPage(
                                      duration: Duration(milliseconds: 200),
                                      curve: Curves.easeIn,
                                    );
                                  },
                                  child: Text("NEXT"),
                                  style: ElevatedButton.styleFrom(
                                    primary: btnColor,
                                    shape: new RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    elevation: 0,
                                    padding: (width <= 550)
                                        ? EdgeInsets.symmetric(
                                            horizontal: 110, vertical: 20)
                                        : EdgeInsets.symmetric(
                                            horizontal: width * 0.2,
                                            vertical: 25),
                                    textStyle: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 2),
                                  ),
                                ),
                              ],
                            ),
                          )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
