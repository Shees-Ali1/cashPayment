import 'package:flutter/material.dart';
import '../../Reuseable_component/TextFormInput.dart';
import '../../Reuseable_component/button.dart';
import '../../Utils/color.dart';
import '../../Utils/constant.dart';
import '../../utils/extensions.dart'; // Add your color and font size extensions here

class CashPayment extends StatefulWidget {
  const CashPayment({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<CashPayment> createState() => _CashPaymentState();
}

class _CashPaymentState extends State<CashPayment> {
  final TextEditingController emailController = TextEditingController();
  final GlobalKey<TextFormInputState> emailInputKey =
      GlobalKey<TextFormInputState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              iconSize: 15.0,
              icon: const Icon(
                Icons.arrow_back_ios_sharp,
                color: Colors.white,
              ),
              onPressed: () {
                print('Back click');
              },
            );
          },
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(AppRadius.appBar),
            bottomRight: Radius.circular(AppRadius.appBar),
          ),
        ),
        backgroundColor: AppColors.primaryColor,
        centerTitle: true,
        title: Text(
          widget.title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: AppFontSize.appBarTitle,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: AppSpacing.margin),
            width: context.screenWidth(0.9),
            padding: EdgeInsets.symmetric(vertical: AppSpacing.paddingVertical),
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage(
                    'assets/box.png'), // Replace with your image path
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(AppRadius.container),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "\$12.00",
                      style: TextStyle(
                        fontSize: AppFontSize.price,
                        fontWeight: FontWeight.w900,
                        color: AppColors.textColor,
                      ),
                    ),
                    Text(
                      "Total paid",
                      style: TextStyle(
                          fontSize: AppFontSize.normal,
                          color: AppColors.textColor),
                    ),
                  ],
                ),
                Container(
                  width: 1,
                  height: context.screenHeight(0.08),
                  color: AppColors.textColor,
                ),
                const Column(
                  children: [
                    Text(
                      "\$0.00",
                      style: TextStyle(
                        fontSize: AppFontSize.price,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textColor,
                      ),
                    ),
                    Text(
                      "Change",
                      style: TextStyle(
                          fontSize: AppFontSize.normal,
                          color: AppColors.textColor),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: AppSpacing.margin),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(AppSpacing.padding),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormInput(
                    key: emailInputKey,
                    fieldName: 'Email',
                    controller: emailController,
                    hint: 'Enter here',
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter an email address';
                      } else if (!RegExp( r"^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$") .hasMatch(value)) {
                        return 'Invalid email address format';
                      }
                      return null; // Return null if the input is valid
                    },
                  ),
                ],
              ),
            ),
          ),
          Spacer(),
          MyButton(
            text: 'New Sale',
            onPressed: () {
              // Validate the email field
              String? emailValidation = emailInputKey.currentState?.validate();

              // Check if there is any validation error
              if (emailValidation != null) {
                print('Validation Error: $emailValidation');
              } else {
                print('Button pressed!');
                // Continue with the logic when the input is valid
              }
            },
          ),
          SizedBox(height: AppSpacing.margin),
        ],
      ),
    );
  }
}
