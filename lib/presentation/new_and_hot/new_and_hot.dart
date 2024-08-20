import 'package:flutter/material.dart';
import 'package:netflix/core/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/download/screen_download.dart';
import 'package:netflix/presentation/widgets/appbar_widget.dart';

import 'widgets/coming_soon_main_widget.dart';
import 'widgets/everyones_watching_main_widget.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: AppBarWidget(
            child: AppBarWidgetTitle(title: 'New & Hot'),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TabBar(
              dividerHeight: 0,
              labelStyle:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              tabAlignment: TabAlignment.start,
              isScrollable: true,
              labelColor: kBlackColor,
              unselectedLabelColor: kGreyColor,
              indicatorSize: TabBarIndicatorSize.tab,
              indicator: BoxDecoration(
                  color: kWhiteColor,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(30)),
              tabs: const [
                Tab(
                  text: '🍿 Coming Soon',
                ),
                Tab(
                  text: '👀 Everyone\'s Watching',
                ),
              ],
            ),
            kHeight10,
            Expanded(
              child: TabBarView(children: [
                _buildComingSoon(),
                _buildEveryonesWatching(),
              ]),
            )
          ],
        ),
      ),
    );
  }

  _buildComingSoon() {
    return ListView.separated(
      itemBuilder: (ctx, index) => const ComingSoonMainWidget(),
      separatorBuilder: (ctx, index) => kHeight20,
      itemCount: 5,
    );
  }

  _buildEveryonesWatching() {
    return ListView.separated(
        itemBuilder: (ctx, index) => const EveryonesWatchingMainWidget(),
        separatorBuilder: (ctx, index) => kHeight15,
        itemCount: 5);
  }
}
