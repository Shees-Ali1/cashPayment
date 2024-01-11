import 'package:flutter/material.dart';

class TextFormInput extends StatelessWidget {
  final TextEditingController controller;

  final String hint;
  final String FieldName;
  final TextInputType keyboardType;
  final bool obscureText;

  TextFormInput({
    required this.controller,
    required this.FieldName,
    required this.hint,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(FieldName,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
        const SizedBox(height: 5,),
        Container(
          padding: EdgeInsets.only(left: 20),
          decoration: BoxDecoration(
            color: Color.fromRGBO(200, 200, 200, 0.5), // Set your desired background color
            borderRadius: BorderRadius.circular(15.0), // Set your desired border radius
          ),
          child: TextFormField(
            controller: controller,
            keyboardType: keyboardType,
            obscureText: obscureText,
            decoration: InputDecoration(
            hintText: hint,
            border: InputBorder.none, // Remove the default border
            ),
          ),
        ),
      ],
    );
  }
}
