import 'package:booking/screens/home/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      theme: ThemeData(
          primarySwatch: MaterialColor(0xFF003680, {
        50: Color(0xFFF3F5F9),
        100: Color(0xFFE6EBF3),
        200: Color(0xFFC0CDE0),
        300: Color(0xFF97ADCB),
        400: Color(0xFF4D73A7),
        500: Color(0xFF003680),
        600: Color(0xFF003172),
        700: Color(0xFF00214D),
        800: Color(0xFF00193A),
        900: Color(0xFF001026),
      })),
      debugShowCheckedModeBanner: false,
      home: Home()));
}
