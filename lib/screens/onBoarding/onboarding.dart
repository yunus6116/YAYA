import 'package:educationhelper/models/data.dart';
import 'package:educationhelper/screens/onBoarding/widget/slide_tile.dart';
import 'package:educationhelper/screens/register/register.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  List<SliderModel> mySLides = <SliderModel>[];
  int slideIndex = 0;
  PageController _controller;

  Widget _buildPageIndicator(bool isCurrentPage) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2.0),
      height: isCurrentPage ? 10.0 : 6.0,
      width: isCurrentPage ? 10.0 : 6.0,
      decoration: BoxDecoration(
        color: isCurrentPage ? Colors.grey : Colors.grey[300],
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    mySLides = getSlides();
    _controller = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [const Color(0xff3C8CE7), const Color(0xff00EAFF)])),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            height: MediaQuery.of(context).size.height - 100,
            child: PageView(
              controller: _controller,
              onPageChanged: (index) {
                setState(() {
                  slideIndex = index;
                });
              },
              children: <Widget>[
                SlideTile(
                  imagePath: mySLides[0].getImageAssetPath(),
                  desc: mySLides[0].getDesc(),
                ),
                SlideTile(
                  imagePath: mySLides[1].getImageAssetPath(),
                  desc: mySLides[1].getDesc(),
                ),
                SlideTile(
                  imagePath: mySLides[2].getImageAssetPath(),
                  desc: mySLides[2].getDesc(),
                )
              ],
            ),
          ),
          bottomSheet: slideIndex != 2
              ? Container(
                  margin: EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      FlatButton(
                        onPressed: () {
                          _controller.animateToPage(2,
                              duration: Duration(milliseconds: 400),
                              curve: Curves.linear);
                        },
                        splashColor: Colors.blue[50],
                        child: Text(
                          'SKIP',
                          style: TextStyle(
                              color: Color(0xFF0074E4),
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            for (int i = 0; i < 3; i++)
                              i == slideIndex
                                  ? _buildPageIndicator(true)
                                  : _buildPageIndicator(false),
                          ],
                        ),
                      ),
                      FlatButton(
                        onPressed: () {
                          _controller.animateToPage(slideIndex + 1,
                              duration: Duration(milliseconds: 500),
                              curve: Curves.linear);
                        },
                        splashColor: Colors.blue[50],
                        child: Text(
                          'NEXT',
                          style: TextStyle(
                              color: Color(0xFF0074E4),
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                )
              : GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => registerPage(),
                      ),
                    );
                  },
                  child: Container(
                    height: Platform.isIOS ? 70 : 60,
                    color: Colors.lightBlue,
                    alignment: Alignment.center,
                    child: Text(
                      'Şimdi Başla',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
