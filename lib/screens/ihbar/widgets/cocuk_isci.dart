import 'package:educationhelper/screens/bagis/bagis.dart';
import 'package:flutter/material.dart';

class CocukIsci extends StatefulWidget {
  @override
  _CocukIsciState createState() => _CocukIsciState();
}

class _CocukIsciState extends State<CocukIsci> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Çocuk İşçi İhbarı'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ClipPath(
            clipper: YayaCliper(),
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 25,
                  left: 10,
                ),
                child: Text(
                  'Çalıştırılan bir çocuk gördüğünüz anda kısa bir açıklama ile bulunan konumu da paylaşarak bunu bize bildirebilirsiniz. Endişelenmeyin, bağış sayfamız aracılığıyla ve yardımsever insanlarla beraber onlara sahip çıkılacak.',
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
