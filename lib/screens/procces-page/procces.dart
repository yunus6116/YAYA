import 'package:educationhelper/models/ihbar.dart';
import 'package:educationhelper/screens/bagis/bagis.dart';
import 'package:flutter/material.dart';

class Procces extends StatelessWidget {
  List ihbarlar = [
    Ihbar(
      ad: 'Ali',
      soyad: 'Kaya',
      adres: 'Avcılar/İstanbul',
      konu: 'Mendil Satıyor.',
    ),
    Ihbar(
      ad: 'Kocatepe İlköğretim',
      soyad: '',
      adres: 'Kızılay/Ankara',
      konu: 'Kütüphane yok.',
    ),
    Ihbar(
      ad: 'Ahmet',
      soyad: 'Arslan',
      adres: 'Esenyurt/İstanbul',
      konu: 'Balon Satıyor.',
    ),
    Ihbar(
      ad: 'Pelin',
      soyad: 'Kartal',
      adres: 'Kordon/İzmir',
      konu: 'Mendil Satıyor.',
    ),
    Ihbar(
      ad: 'Aslı',
      soyad: 'Aksu',
      adres: 'İnegöl/Bursa',
      konu: 'Anne babası yok.',
    ),
    Ihbar(
      ad: 'Kocatepe İlköğretim',
      soyad: '',
      adres: 'Kızılay/Ankara',
      konu: 'Kütüphane yok.',
    ),
  ];
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
          Container(
            // height: 440,
            height: MediaQuery.of(context).size.height * 0.67,
            child: ListView.builder(
              itemCount: ihbarlar.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Card(
                      elevation: 5.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 55.0,
                                  height: 55.0,
                                  child: CircleAvatar(
                                    child: Text('${index + 1}'),
                                  ),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '${ihbarlar[index].ad} ${ihbarlar[index].soyad}',
                                      style: TextStyle(
                                          fontSize: 17.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                      '${ihbarlar[index].konu}',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                      '25₺',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 10.0),
                              child: FlatButton(
                                onPressed: () {},
                                color: Colors.blue,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Text(
                                  'Bağış Yap',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
