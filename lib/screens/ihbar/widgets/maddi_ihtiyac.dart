import 'package:educationhelper/screens/bagis/bagis.dart';
import 'package:flutter/material.dart';

class MaddiIhtiyac extends StatefulWidget {
  @override
  _MaddiIhtiyacState createState() => _MaddiIhtiyacState();
}

class _MaddiIhtiyacState extends State<MaddiIhtiyac> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Maddi Temel ihtiyaç İhbarı'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ClipPath(
            clipper: YayaCliper(),
            child: Container(
              height: 170,
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 25,
                  left: 10,
                ),
                child: Text(
                  'Temel ihtiyaclarını gideremeyen ailelerin çocukları açlıkla mücadele ederken güçsüz düşerek eğitimlerini yarıda bırakmak zorunda kalır veya küçük yaşta bu ihtiyaçları karşılamak mecburiyetiyle okulu bırakıp çalışır,çalıştırılır. Bu yüzden desteğinize ihtiyacımız var.',
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
