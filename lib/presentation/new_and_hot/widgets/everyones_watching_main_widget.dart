import 'package:flutter/material.dart';

import '../../../core/colors.dart';
import '../../../core/constants.dart';
import '../../widgets/main_title_22.dart';
import '../../widgets/text_icon_button_row.dart';
import '../../widgets/text_icon_button_widget.dart';
import 'new_and_hot_image_widget.dart';

class EveryonesWatchingMainWidget extends StatelessWidget {
  const EveryonesWatchingMainWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      child: Column(
        children: [
          NewandHotImageWidget(),
          Padding(
            padding: kPadding10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'NARUTO',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    TextIconButtonRow(
                      list: [
                        TextIconButtonWidget(
                          title: 'Share',
                          icon: Icons.send_rounded,
                          iconSize: 22,
                          textSize: 11,
                        ),
                        TextIconButtonWidget(
                          title: 'My List',
                          icon: Icons.add,
                          iconSize: 22,
                          textSize: 11,
                        ),
                        TextIconButtonWidget(
                          title: 'Play',
                          icon: Icons.play_arrow_rounded,
                          iconSize: 25,
                          textSize: 11,
                        )
                      ],
                    )
                  ],
                ),
                MainTitle22(title: 'Naruto'),
                Text(
                  '''In the Village Hidden in the Leaves, there are few things Naruto and Choji love more than a steaming bowl of Ichiraku ramen, and when the daughter of the owner is kidnapped, they're on the case. Then, missions for the Leaf ninja lead them to the Land of Bears after a fallen meteorite and the Land of Greens to protect a princess. When an evil ninja who's after the princess gets in their way, it's Naruto's life on the line!,''',
                  style: TextStyle(fontSize: 13, color: kGreyColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}