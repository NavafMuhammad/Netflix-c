import 'package:flutter/material.dart';
import 'package:netflix/presentation/download/screen_download.dart';
import 'package:netflix/presentation/fast_laughs/screen_fast_laugh.dart';
import 'package:netflix/presentation/home/screen_home.dart';
import 'package:netflix/presentation/root/bottom_navbar.dart';
import 'package:netflix/presentation/new_and_hot/new_and_hot.dart';
import 'package:netflix/presentation/search/screen_search.dart';

class ScreenRoot extends StatelessWidget {
  ScreenRoot({super.key});

  final _pages = [
    const ScreenHome(),
    const ScreenNewAndHot(),
    const ScreenFastLaugh(),
    const ScreenSearch(),
    ScreenDownload(),
  ];

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: indexNotifier,
          builder: (BuildContext context, int newIndex, Widget? _) {
            return _pages[newIndex];
          },
        ),
      ),
    );
  }
}
