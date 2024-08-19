import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/new_and_hot/widgets/new_and_hot_image_widget.dart';

import '../../../core/colors.dart';
import '../../widgets/main_title_22.dart';
import '../../widgets/text_icon_button_row.dart';
import '../../widgets/text_icon_button_widget.dart';

class ComingSoonMainWidget extends StatelessWidget {
  const ComingSoonMainWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          width: 55,
          child: Column(
            children: [
              Text(
                'FEB',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                '11',
                style: TextStyle(
                    fontSize: 35,
                    letterSpacing: 4,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        SizedBox(
          width: size.width - 55,
          child: const Column(
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
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        TextIconButtonRow(
                          list: [
                            TextIconButtonWidget(
                              title: 'Remind Me',
                              icon: CupertinoIcons.bell,
                              iconSize: 22,
                              textSize: 11,
                            ),
                            TextIconButtonWidget(
                              title: 'Info',
                              icon: Icons.info_outline_rounded,
                              iconSize: 22,
                              textSize: 11,
                            ),
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
        ),
      ],
    );
  }
}