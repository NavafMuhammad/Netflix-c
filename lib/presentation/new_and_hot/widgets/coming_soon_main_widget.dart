import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/domain/new_and_hot/models/new_and_hot.dart';
import 'package:netflix/presentation/new_and_hot/widgets/new_and_hot_image_widget.dart';

import '../../../core/colors.dart';
import '../../widgets/text_icon_button_row.dart';
import '../../widgets/text_icon_button_widget.dart';

class ComingSoonMainItemInheritedWidget extends InheritedWidget {
  final Widget widget;
  final NewAndHotMovieData newAndHotModel;

  const ComingSoonMainItemInheritedWidget(
      {super.key, required this.widget, required this.newAndHotModel})
      : super(child: widget);

  @override
  bool updateShouldNotify(
      covariant ComingSoonMainItemInheritedWidget oldWidget) {
    return oldWidget.newAndHotModel != newAndHotModel;
  }

  static ComingSoonMainItemInheritedWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<
        ComingSoonMainItemInheritedWidget>();
  }
}

class ComingSoonMainItemWidget extends StatelessWidget {
  final String id;
  final String movieName;
  final String posterPath;
  final String description;
  final String month;
  final String day;

  const ComingSoonMainItemWidget({
    super.key,
    required this.id,
    required this.movieName,
    required this.posterPath,
    required this.description,
    required this.month,
    required this.day,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 55,
          child: Column(
            children: [
              Text(
                month,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                day,
                style: const TextStyle(
                    fontSize: 35,
                    letterSpacing: 4,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        SizedBox(
          width: size.width - 55,
          child: Column(
            children: [
              NewandHotImageWidget(
                imageUrl: posterPath,
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
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                        ),
                        const TextIconButtonRow(
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
                    Text(
                      movieName,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      description,
                      maxLines: 6,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontSize: 13, color: kGreyColor),
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
