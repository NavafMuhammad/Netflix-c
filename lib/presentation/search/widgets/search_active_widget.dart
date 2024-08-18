import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/widgets/main_title_22.dart';

const url =
    'https://image.tmdb.org/t/p/original/8cdWjvZQUExUUTzyp4t6EDMubfO.jpg';

class SearchActiveEidget extends StatelessWidget {
  const SearchActiveEidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MainTitle22(title: 'Movies & TV'),
        kHeight20,
        Expanded(
          child: GridView.count(
            shrinkWrap: true,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            crossAxisCount: 3,
            childAspectRatio: 1 / 1.4,
            children: List.generate(20, (index) => const MainCard()),
          ),
        )
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          image: const DecorationImage(
              fit: BoxFit.cover, image: NetworkImage(url))),
    );
  }
}
