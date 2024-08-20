import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/bloc/downloads_bloc.dart';
import 'package:netflix/core/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/core/strings.dart';
import 'package:netflix/presentation/download/widgets/button_material.dart';
import 'package:netflix/presentation/download/widgets/downloads_image_widget.dart';
import 'package:netflix/presentation/widgets/appbar_widget.dart';

class ScreenDownload extends StatelessWidget {
  ScreenDownload({super.key});

  final _widgetList = [
    const SectionOne(),
    SectionTwo(),
    const SectionThree(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(60),
            child: AppBarWidget(
              child: AppBarWidgetTitle(
                title: 'Downloads',
              ),
            )),
        body: ListView.separated(
            padding: kPadding10,
            itemBuilder: (ctx, index) => _widgetList[index],
            separatorBuilder: (ctx, index) => kHeight30,
            itemCount: _widgetList.length));
  }
}

class AppBarWidgetTitle extends StatelessWidget {
  const AppBarWidgetTitle({
    required this.title,
    super.key,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    );
  }
}

class SectionOne extends StatelessWidget {
  const SectionOne({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(Icons.settings),
        kWidth10,
        Text(
          'Smart Download',
          style: TextStyle(fontSize: 13),
        )
      ],
    );
  }
}

class SectionTwo extends StatelessWidget {
  const SectionTwo({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<DownloadsBloc>(context)
          .add(const DownloadsEvent.getDownloadsImages());
    });

    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          textAlign: TextAlign.center,
          'Introducing Downloads for you',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        kHeight20,
        const Padding(
          padding: kPaddingHorizontal20,
          child: Text(
            textAlign: TextAlign.center,
            'We will download a personalised selection of\nmovies and shows for you, so there\'s\nalways something to watch on your\ndevice',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        BlocBuilder<DownloadsBloc, DownloadsState>(
          builder: (context, state) {
            return SizedBox(
                width: size.width,
                height: size.width,
                child: state.isLoading || state.downloads.isEmpty
                    ? const Center(child: CircularProgressIndicator())
                    : Stack(
                        alignment: Alignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.grey[900],
                            radius: size.width * 0.4,
                          ),
                          //poster1
                          Positioned(
                            left: size.width * 0.08,
                            child: DownloadsImageWidget(
                              image:
                                  '$kImageAppendUrl${state.downloads[7].posterPath}',
                              angle: -0.24,
                              width: 0.37,
                              height: 0.51,
                            ),
                          ),
                          //poster2
                          Positioned(
                            right: size.width * 0.08,
                            child: DownloadsImageWidget(
                              image:
                                  '$kImageAppendUrl${state.downloads[9].posterPath}',
                              angle: 0.24,
                              width: 0.37,
                              height: 0.51,
                            ),
                          ),
                          //poster3
                          Positioned(
                            top: size.width * 0.205,
                            child: DownloadsImageWidget(
                              image:
                                  '$kImageAppendUrl${state.downloads[8].posterPath}',
                              width: 0.38,
                              height: 0.56,
                            ),
                          ),
                        ],
                      ));
          },
        ),
      ],
    );
  }
}

class SectionThree extends StatelessWidget {
  const SectionThree({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: ButtonMaterial(
            text: 'Set Up',
            buttonColor: kButtonColorBlue,
            textColor: kWhiteColor,
          ),
        ),
        kHeight10,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 50),
          child: ButtonMaterial(
            text: 'See what you can download',
            buttonColor: kButtonColorWhite,
            textColor: kBlackColor,
          ),
        )
      ],
    );
  }
}
