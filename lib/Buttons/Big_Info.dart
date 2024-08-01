import 'package:flutter/material.dart';
import 'package:pizzahut/Buttons/Big_Info.dart';
import 'package:pizzahut/Buttons/Ink_well_buttons.dart';

class BigInfo extends StatelessWidget {
  @override
  String _choosenroute = '';
  double _item_change_factor = 30;

  BigInfo({String choosenroute = ''}) {
    this._choosenroute = choosenroute;
  }

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Material(
        color: Colors.white,
        elevation: 5,
        borderRadius: BorderRadius.circular(15),
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 75 - _item_change_factor,
                    ),
                    Image(
                      image: AssetImage('assets/food/shawerma.png'),
                      height: 200,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 75 - _item_change_factor,
                    ),
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.center,
                        colors: [
                          Colors.black.withOpacity(0.3),
                          Colors.black.withOpacity(0.2),
                          Colors.black.withOpacity(0)
                        ],
                      )),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Text(
                            'Chicken Shawerma Melts',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Grilled shawarma chicken,pickles,mozzarella,potato',
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text('Wedges,garlic sauce,parsley',
                            style: TextStyle(color: Colors.grey, fontSize: 14)),
                      ],
                    ),
                    SizedBox(
                      height: 200 - _item_change_factor,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('119.00',
                              style: TextStyle(
                                  fontSize: 21,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),),
                          SizedBox(width: 7),
                          Text(
                            'EGP',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 75,
                    )
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWellButtons(
                            elvat: 0,
                            framesize: 25,
                            photo: 'assets/icons/heart-outlined.png',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 190,
                    )
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 325,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 38,
                            width: 110,
                            child: FilledButton(
                              onPressed: () {
                                Navigator.of(context)
                                    .pushNamed('$_choosenroute');
                              },
                              child: Text('+   Add'),
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.red),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)))),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
