import 'package:flutter/material.dart';
import 'package:netflix/core/colors.dart';
import 'package:netflix/core/constants.dart';

class FastLaughVideoItemWidget extends StatelessWidget {
  const FastLaughVideoItemWidget({
    required this.index,
    super.key,
  });
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: kPadding10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CircleAvatar(
                  backgroundColor: kBlackColor.withOpacity(0.7),
                  radius: 30,
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.volume_off_rounded,
                        size: 30,
                      )),
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      radius: 33,
                      backgroundImage: NetworkImage(
                          'https://image.tmdb.org/t/p/original/bi4tb3GMYFVNUom65SJm7A66rgM.jpg'),
                    ),
                    kHeight10,
                    TextIconButtonWidget(
                        title: 'LOL', icon: Icons.emoji_emotions_outlined),
                    TextIconButtonWidget(title: 'My List', icon: Icons.add),
                    TextIconButtonWidget(
                        title: 'Share', icon: Icons.send_rounded),
                    TextIconButtonWidget(
                        title: 'Play', icon: Icons.play_arrow_rounded),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

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
