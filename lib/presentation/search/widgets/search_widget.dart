import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/search/search_bloc.dart';
import 'package:netflix/core/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/domain/core/debounce/debounce.dart';

class SearchWidget extends StatelessWidget {
  SearchWidget({super.key});

  final TextEditingController _searchTextEditingController =
      TextEditingController();

  final Debouncer debouce = Debouncer(milliseconds: 1 * 500);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kPadding10,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CupertinoSearchTextField(
            controller: _searchTextEditingController,
            backgroundColor: kGreyColor.withOpacity(0.25),
            prefixIcon: const Icon(CupertinoIcons.search),
            placeholder: 'Search',
            padding: kPadding10,
            suffixIcon: const Icon(
              CupertinoIcons.xmark_circle_fill,
              color: kGreyColor,
              size: 24,
            ),
            onChanged: (value) {
              if (value.isEmpty) {}
              debouce.run(() {
                BlocProvider.of<SearchBloc>(context)
                    .add(SearchEvent.searchMovies(movieQuery: value));
              });
            },
            style: const TextStyle(color: kWhiteColor, fontSize: 17),
          ),
        ],
      ),
    );
  }
}
