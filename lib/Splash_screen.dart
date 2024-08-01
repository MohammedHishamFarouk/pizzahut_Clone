import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';


class SplashScreen extends StatefulWidget{

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {
 late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
    _controller.addStatusListener((status) async{
      if(status == AnimationStatus.completed){
        Navigator.pushReplacementNamed(context, '/Onboarding');
      }
    });
  }

 @override
 void dispose() {
   _controller.dispose();
   super.dispose();
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Lottie.asset(
          'assets/pizza-box.json',
          controller: _controller,
          onLoaded: (composition){
            _controller.duration = composition.duration;
            _controller.forward();
          }

        ),
      ),
    );
  }
}