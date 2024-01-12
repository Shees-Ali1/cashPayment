import 'package:flutter/material.dart';

import '../Utils/color.dart';

class TextFormInput extends StatefulWidget {
  final TextEditingController controller;
  final String hint;
  final String fieldName;
  final TextInputType keyboardType;
  final bool obscureText;
  final String? Function(String?)? validator;

  TextFormInput({
    required this.controller,
    required this.fieldName,
    required this.hint,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.validator,
    Key? key,
  }) : super(key: key);

  @override
  TextFormInputState createState() => TextFormInputState();
}

class TextFormInputState extends State<TextFormInput> {
  String? errorText;
  bool isCorrect = false;

  void setErrorText(String? error) {
    setState(() {
      errorText = error;
      isCorrect = error == null;
    });
  }

  String? validate() {
    final value = widget.controller.text;
    if (widget.validator != null) {
      final result = widget.validator!(value);
      if (result != null) {
        setErrorText(result);
        return result; // Return the custom validation message if provided
      }
    }

    // Perform email validation
    if (value == null || value.isEmpty) {
      setErrorText('Please enter an email address');
      return 'Please enter an email address';
    } else if (!RegExp(r"^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$").hasMatch(value)) {
      setErrorText('Invalid email address format');
      return 'Invalid email address format';
    }

    setErrorText(null); // Clear error text if the validation is successful
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.fieldName, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        const SizedBox(height: 5),
        Container(
          padding: const EdgeInsets.only(left: 20),
          decoration: BoxDecoration(
            color: AppColors.inputBackgroundColor, // Use the input background color
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: widget.controller,
                  keyboardType: widget.keyboardType,
                  obscureText: widget.obscureText,
                  validator: (value) => validate(),
                  decoration: InputDecoration(
                    hintText: widget.hint,
                    border: InputBorder.none,
                  ),
                ),
              ),
              if (isCorrect)
                const Icon(
                  Icons.check,
                  color: AppColors.successColor, // Use the success color
                ),
            ],
          ),
        ),
        if (errorText != null)
          Padding(
            padding: const EdgeInsets.only(left: 12.0, top: 4.0),
            child: Text(
              errorText!,
              style: const TextStyle(color: AppColors.errorColor), // Use the error color
            ),
          ),
      ],
    );
  }
}
