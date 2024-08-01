import 'package:flutter/cupertino.dart';

class Screen2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/screen2.jpg',
          height: 300,
        ),
        SizedBox(height: 40,),
        Text('Give us Money',
          style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 28
          ),
        )
      ],
    );
  }

}