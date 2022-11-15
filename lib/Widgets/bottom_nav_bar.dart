import 'package:flutter/material.dart';
import 'package:game/constants.dart';
import '../Home/Notifications/notifications.dart';
import '../Home/Profile/profile.dart';
import '../Home/home.dart';
import '../MyQuizzes/myQuizzes.dart';
import '../MyWallet/myWallet.dart';

class Bottom extends StatefulWidget {
  int? index;
  Bottom({Key? key, this.index}) : super(key: key);

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int _currentIndex = 0;
  List pageData = [
    HomeScreen(),
    MyQuizzes(),
    WalletScreen(),
    NotificationScreen(),
    ProfileScreen()
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: pageData[_currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff78119F),
        // elevation: 0,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        selectedFontSize: 15,
        unselectedItemColor: Colors.white38,
        unselectedFontSize: 13,
        selectedItemColor: btn1Color,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: "Home",
              backgroundColor: Color(0xff868686)),
          BottomNavigationBarItem(
              icon: InkWell(
                child: ImageIcon(AssetImage("assets/images/quiz.png")),
              ),
              label: "My Quiz",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/wallet.png")),
              label: "Wallet",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_outlined),
              label: 'Notification',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: 'Profile',
              backgroundColor: Colors.white),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
