import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';

const url =
    'https://image.tmdb.org/t/p/original/8cdWjvZQUExUUTzyp4t6EDMubfO.jpg';

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      margin: kMarginHorizontal5,
      height: size.width * 0.5,
      width: size.width * 0.33,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          image: const DecorationImage(
              fit: BoxFit.cover, image: NetworkImage(url))),
    );
  }
}