import 'package:flutter/material.dart';

class ButtonMaterial extends StatelessWidget {
  final String text;
  final Color buttonColor;
  final Color textColor;
  const ButtonMaterial({
    super.key,
    required this.text,
    required this.buttonColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: buttonColor,
      onPressed: () {},
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5))),
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
