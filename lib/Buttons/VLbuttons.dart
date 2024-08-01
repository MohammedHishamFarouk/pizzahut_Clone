import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Vlbuttons extends StatelessWidget{
  @override
  String _photo = '';
  Vlbuttons({String photo = ''}){this._photo = photo;}
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0,right: 10.0,left: 10.0),
            child: Material(
              elevation: 8,
              borderRadius: BorderRadius.all(Radius.circular(18)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: Material(
                  child: InkWell(
                    borderRadius: BorderRadius.all(Radius.circular(18)),
                    onTap: () {},
                    child:Ink.image(
                      image: AssetImage(
                        'assets/food/$_photo',
                      ),
                      width: 400,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  
}