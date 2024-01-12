import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Cash_payment/View/cash_payment.dart';
import 'Utils/color.dart'; // Import your color.dart file

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor), // Use the primaryColor from AppColors
        useMaterial3: true,
      ),
      initialRoute: '/cash_payment',
      getPages: [
        GetPage(
          name: '/cash_payment',
          page: () => const CashPayment(title: 'Cash Payment'),
        ),
        // Add more GetPage objects for additional routes
      ],
    );
  }
}
