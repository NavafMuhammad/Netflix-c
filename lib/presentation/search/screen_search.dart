import 'package:flutter/cupertino.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/search/widgets/search_active_widget.dart';
import 'package:netflix/presentation/search/widgets/search_widget.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: kPadding10,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchWidget(),
          kHeight20,
          // Expanded(child: SearchIdleWidget()),
          Expanded(child: SearchActiveEidget()),
        ],
      ),
    );
  }
}
