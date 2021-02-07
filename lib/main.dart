

import 'package:educationhelper/routes.dart';
import 'package:educationhelper/screens/onBoarding/onBoarding.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
       routes: Routes.routes,
      home: OnBoardingScreen(),
    );
  }
}


