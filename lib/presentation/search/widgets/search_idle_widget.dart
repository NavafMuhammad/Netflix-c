import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/search/search_bloc.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/core/strings.dart';
import 'package:netflix/presentation/widgets/main_title_22.dart';

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
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const Center(child: CircularProgressIndicator());
              } else if (state.isError) {
                return const Center(child: Text('Error Found'));
              } else if (state.searchIdleList.isEmpty) {
                return const Center(child: Text('List is Empty'));
              }
              return ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (ctx, index) => TopSearchesItemTile(
                        title: state.searchIdleList[index].title ??
                            'Title Not Provided',
                        image:
                            '$kImageAppendUrl${state.searchIdleList[index].posterPath ?? ""}',
                      ),
                  separatorBuilder: (ctx, index) => kHeight15,
                  itemCount: state.searchIdleList.length);
            },
          ),
        )
      ],
    );
  }
}

class TopSearchesItemTile extends StatelessWidget {
  const TopSearchesItemTile(
      {super.key, required this.title, required this.image});

  final String title;
  final String image;

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
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(image))),
        ),
        kWidth10,
        Expanded(
            child: Text(
          title,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        )),
        const Icon(
          Icons.play_circle_outline_rounded,
          size: 55,
        )
      ],
    );
  }
}
