import 'dart:ui';

import 'package:educationhelper/screens/homepage/view/explanation.dart';
import 'package:educationhelper/screens/homepage/view/information_container.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                right: 260,
              ),
              child: Text(
                'Yayada bu ay',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            informationContainer(),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 270,
              ),
              child: Text(
                'Yaya nedir ?',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            explanationContainer(context),
          ],
        ),
      ),
    );
  }
}
