import 'package:flutter/material.dart';

extension ContextExtensions on BuildContext {
  double screenHeight(double percentage) {
    return MediaQuery.of(this).size.height * percentage;
  }

  double screenWidth(double percentage) {
    return MediaQuery.of(this).size.width * percentage;
  }
}

extension FontWeightExtensions on FontWeight {
  static const FontWeight w100 = FontWeight.w100;
  static const FontWeight w200 = FontWeight.w200;
  static const FontWeight w300 = FontWeight.w300;
  static const FontWeight w400 = FontWeight.w400;
  static const FontWeight w500 = FontWeight.w500;
  static const FontWeight w600 = FontWeight.w600;
  static const FontWeight w700 = FontWeight.w700;
  static const FontWeight w800 = FontWeight.w800;
  static const FontWeight w900 = FontWeight.w900;
  static const FontWeight bold = FontWeight.bold;
}
