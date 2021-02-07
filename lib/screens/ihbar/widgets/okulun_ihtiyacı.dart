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
        title: Text(
          'Okulun Temel İhtiyaç İhbarı',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Column(
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
            Column(
              children: [
                Align(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      right: 240,
                    ),
                    child: Container(
                      child: Text(
                        'Okul Adı',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Form(
                  child: Column(
                    children: [
                      Container(
                        width: 300,
                        child: TextFormField(
                          validator: (String value) {
                            if (value.isEmpty) {
                              return 'Lütfen isim giriniz';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            hintText: 'Okul adı giriniz',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Align(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            right: 250,
                          ),
                          child: Container(
                            child: Text(
                              'Adres',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: 300,
                        child: TextFormField(
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Lütfen adres girin';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            hintText: 'Kısa adres tarifi',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Align(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            right: 250,
                          ),
                          child: Container(
                            child: Text(
                              'Konu',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: 300,
                        child: TextFormField(
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Lütfen konu girin';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            hintText: 'İhbar konusu',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        width: 300,
                        height: 50,
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          color: Colors.blue,
                          disabledColor: Colors.white,
                          splashColor: Colors.blueAccent,
                          onPressed: () {
                            _yaya4Dialog();
                          },
                          child: Text(
                            'İhbar Oluştur',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Bağış mı yapmak istiyorsunuz ?',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => Bagis()));
                          },
                          child: Text(
                            'Bağış Yap',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _yaya4Dialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          title: Text('İhbarınız başarıyla oluşturuldu'),
          content: Text(
              'Duyarlı olmanın önemli olduğu bu günlerde bir çocuğa umut olduğunuz için teşekkür ederiz.'),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: MaterialButton(
                shape: StadiumBorder(),
                minWidth: 100,
                color: Colors.blue,
                child: Text('Tamam'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
