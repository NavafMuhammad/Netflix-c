import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
      ),
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
