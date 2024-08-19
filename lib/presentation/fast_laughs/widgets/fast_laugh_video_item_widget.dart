import 'package:flutter/material.dart';
import 'package:netflix/core/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/widgets/text_icon_button_widget.dart';

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
        const Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: kPadding10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                MuteButton(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      radius: 33,
                      backgroundImage: NetworkImage(
                          'https://image.tmdb.org/t/p/original/bi4tb3GMYFVNUom65SJm7A66rgM.jpg'),
                    ),
                    kHeight10,
                    TextIconButtonWidget(
                      title: 'LOL',
                      icon: Icons.emoji_emotions_outlined,
                      textColor: kWhiteColor,
                    ),
                    TextIconButtonWidget(
                      title: 'My List',
                      icon: Icons.add,
                      textColor: kWhiteColor,
                    ),
                    TextIconButtonWidget(
                      title: 'Share',
                      icon: Icons.send_rounded,
                      textColor: kWhiteColor,
                    ),
                    TextIconButtonWidget(
                      title: 'Play',
                      icon: Icons.play_arrow_rounded,
                      textColor: kWhiteColor,
                    ),
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
