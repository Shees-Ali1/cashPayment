import 'package:flutter/material.dart';

extension ContextExtensions on BuildContext {
  double screenHeight(double percentage) {
    return MediaQuery.of(this).size.height * percentage;
  }

  double screenWidth(double percentage) {
    return MediaQuery.of(this).size.width * percentage;
  }
}
