import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/core/strings.dart';
import 'package:netflix/domain/downloads/models/downloads_model.dart';
import 'package:netflix/presentation/widgets/main_card_widget.dart';
import 'package:netflix/presentation/widgets/main_title_22.dart';

class MainTitleCard extends StatelessWidget {
  const MainTitleCard({
    required this.title,
    super.key, required this.list, 
  });

  final String title;
  final List<DownloadsModel> list;


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
              children: List.generate(
                  list.length,
                  (index) =>  MainCard(
                        imageUrl: "$kImageAppendUrl${list[index].posterPath}",
                      )),
            ),
          ),
          kHeight15
        ],
      ),
    );
  }
}
