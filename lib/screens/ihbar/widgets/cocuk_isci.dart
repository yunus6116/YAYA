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
        title: Text(
          'Çocuk İşçi İhbarı',
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
            Column(
              children: [
                Align(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      right: 260,
                    ),
                    child: Container(
                      child: Text(
                        'İsim',
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
                            hintText: 'isim giriniz',
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
                              'Soyadı',
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
                          validator: (String value) {
                            if (value.isEmpty) {
                              return 'Lütfen soyad giriniz';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            hintText: 'soyadı giriniz',
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
                            _yaya2Dialog();
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

  void _yaya2Dialog() {
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
