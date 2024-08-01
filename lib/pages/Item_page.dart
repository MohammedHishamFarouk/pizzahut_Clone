import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false,toolbarHeight: 0,),
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image(
                  image: AssetImage('assets/food/shawerma.png'),
                  height: 200,
                ),
              ),
              Spacer()
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 220,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.center,
                    colors: [
                      Colors.white.withOpacity(0.9),
                      Colors.white.withOpacity(0.7),
                      Colors.white.withOpacity(0)
                    ],
                  ),
                ),
              ),
              Spacer()
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: 150,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Text(
                      'Chicken Shawerma Melts',
                      style:
                          TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Grilled shawarma chicken,pickles,mozzarella,potato',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Text('Wedges,garlic sauce,parsley',
                      style: TextStyle(color: Colors.black, fontSize: 16)),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Text('119.00EGP',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.5,
                          fontWeight: FontWeight.bold)),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 15.0, right: 15.0, top: 12),
                child: DottedLine(
                  dashColor: Colors.grey,
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Material(
                elevation: 8,
                surfaceTintColor: Colors.transparent,
                child: Container(
                  height: 100,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(18)),
                              child: Image.asset(
                                'assets/food/shawerma.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  '119.00EGP',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Text(
                                  'inclusive of taxes',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.white70),
                                ),
                              ],
                            ),
                            Spacer(),
                            Container(
                              height: 35,
                              child: FilledButton(
                                onPressed: (){},
                                child: Row(
                                  children: [
                                    Image(
                                      image: AssetImage(
                                          'assets/icons/paper-bag.png'),
                                      width: 15,
                                      height: 15,
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      'ADD TO CART',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                style: FilledButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  padding: EdgeInsets.all(10),
                                  surfaceTintColor: Colors.black,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  overlayColor: Colors.black
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Material(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              elevation: 8,
              child: Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                child: IconButton(
                  iconSize: 18,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(Icons.arrow_back_ios_new_sharp),
                  style: IconButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12))),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
