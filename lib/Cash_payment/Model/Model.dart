
import 'package:flutter/material.dart';

class CashPaymentModel {
  final TextEditingController emailController = TextEditingController();

  String? validateEmail(String? value) {
    if (value!.isEmpty) {
      return 'Please enter an email address';
    } else if (!RegExp(r"^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$").hasMatch(value)) {
      return 'Invalid email address format';
    }
    return null; // Return null if the input is valid
  }
}
