import 'package:flutter/material.dart';

Widget informationContainer() {
  return Container(
    padding: EdgeInsets.all(20),
    decoration: BoxDecoration(
      shape: BoxShape.rectangle,
      color: Colors.white,
      borderRadius: BorderRadius.circular(15),
      boxShadow: [
        BoxShadow(
          color: Color.fromRGBO(0, 0, 0, 0.25),
          offset: Offset(0, 4),
          blurRadius: 4,
        ),
      ],
    ),
    alignment: Alignment.center,
    child: Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            'Bu ay toplanan toplam bağış miktarı:',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        Text(
          ' 10.500 TL',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            'Bu ay yapılan toplam ihbar sayısı:',
            style: TextStyle(
              fontSize: 20,
              //fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Text(
          '300',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            'Bu ay kurtarılan çocuk işçi sayısı:',
            style: TextStyle(
              fontSize: 20,
              //fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Text(
          '20',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    //elevation: 20,
  );
}
