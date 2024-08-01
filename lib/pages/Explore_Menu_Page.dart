import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pizzahut/Buttons/Big_Info.dart';
import 'package:pizzahut/Buttons/Four_line_Buttons.dart';
import 'package:pizzahut/Buttons/Ink_well_buttons.dart';


class ExploreMenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.black,
        elevation: 6,
        surfaceTintColor: Colors.transparent,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        toolbarHeight: 270,
        flexibleSpace: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Material(
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
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Explore Menu',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  InkWell(
                    borderRadius: BorderRadius.circular(20),
                    radius: 20,
                    onTap: () {},
                    child: Ink.image(
                      image: AssetImage('assets/search.png'),
                      width: 40,
                      height: 40,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Column(
                    children: [
                      InkWellButtons(
                        framesize: 80,
                        photo: 'assets/food/menu.png',
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Menu',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Container(
                        height: 4,
                        width: 100,
                        color: Colors.red,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      InkWellButtons(
                        framesize: 80,
                        photo: 'cropped_image.png',
                      ),
                      SizedBox(height: 20),
                      Text(
                        'New',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Container(
                        height: 4,
                        width: 100,
                        color: Colors.red,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      InkWellButtons(
                        framesize: 80,
                        photo: 'assets/food/deals.png',
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Deals',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Container(
                        height: 4,
                        width: 100,
                        color: Colors.red,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      InkWellButtons(
                        framesize: 80,
                        photo: 'assets/food/mybox.png',
                      ),
                      SizedBox(height: 20),
                      Text(
                        'For Me',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Container(
                        height: 4,
                        width: 100,
                        color: Colors.red,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      InkWellButtons(
                        framesize: 80,
                        photo: 'assets/food/everyday.png',
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Everyday',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Container(
                        height: 4,
                        width: 100,
                        color: Colors.red,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      InkWellButtons(
                        framesize: 80,
                        photo: 'assets/food/pizza.png',
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Offers',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Container(
                        height: 4,
                        width: 100,
                        color: Colors.red,
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  FourLineButtons(photo: 'assets/icons/popularity.png',text: 'Popular',),
                  Spacer(),
                  FourLineButtons(photo:'assets/icons/chili.png',text:'Spicy',),
                  Spacer(),
                  FourLineButtons(photo: 'assets/icons/cheese.png',text:'Cheesy'),
                  Spacer(),
                  FourLineButtons(photo:'assets/icons/new.png',text:'New')
                ],
              ),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  BigInfo(choosenroute: '/ItemPage',),
                  SizedBox(
                    height: 10,
                  ),
                  BigInfo(),
                  SizedBox(
                    height: 10,
                  ),
                  BigInfo(),
                  SizedBox(
                    height: 10,
                  ),
                  BigInfo()
                ],
              ),
          ),
        ],
      ),
    );
  }
}
