import 'package:flutter/material.dart';

class Deneme extends StatefulWidget {
  @override
  _DenemeState createState() => _DenemeState();
}

class _DenemeState extends State<Deneme> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
