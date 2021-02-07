import 'package:educationhelper/screens/bagis/bagis.dart';
import 'package:flutter/material.dart';

class Procces extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ClipPath(
            clipper: YayaCliper(),
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Center(
                child: Text(
                  'Aktif İhbarlar',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 45,
                  ),
                ),
              ),
            ),
          ),
          Text(
            'En son İhbara Göre',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 440,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('İhbar'),
                  Text('İhbar'),
                  Text('İhbar'),
                  Text('İhbar'),
                  Text('İhbar'),
                  Text('İhbar'),
                  Text('İhbar'),
                  Text('İhbar'),
                  Text('İhbar'),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
