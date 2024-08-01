import 'package:flutter/cupertino.dart';

class Screen3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/screen3.png',
          height: 300,
        ),
        SizedBox(height: 40,),
        Text('And work hard to give us more money',
          style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 28
          ),
        )
      ],
    );
  }

}