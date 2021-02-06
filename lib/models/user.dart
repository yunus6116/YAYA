import 'package:educationhelper/models/bagis.dart';
import 'package:educationhelper/models/ihbar.dart';

class User {
  String name;
  double bagis;
  List<Bagis> bagislar;
  List<Ihbar> ihbarlar;

  User({this.bagis, this.bagislar, this.name});
}
