import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:educationhelper/screens/bagis/bagis.dart';
import 'package:educationhelper/screens/ihbar/ihbar.dart';
import 'package:educationhelper/screens/procces-page/procces.dart';
import 'package:educationhelper/screens/profil/profil.dart';
import 'package:flutter/material.dart';

import './home_page.dart';

class MyHomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<MyHomePage> {
  int selectedPage = 2;
  final _pageOptions = [
    Procces(),
    Ihbar(),
    HomePage(),
    Bagis(),
    Profil(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Ana Sayfa'),
      // ),
      body: _pageOptions[selectedPage],
      bottomNavigationBar: ConvexAppBar(
        //style: TabStyle.react,
        items: [
          TabItem(icon: Icons.list),
          TabItem(icon: Icons.support_agent),
          TabItem(icon: Icons.home),
          TabItem(icon: Icons.attach_money_sharp),
          TabItem(icon: Icons.account_circle_sharp),
        ],
        initialActiveIndex: 2 /*optional*/,
        onTap: (int index) {
          setState(() {
            selectedPage = index;
          });
        },
      ),
    );
  }
}
