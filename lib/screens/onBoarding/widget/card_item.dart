import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';


// ignore: must_be_immutable
class CardItem extends StatelessWidget {

  final String cardTitle;
  final String cardDesc;
  final IconData cardIcon;
  final bool hasNavigation;
  CardItem({

    Key key,
    this.cardIcon, this.cardTitle, this.cardDesc, this.hasNavigation =true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

 return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 21.0,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              IconButton(
                onPressed: () {},
                icon: Icon(
                cardIcon , size: 40.0 , color:  Colors.lightBlue,
                ),
              ),
              SizedBox(width: 24.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    cardTitle,
                    style: TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    cardDesc,
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
