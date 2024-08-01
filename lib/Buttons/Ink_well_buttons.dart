import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InkWellButtons extends StatelessWidget {
  double _framesize = 0;
  String _photo = '';
  String _choosenroute = '';
  double _elvat = 8;

  InkWellButtons({
    String choosenroute = '',
    double framesize = 120,
    String photo = 'chicken.png',
    double elvat = 8,
  }){
    this._framesize = framesize;
    this._photo = photo;
    this._choosenroute = choosenroute;
    this._elvat = elvat;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
        elevation: _elvat,
        shape: CircleBorder(),
        child: InkWell(
          borderRadius: BorderRadius.circular(110),
          onTap: () {
            Navigator.of(context).pushNamed('$_choosenroute');
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Ink.image(
                image: AssetImage(
                  '$_photo',
                ),
                width: _framesize,
                height: _framesize,
                fit: BoxFit.cover
              ),
            ],
          ),
        ));
  }
}
