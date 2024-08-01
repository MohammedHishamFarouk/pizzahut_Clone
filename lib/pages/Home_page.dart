import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pizzahut/Buttons/Explore_Menu_buttons.dart';
import 'package:pizzahut/Buttons/Home_Appbar_buttons.dart';

import 'package:pizzahut/tabs/Delivery_tab.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 4);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  int _choosen = 0;
  int _selectedindex = 0;

  dynamic delivary_color = Colors.red;
  dynamic curbside_color = Colors.white;
  dynamic selfpick_color = Colors.white;
  dynamic dine_color = Colors.white;

  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        drawer: Drawer(),
        body: TabBarView(
          controller: _tabController,
          children: [DeliveryTab(), ExploreMenuButtons()],
        ),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 160,
          backgroundColor: Colors.white,
          bottom: TabBar(
            controller: _tabController,
            onTap: (index) {
              _selectedindex = index;
              if (index == 0) {
                delivary_color = Colors.red;
                curbside_color = Colors.white;
                selfpick_color = Colors.white;
                dine_color = Colors.white;
              } else if (index == 1) {
                curbside_color = Colors.red;
                selfpick_color = Colors.white;
                dine_color = Colors.white;
                delivary_color = Colors.white;
              } else if (index == 2) {
                selfpick_color = Colors.red;
                dine_color = Colors.white;
                curbside_color = Colors.white;
                delivary_color = Colors.white;
              } else if (index == 3) {
                dine_color = Colors.red;
                selfpick_color = Colors.white;
                curbside_color = Colors.white;
                delivary_color = Colors.white;
              }
              setState(() {});
            },
            labelColor: Colors.black,
            labelStyle: TextStyle(fontWeight: FontWeight.bold),
            indicatorColor: Colors.red[600],
            unselectedLabelColor: Colors.grey,
            unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
            tabs: [
              Stack(children: [
                Center(
                  child: Tab(child: Text('Delivery')),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 14, left: 0),
                  child: Container(
                    child: Icon(
                      Icons.check,
                      size: 18,
                      color: delivary_color,
                    ),
                  ),
                ),
              ]),
              Stack(children: [
                Center(
                  child: Tab(child: Text('Curbside')),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 14, left: 0),
                  child: Container(
                    child: Icon(
                      Icons.check,
                      size: 18,
                      color: curbside_color,
                    ),
                  ),
                ),
              ]),
              Stack(children: [
                Center(
                  child: Tab(child: Text('Self-Pickup')),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 14),
                  child: Row(
                    children: [
                      Container(
                        child: Icon(
                          Icons.check,
                          size: 18,
                          color: selfpick_color,
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
              Stack(children: [
                Center(
                  child: Tab(child: Text('Dine-in')),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 14, left: 0),
                  child: Container(
                    child: Icon(
                      Icons.check,
                      size: 18,
                      color: dine_color,
                    ),
                  ),
                ),
              ]),
            ],
          ),
          flexibleSpace: Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(17.0),
                      child: Material(
                        borderRadius: BorderRadius.circular(14),
                        elevation: 10,
                        child: Container(
                          width: 325,
                          height: 60,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(14)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8, right: 16),
                            child: Row(
                              children: [
                                Builder(builder: (context) {
                                  return IconButton(
                                    onPressed: () {
                                      Scaffold.of(context).openDrawer();
                                    },
                                    icon: Icon(Icons.menu_rounded),
                                  );
                                }),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'SELECT LOCATION',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'Al Serag',
                                        style: TextStyle(color: Colors.grey),
                                      )
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Stack(
                                  children: [
                                    Container(
                                      width: 24,
                                      height: 24,
                                      decoration: BoxDecoration(
                                        color: Colors.red[600],
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8)),
                                      ),
                                    ),
                                    IconButton(
                                      padding: EdgeInsets.all(2.5),
                                      iconSize: 20,
                                      onPressed: () {},
                                      icon:
                                          Icon(Icons.keyboard_arrow_down_sharp),
                                      style: IconButton.styleFrom(
                                          foregroundColor: Colors.white,
                                          minimumSize: Size(24, 24),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8))),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    Material(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      elevation: 10,
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        child: IconButton(
                          iconSize: 32,
                          onPressed: () {},
                          icon: Icon(Icons.notifications_none_sharp),
                          style: IconButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12))),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 30),
                  child: Row(
                    children: [
                      HomeAppbarButtons(
                        bordercolor: delivary_color,
                      ),
                      Spacer(),
                      HomeAppbarButtons(
                        bordercolor: curbside_color,
                        framesize: 66,
                        icon: 'curbside.png',
                      ),
                      Spacer(),
                      HomeAppbarButtons(
                        bordercolor: selfpick_color,
                        framesize: 36,
                        icon: 'self-pickup.png',
                      ),
                      Spacer(),
                      HomeAppbarButtons(
                        bordercolor: dine_color,
                        framesize: 45,
                        icon: 'dine-in.png',
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
