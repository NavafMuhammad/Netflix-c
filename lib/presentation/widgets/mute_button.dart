

import 'package:flutter/material.dart';
import 'package:netflix/core/colors.dart';

class MuteButton extends StatelessWidget {
  const MuteButton({
    this.radius = 30,
    this.iconSize = 30,
    super.key,
  });

  final double radius;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: kBlackColor.withOpacity(0.7),
      radius: radius,
      child: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.volume_off_rounded,
            size: iconSize,
          )),
    );
  }
}