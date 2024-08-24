import 'package:flutter/material.dart';
import 'package:netflix/domain/new_and_hot/models/new_and_hot_model.dart';

import '../../../core/colors.dart';
import '../../../core/constants.dart';
import '../../widgets/text_icon_button_row.dart';
import '../../widgets/text_icon_button_widget.dart';
import 'new_and_hot_image_widget.dart';

class EveryonesWatchingMainItemInheritedWidget extends InheritedWidget {
  final NewAndHotMovieData newAndHotMovieData;

  const EveryonesWatchingMainItemInheritedWidget({
    super.key,
    required super.child,
    required this.newAndHotMovieData,
  });

  @override
  bool updateShouldNotify(
      covariant EveryonesWatchingMainItemInheritedWidget oldWidget) {
    return oldWidget.newAndHotMovieData != newAndHotMovieData;
  }

  static EveryonesWatchingMainItemInheritedWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<
        EveryonesWatchingMainItemInheritedWidget>();
  }
}

class EveryonesWatchingMainItemWidget extends StatelessWidget {
  final String backdropPath;
  final String movieName;
  final String description;

  const EveryonesWatchingMainItemWidget({
    super.key,
    required this.backdropPath,
    required this.movieName,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          NewandHotImageWidget(
            imageUrl: backdropPath,
          ),
          Padding(
            padding: kPadding10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        movieName,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const TextIconButtonRow(
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
                Text(
                  movieName,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  description,
                  style: const TextStyle(fontSize: 13, color: kGreyColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
