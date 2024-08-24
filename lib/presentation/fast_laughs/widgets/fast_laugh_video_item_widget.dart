import 'package:flutter/material.dart';
import 'package:netflix/application/fastLaugh/fast_laugh_bloc.dart';
import 'package:netflix/core/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/core/strings.dart';
import 'package:netflix/domain/downloads/models/downloads_model.dart';
import 'package:netflix/presentation/fast_laughs/widgets/video_player_widget.dart';
import 'package:netflix/presentation/widgets/mute_button.dart';
import 'package:netflix/presentation/widgets/text_icon_button_widget.dart';

class FastLaughVideoItemInheritedWidget extends InheritedWidget {
  final Widget widget;
  final DownloadsModel movieData;

  const FastLaughVideoItemInheritedWidget({
    super.key,
    required this.widget,
    required this.movieData,
  }) : super(child: widget);

  @override
  bool updateShouldNotify(
      covariant FastLaughVideoItemInheritedWidget oldWidget) {
    return oldWidget.movieData != movieData;
  }

  static FastLaughVideoItemInheritedWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<
        FastLaughVideoItemInheritedWidget>();
  }
}

class FastLaughVideoItemWidget extends StatelessWidget {
  const FastLaughVideoItemWidget({
    required this.index,
    super.key,
  });
  final int index;

  @override
  Widget build(BuildContext context) {
    final posterPath =
        FastLaughVideoItemInheritedWidget.of(context)?.movieData.posterPath;
    final videoUrl = dummyVideoUrls[index % dummyVideoUrls.length];
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: AspectRatio(
              aspectRatio: MediaQuery.of(context).size.aspectRatio,
              child: FastLaughVideoPlayer(
                  videoUrl: videoUrl, onStateChanged: (val) {})),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: kPadding10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const MuteButton(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      radius: 33,
                      backgroundImage: posterPath == null
                          ? null
                          : NetworkImage(kImageAppendUrl + posterPath),
                    ),
                    kHeight10,
                    const TextIconButtonWidget(
                      title: 'LOL',
                      icon: Icons.emoji_emotions_outlined,
                      textColor: kWhiteColor,
                    ),
                    const TextIconButtonWidget(
                      title: 'My List',
                      icon: Icons.add,
                      textColor: kWhiteColor,
                    ),
                    const TextIconButtonWidget(
                      title: 'Share',
                      icon: Icons.send_rounded,
                      textColor: kWhiteColor,
                    ),
                    const TextIconButtonWidget(
                      title: 'Play',
                      icon: Icons.play_arrow_rounded,
                      textColor: kWhiteColor,
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
