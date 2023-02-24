import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final Color bgcolor;
  final Color txcolor;

  const Button(
      {super.key,
      required this.text,
      required this.bgcolor,
      required this.txcolor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgcolor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 50,
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20,
            color: txcolor,
          ),
        ),
      ),
    );
  }
}
