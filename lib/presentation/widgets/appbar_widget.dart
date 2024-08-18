import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
      backgroundColor: Colors.transparent,
      title: child,
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.cast,
              size: 30,
            )),
        kWidth10,
        Container(
          width: 28,
          height: 28,
          color: Colors.blue,
        ),
        kWidth10,
      ],
    );
  }
}
