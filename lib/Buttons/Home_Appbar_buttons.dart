import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeAppbarButtons extends StatelessWidget{
  dynamic _bordercolor = Colors.white;
  String _iconname = 'delivery-man.png';
  double _framesize = 38;
  HomeAppbarButtons({
    dynamic bordercolor = Colors.white,
    String icon = 'delivery-man.png',
    double framesize = 38
  }){
    this._bordercolor = bordercolor;
    this._framesize = framesize;
    this._iconname = icon;
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      height: 70,
      child: ElevatedButton(
        onPressed: () {},
        child: Image.asset(
          'assets/icons/$_iconname',
          width: _framesize,
          height: _framesize,
        ),
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(0),
            backgroundColor: Colors.white,
            shape: CircleBorder(
                side: BorderSide(color: _bordercolor))),
      ),
    );
  }

}