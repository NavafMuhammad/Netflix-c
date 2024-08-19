import 'package:flutter/material.dart';
import 'package:netflix/presentation/fast_laughs/widgets/fast_laugh_video_item_widget.dart';

class ScreenFastLaugh extends StatelessWidget {
  const ScreenFastLaugh({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: PageView(
        scrollDirection: Axis.vertical,
        children: List.generate(
            20, (index) => FastLaughVideoItemWidget(index: index)),
      ),
    );
  }
}
