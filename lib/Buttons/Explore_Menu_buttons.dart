import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pizzahut/Buttons/Ink_well_buttons.dart';


class ExploreMenuButtons extends StatelessWidget {
 Color _cotor = Colors.white;
 String _exploretext = '';
 String _exphoto = '';
  ExploreMenuButtons({Color cotor = Colors.white,String exploretext = '',String exphoto = 'chicken.png'}){
    this._cotor = cotor;
    this._exploretext = exploretext;
    this._exphoto = exphoto;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.topCenter,
        children:[
          Column(
            children: [
              SizedBox(height: 60,),
              Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children:[
                  Container(
                  height: 90,
                  width: 120,
                  color: Colors.white,
                ),
                  Container(
                    height: 5,
                    width: 120,
                    color: _cotor,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text('$_exploretext',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15
                    ),),
                  )
      ]
              ),
            ],
          ),
          InkWellButtons(photo:_exphoto,choosenroute: '/ExplorePage',)
                ],
              ),
    );
  }
}
