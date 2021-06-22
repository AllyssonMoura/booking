import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Place {
  final String photo;
  // FaIcon? star1;
  // FaIcon? star2;
  // FaIcon? star3;
  // FaIcon? star4;
  // FaIcon? star5;
  final String name;
  final double points;
  final FaIcon extra1;
  final String text1;
  final FaIcon extra2;
  final String text2;
  final FaIcon extra3;
  final String text3;
  final String description;
  final int daily;
  String? oldPrice;
  Color? redColor;
  final String price;
  Color? greenColor;
  String? app;

  Place({
    required this.photo,
    // this.star1,
    // this.star2,
    // this.star3,
    // this.star4,
    // this.star5,
    required this.name,
    required this.points,
    required this.extra1,
    required this.text1,
    required this.extra2,
    required this.text2,
    required this.extra3,
    required this.text3,
    required this.description,
    required this.daily,
    this.oldPrice,
    this.redColor,
    required this.price,
    this.greenColor,
    this.app,
  });
}
