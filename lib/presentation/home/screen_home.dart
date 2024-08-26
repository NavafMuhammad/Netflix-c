import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/home/home_bloc.dart';
import 'package:netflix/core/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/widgets/landing_background_image_widget.dart';
import 'package:netflix/presentation/widgets/appbar_widget.dart';

ValueNotifier scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HomeBloc>(context)
          .add(const HomeEvent.getTrendingMovie());
      BlocProvider.of<HomeBloc>(context)
          .add(const HomeEvent.getUpComingMovie());
      BlocProvider.of<HomeBloc>(context).add(const HomeEvent.getPopularMovie());
      BlocProvider.of<HomeBloc>(context)
          .add(const HomeEvent.getDiscoverMovie());
      BlocProvider.of<HomeBloc>(context).add(const HomeEvent.getDiscoverTv());
    });
    BlocProvider.of<HomeBloc>(context).add(const HomeEvent.getTrendingMovie());
    return ValueListenableBuilder(
      valueListenable: scrollNotifier,
      builder: (BuildContext context, index, _) {
        return NotificationListener<UserScrollNotification>(
          onNotification: (notification) {
            final ScrollDirection direction = notification.direction;

            print(direction);
            if (direction == ScrollDirection.reverse) {
              scrollNotifier.value = false;
            } else if (direction == ScrollDirection.forward) {
              scrollNotifier.value = true;
            }
            return true;
          },
          child: Stack(
            children: [
              BlocBuilder<HomeBloc, HomeState>(
                builder: (context, state) {
                  if (state.isLoading) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (state.isError) {
                    return const Center(
                        child: Text("Error while fetching data"));
                  } else if (state.getTrendingMovies.isEmpty) {
                    return const Center(child: Text("List is Empty"));
                  } else {
                    return ListView(
                      children: [
                        LandingBackgroundImageWidget(
                          state: state,
                        ),
                        // MainTitleCard(
                        //   title: 'Released in the past years',
                        // ),
                        // MainTitleCard(
                        //   title: "Trending Now",
                        // ),
                        // Top10TitleCard(title: 'Top 10 TV Shows in India Today'),
                        // MainTitleCard(
                        //   title: 'Tense Dramas',
                        // ),
                        // MainTitleCard(
                        //   title: 'South Indian Cinema',
                        // ),
                      ],
                    );
                  }
                },
              ),
              scrollNotifier.value == true
                  ? AnimatedContainer(
                      duration: const Duration(milliseconds: 3000),
                      height: 100,
                      width: double.infinity,
                      color: kBlackColor.withOpacity(0.3),
                      child: const Column(
                        children: [
                          AppBarWidget(
                            child: Image(
                              width: 65,
                              image: AssetImage(
                                'assets/images/netflix-logo.png',
                              ),
                            ),
                          ),
                          kHeight15,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'TV Shows',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Movies',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Categories',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  : const SizedBox(),
            ],
          ),
        );
      },
    );
  }
}
