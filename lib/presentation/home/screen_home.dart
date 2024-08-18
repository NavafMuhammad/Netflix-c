import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix/core/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/widgets/landing_background_image_widget.dart';
import 'package:netflix/presentation/home/widgets/top_10_title_card.dart';
import 'package:netflix/presentation/widgets/appbar_widget.dart';
import 'package:netflix/presentation/widgets/main_title_card.dart';

ValueNotifier scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: scrollNotifier,
      builder: (BuildContext context, index, _) {
        return NotificationListener<UserScrollNotification>(
          onNotification: (notification) {
            final ScrollDirection direction = notification.direction;

            print(direction);
            if (direction == ScrollDirection.reverse) {
              scrollNotifier.value = false;
            } else if (direction == ScrollDirection.forward) {
              scrollNotifier.value = true;
            }
            return true;
          },
          child: Stack(
            children: [
              ListView(
                children: const [
                  LandingBackgroundImageWidget(),
                  MainTitleCard(title: 'Released in the past years'),
                  MainTitleCard(title: 'Trending Now'),
                  Top10TitleCard(title: 'Top 10 TV Shows in India Today'),
                  MainTitleCard(title: 'South Indian Cinema'),
                  MainTitleCard(title: 'Tense Dramas'),
                ],
              ),
              scrollNotifier.value == true
                  ? AnimatedContainer(
                      duration: const Duration(milliseconds: 3000),
                      height: 100,
                      width: double.infinity,
                      color: kBlackColor.withOpacity(0.3),
                      child: const Column(
                        children: [
                          AppBarWidget(
                            child: Image(
                              width: 65,
                              image: AssetImage(
                                'assets/images/netflix-logo.png',
                              ),
                            ),
                          ),
                          kHeight15,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'TV Shows',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Movies',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Categories',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  : const SizedBox(),
            ],
          ),
        );
      },
    );
  }
}
