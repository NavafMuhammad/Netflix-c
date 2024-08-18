import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/widgets/main_title_22.dart';

const imageUrl =
    'https://image.tmdb.org/t/p/original/d9siHKo0PJ3oHT9xJBwyw8tOetB.jpg';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MainTitle22(
          title: 'Top Searches',
        ),
        kHeight20,
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              
              itemBuilder: (ctx, index) => const TopSearchesItemTile(),
              separatorBuilder: (ctx, index) => kHeight15,
              itemCount: 10),
        )
      ],
    );
  }
}



class TopSearchesItemTile extends StatelessWidget {
  const TopSearchesItemTile({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
          height: size.width * 0.2,
          width: size.width * 0.35,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: const DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(imageUrl))),
        ),
        kWidth10,
        const Expanded(child: Text('Movie Name')),
        const Icon(
          Icons.play_circle_outline_rounded,
          size: 55,
        )
      ],
    );
  }
}
