import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/widgets/top_10_card_widget.dart';
import 'package:netflix/presentation/widgets/main_title_22.dart';

class Top10TitleCard extends StatelessWidget {
  const Top10TitleCard({
    required this.title,
    super.key,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: kPadding10,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MainTitle22(title: title),
          kHeight15,
          LimitedBox(
            maxHeight: size.width * 0.5,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children:
                  List.generate(10, (index) => Top10CardWidget(index: index)),
            ),
          ),
          kHeight15
        ],
      ),
    );
  }
}
