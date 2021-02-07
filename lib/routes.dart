


import 'package:educationhelper/screens/homepage/homepage.dart';
import 'package:educationhelper/screens/onBoarding/onBoarding.dart';
import 'package:educationhelper/screens/register/register.dart';
import 'package:flutter/cupertino.dart';

class Routes{

Routes._();


static const String onBoarding ='/onBoarding';
static const String homepage = '/homepage';
static const String register = '/register';



static final routes = <String, WidgetBuilder>{

  onBoarding: (BuildContext context) => OnBoardingScreen(),
  homepage : (BuildContext context) => HomePage(),
  register : (BuildContext context) => RegisterScreen(),
};


}