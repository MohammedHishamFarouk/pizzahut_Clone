
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pizzahut/Buttons/Four_line_Buttons.dart';

class FourLineButtons extends StatelessWidget{
  @override
  String _text = '';
  String _photo = '';
  FourLineButtons({String text = '',String photo = ''}){
    this._photo = photo;
    this._text = text;
  }
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: () {},
        child: Row(
          children: [
            SizedBox(width: 10,),
            Image(
              image: AssetImage('$_photo'),
              width: 20,
              height: 35,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              '$_text',
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w800),
            ),
            SizedBox(width: 10,)
          ],
        ),
        style: OutlinedButton.styleFrom(
            padding: EdgeInsets.all(5),
            overlayColor: Colors.black,
            side: BorderSide(color: Colors.grey, width: 0.5),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18))),
    );
  }

}