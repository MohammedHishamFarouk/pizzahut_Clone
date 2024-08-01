import 'package:flutter/cupertino.dart';

class Screen1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/screen1.jpg',
          height: 300,
        ),
        SizedBox(height: 40,),
        Text('Eat UnHealthy food',
          style: TextStyle(
          fontWeight: FontWeight.w800,
            fontSize: 28
        ),
        )
      ],
    );
  }

}