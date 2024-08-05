import 'package:flutter/material.dart';
import 'package:netflix/core/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/download/post_card_downlods_widget.dart';
import 'package:netflix/presentation/widgets/appbar_widget.dart';

class ScreenDownload extends StatelessWidget {
  ScreenDownload({super.key});

  final imageList = [
    'https://image.tmdb.org/t/p/original/w5ZzelrldWr7CmOTSiwagoe5Vl9.jpg',
    'https://image.tmdb.org/t/p/original/bR8ISy1O9XQxqiy0fQFw2BX72RQ.jpg',
    'https://image.tmdb.org/t/p/original/8cdWjvZQUExUUTzyp4t6EDMubfO.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: AppBarWidget(
            title: 'Downloads',
          )),
      body: ListView(
        padding: kPadding10,
        children: [
          const Row(
            children: [
              Icon(Icons.settings),
              kWidth10,
              Text(
                'Smart Download',
                style: TextStyle(fontSize: 16),
              )
            ],
          ),
          kHeight20,
          const Text(
            textAlign: TextAlign.center,
            'Introducing Downloads for you',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          kHeight10,
          const Text(
            textAlign: TextAlign.center,
            'We will download a personalised selection of movies and shows for you, so there is always something to watch on your device',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: size.width,
            height: size.width,
            child: PostCardsDownloadsWidget(
              size: size,
              imageList: imageList,
            ),
          ),
          const ButtonMaterial(
            text: 'Set Up',
            buttonColor: kButtonColorBlue,
            textColor: kWhiteColor,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 44),
            child: ButtonMaterial(
              text: 'See what you can download',
              buttonColor: kButtonColorWhite,
              textColor: kBlackColor,
            ),
          ),
        ],
      ),
    );
  }
}



class ButtonMaterial extends StatelessWidget {
  final String text;
  final Color buttonColor;
  final Color textColor;
  const ButtonMaterial({
    super.key,
    required this.text,
    required this.buttonColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: buttonColor,
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: 19,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
