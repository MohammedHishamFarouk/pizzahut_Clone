import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pizzahut/Boarding_screens/Screen1.dart';
import 'package:pizzahut/Boarding_screens/Screen2.dart';
import 'package:pizzahut/Boarding_screens/Screen3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatefulWidget {
  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  PageController pageController = PageController();

  String _Buttontext = 'Skip';
  int _currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            onPageChanged: (index) {
              _currentindex = index;
              if (index == 2) {
                _Buttontext = 'finish';
              } else {
                _Buttontext = 'Skip';
              }
              setState(() {});
            },
            children: [
              Screen1(),
              Screen2(),
              Screen3(),
            ],
          ),
          Container(
            alignment: Alignment(0, 0.8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {Navigator.pushReplacementNamed(context, '/');},
                  child: Text('$_Buttontext'),
                ),
                SizedBox(),
                SmoothPageIndicator(controller: pageController, count: 3),
                SizedBox(),
                _currentindex == 2 ? SizedBox(width: 30,) : GestureDetector(
                  onTap: () {
                   pageController.nextPage(duration: Duration(milliseconds:500),curve: Curves.easeIn);
                  },
                  child: Text('Next'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
