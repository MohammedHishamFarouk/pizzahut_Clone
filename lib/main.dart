import 'package:flutter/material.dart';
import 'package:pizzahut/Splash_screen.dart';
import 'package:pizzahut/pages/Explore_Menu_Page.dart';
import 'package:pizzahut/pages/Home_page.dart';
import 'package:pizzahut/pages/Item_page.dart';
import 'package:pizzahut/pages/OnBoarding_Page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: '/Splashscreen',
      routes: {
        '/Splashscreen':(context) => SplashScreen(),
        '/':(context) => HomePage(),
        '/ExplorePage':(context) => ExploreMenuPage(),
        '/ItemPage':(context) => ItemPage(),
        '/Onboarding':(context) => OnboardingPage()
      },
    );
  }

}
