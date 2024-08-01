import 'package:flutter/material.dart';
import 'package:pizzahut/Buttons/Explore_Menu_buttons.dart';
import 'package:pizzahut/Buttons/VLbuttons.dart';


class DeliveryTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Vlbuttons(photo:'helal.jpg'),
                Vlbuttons(photo:'1free1.jpg'),
                Vlbuttons(photo:'cheeselover.jpg'),
              ],
            ),
          ),
          Row(
            children: [
              SizedBox(width: 10),
              Text(
                'Explore Menu',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(width:5),
              Container(width: 28,height: 28,
                  child: Image(image:AssetImage('assets/icons/pizza-slice.png'))),
              Spacer(),
              Text(
                'View All',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Icon(Icons.arrow_circle_right_outlined),
              SizedBox(width: 12),
            ],
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left:10,right: 10),
            child: Row(
              children: [
                Container(
                  width: 140,
                    height: 150,
                    child: ExploreMenuButtons(
                      cotor: Colors.red,
                      exploretext: 'Exclusive Deals',
                      exphoto: 'assets/food/deals.png',)),
                Spacer(),
                Container(
                    width: 140,
                    height: 150,
                    child: ExploreMenuButtons(
                        cotor: Colors.yellow,
                        exploretext: 'New',exphoto: 'assets/cropped_image.png',
                    )),
                Spacer(),
                Container(
                    width: 140,
                    height: 150,
                    child: ExploreMenuButtons(
                      cotor: Colors.red,
                      exploretext: 'For Me',
                      exphoto: 'assets/food/mybox.png',
                    )),
              ],
            ),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.only(left:10,right: 10),
            child: Row(
              children: [
                Container(
                    width: 140,
                    height: 150,
                    child: ExploreMenuButtons(
                      cotor: Colors.yellow,
                      exploretext: 'Pizza',
                      exphoto: 'assets/food/pizza.png',
                    )),
                Spacer(),
                Container(
                    width: 140,
                    height: 150,
                    child: ExploreMenuButtons(
                      cotor: Colors.red,
                      exploretext: 'Starters',
                      exphoto: 'assets/food/starters.png',
                    )),
                Spacer(),
                Container(
                    width: 140,
                    height: 150,
                    child: ExploreMenuButtons(
                      cotor: Colors.yellow,
                      exploretext: 'Pasta',
                      exphoto: 'assets/food/pasta.png',
                    )),
              ],
            ),
          ),
          SizedBox(height: 10,)
        ],
      ),
    );
  }
}
