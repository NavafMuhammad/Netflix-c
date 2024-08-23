import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/fastLaugh/fast_laugh_bloc.dart';
import 'package:netflix/presentation/fast_laughs/widgets/fast_laugh_video_item_widget.dart';

class ScreenFastLaugh extends StatelessWidget {
  const ScreenFastLaugh({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<FastLaughBloc>(context)
          .add(const FastLaughEvent.initialize());
    });
    return Center(
      child: BlocBuilder<FastLaughBloc, FastLaughState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(
                strokeWidth: 2,
              ),
            );
          } else if (state.isError) {
            return const Center(
              child: Text('Error while fetching data'),
            );
          } else if (state.movieList.isEmpty) {
            return const Center(
              child: Text('List is Empty'),
            );
          } else {
            return PageView(
              scrollDirection: Axis.vertical,
              children: List.generate(
                  state.movieList.length,
                  (index) => FastLaughVideoItemInheritedWidget(
                      widget: FastLaughVideoItemWidget(index: index),
                      movieData: state.movieList[index])),
            );
          }
        },
      ),
    );
  }
}
