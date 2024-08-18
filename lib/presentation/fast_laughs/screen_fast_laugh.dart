import 'package:flutter/material.dart';
import 'package:netflix/presentation/widgets/text_icon_button_widget.dart';

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
