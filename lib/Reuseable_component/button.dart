import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  MyButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:  50,
      width: MediaQuery.of(context).size.width * 0.6,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: Colors.orange, // Set your desired background color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0), // Set your desired border radius
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
