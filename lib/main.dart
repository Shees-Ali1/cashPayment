import 'package:flutter/material.dart';

import 'Cash_payment/cash_payment.dart';
import 'Reuseable_component/TextFormInput.dart';
import 'Reuseable_component/button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Color myColor = Color(0xFF5D3085);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
        useMaterial3: true,
      ),
      home: const CashPayment(title: 'Cash Payment'),
    );
  }
}
