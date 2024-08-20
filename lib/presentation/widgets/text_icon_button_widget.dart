import 'package:flutter/material.dart';
import 'package:netflix/core/colors.dart';

class TextIconButtonWidget extends StatelessWidget {
  const TextIconButtonWidget({
    super.key,
    required this.title,
    required this.icon,
    this.iconSize = 32,
    this.textSize = 15,
    this.textColor = kGreyColor,
  });

  final String title;
  final IconData icon;
  final double iconSize;
  final double textSize;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        children: [
          Icon(
            icon,
            size: iconSize,
          ),
          Text(
            title,
            style: TextStyle(
                fontSize: textSize,
                fontWeight: FontWeight.bold,
                color: textColor),
          ),
        ],
      ),
    );
  }
}
