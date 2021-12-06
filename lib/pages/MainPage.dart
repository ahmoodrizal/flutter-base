import 'package:base_app/pages/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:base_app/theme.dart';
import 'SecondPage.dart';
import 'ThirdPage.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  Widget customNavBar() {
    return DotNavigationBar(
      enableFloatingNavBar: true,
      dotIndicatorColor: backgroundColor1,
      borderRadius: 14,
      marginR: EdgeInsets.symmetric(
        vertical: defaultmargin,
        horizontal: defaultmargin,
      ),
      currentIndex: currentIndex,
      backgroundColor: Color(0xffA1A4D9),
      onTap: (value) {
        print('Page ' + value.toString());
        setState(() {
          currentIndex = value;
        });
      },
      items: [
        DotNavigationBarItem(
          icon: Container(
            width: 22,
            child: currentIndex == 0
                ? Icon(
                    Icons.home,
                    color: backgroundColor1,
                  )
                : Icon(
                    Icons.home,
                    color: Colors.white30,
                  ),
          ),
          selectedColor: backgroundColor1,
        ),
        DotNavigationBarItem(
          icon: Container(
            width: 22,
            child: currentIndex == 1
                ? Icon(
                    Icons.folder,
                    color: backgroundColor1,
                  )
                : Icon(
                    Icons.folder,
                    color: Colors.white30,
                  ),
          ),
          selectedColor: backgroundColor1,
        ),
        DotNavigationBarItem(
          icon: Container(
            width: 22,
            child: currentIndex == 2
                ? Icon(Icons.folder, color: backgroundColor1)
                : Icon(
                    Icons.folder,
                    color: Colors.white30,
                  ),
          ),
          selectedColor: backgroundColor1,
        ),
      ],
    );
  }

  // ignore: override_on_non_overriding_member
  Widget body() {
    switch (currentIndex) {
      case 0:
        return HomePage();
        // ignore: dead_code
        break;
      case 1:
        return SecondPage();
        // ignore: dead_code
        break;
      case 2:
        return ThirdPage();
        // ignore: dead_code
        break;
      default:
        return HomePage();
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: body(),
      extendBody: true,
      bottomNavigationBar: customNavBar(),
    );
  }
}
