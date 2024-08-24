import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:netflix/application/new_and_hot/new_and_hot_bloc.dart';
import 'package:netflix/core/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/core/strings.dart';
import 'package:netflix/presentation/download/screen_download.dart';
import 'package:netflix/presentation/widgets/appbar_widget.dart';

import 'widgets/coming_soon_main_item_widget.dart';
import 'widgets/everyones_watching_main_item_widget.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<NewAndHotBloc>(context)
          .add(NewAndHotEvent.getNewAndHotMovieData());
      BlocProvider.of<NewAndHotBloc>(context)
          .add(NewAndHotEvent.getNewAndHotTvData());
    });
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: AppBarWidget(
            child: AppBarWidgetTitle(title: 'New & Hot'),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TabBar(
              dividerHeight: 0,
              labelStyle:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              tabAlignment: TabAlignment.start,
              isScrollable: true,
              labelColor: kBlackColor,
              unselectedLabelColor: kGreyColor,
              indicatorSize: TabBarIndicatorSize.tab,
              indicator: BoxDecoration(
                  color: kWhiteColor,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(30)),
              tabs: const [
                Tab(
                  text: '🍿 Coming Soon',
                ),
                Tab(
                  text: '👀 Everyone\'s Watching',
                ),
              ],
            ),
            kHeight10,
            const Expanded(
              child: TabBarView(
                children: [
                  ComingSoonWidget(),
                  EveryOnesWatchingWidget(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewAndHotBloc, NewAndHotState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state.isError) {
          return const Center(child: Text('Error while fetching data'));
        } else if (state.movieList.isEmpty) {
          return const Center(child: Text('List is Empty'));
        } else {
          return ListView.separated(
            itemBuilder: (ctx, index) {
              final movie = state.movieList[index];
              if (movie.id == null) {
                return const SizedBox();
              }
              String releaseDate = movie.releaseDate!;
              DateTime date = DateTime.parse(releaseDate);
              String month = DateFormat('MMM').format(date).toUpperCase();
              String day = DateFormat('dd').format(date);

              return ComingSoonMainItemInheritedWidget(
                  widget: ComingSoonMainItemWidget(
                      id: movie.id.toString(),
                      movieName: movie.title ?? '',
                      posterPath: "$kImageAppendUrl${movie.backdropPath}",
                      description: movie.overview ?? "",
                      month: month,
                      day: day),
                  newAndHotModel: state.movieList[index]);
            },
            separatorBuilder: (ctx, index) => kHeight20,
            itemCount: state.movieList.length,
          );
        }
      },
    );
  }
}

class EveryOnesWatchingWidget extends StatelessWidget {
  const EveryOnesWatchingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewAndHotBloc, NewAndHotState>(
      builder: (context, state) {
        return ListView.separated(
            itemBuilder: (ctx, index) {
              final tvList = state.tvList[index];
              return EveryonesWatchingMainItemInheritedWidget(
                newAndHotMovieData: state.tvList[index],
                child: EveryonesWatchingMainItemWidget(
                    backdropPath: "$kImageAppendUrl${tvList.backdropPath}",
                    movieName: tvList.name ?? "",
                    description: tvList.overview ?? ""),
              );
            },
            separatorBuilder: (ctx, index) => kHeight15,
            itemCount: state.tvList.length);
      },
    );
  }
}
