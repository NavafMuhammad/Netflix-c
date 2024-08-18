import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors.dart';
import 'package:netflix/core/constants.dart';

const url =
    'https://image.tmdb.org/t/p/original/8cdWjvZQUExUUTzyp4t6EDMubfO.jpg';

class Top10CardWidget extends StatelessWidget {
  const Top10CardWidget({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Row(
          children: [
            SizedBox(
              width: size.width * 0.09,
              height: size.width * 0.5,
            ),
            Container(
              margin: kMarginHorizontal5,
              height: size.width * 0.5,
              width: size.width * 0.33,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: const DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage(url))),
            ),
          ],
        ),
        Positioned(
          left: 10,
          bottom: -45,
          child: BorderedText(
              strokeWidth: 5,
              strokeColor: kWhiteColor,
              child: Text(
                '${index + 1}',
                style: const TextStyle(
                    fontSize: 140,
                    decoration: TextDecoration.none,
                    color: kBlackColor,
                    fontWeight: FontWeight.bold),
              )),
        )
      ],
    );
  }
}
