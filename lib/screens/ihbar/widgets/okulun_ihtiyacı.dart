import 'package:educationhelper/screens/bagis/bagis.dart';
import 'package:flutter/material.dart';

class OkulunIhtiyaci extends StatefulWidget {
  @override
  _OkulunIhtiyaciState createState() => _OkulunIhtiyaciState();
}

class _OkulunIhtiyaciState extends State<OkulunIhtiyaci> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Okulun İhtiyaç İhbarı'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ClipPath(
            clipper: YayaCliper(),
            child: Container(
              height: 135,
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 25,
                  left: 10,
                ),
                child: Text(
                  'Maalesef ki eğitim eşitsizliği okullardaki imkanların farklılıklarından da görülebilir. Sizlerle birlikte bu dengesizliği yok ederek birçok öğrencinin eğitimine destek olabiliriz.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
