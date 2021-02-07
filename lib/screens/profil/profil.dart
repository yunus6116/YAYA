import 'package:educationhelper/screens/onBoarding/widget/card_item.dart';
import 'package:educationhelper/screens/onBoarding/widget/stack_container.dart';
import 'package:flutter/material.dart';



class Profil extends StatefulWidget {
  @override
  _ProfilState createState() => _ProfilState();
}


class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            StackContainer(),
            SizedBox(height: 40,),
            CardItem(cardTitle: 'Bağış miktarı', cardDesc: '5000 TL', cardIcon: Icons.attach_money_sharp ,),
           SizedBox(height: 40,),
           CardItem(cardTitle: 'Yaptığı ihbarların sayısı', cardDesc: '5', cardIcon: Icons.support_agent ,)
          ],
        ),
      ),
    );
  }
}