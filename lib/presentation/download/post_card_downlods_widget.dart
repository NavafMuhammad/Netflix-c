import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';

class PostCardsDownloadsWidget extends StatelessWidget {
  const PostCardsDownloadsWidget({
    super.key,
    required this.size,
    required this.imageList,
  });

  final Size size;
  final List<String> imageList;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CircleAvatar(
          backgroundColor: Colors.grey[900],
          radius: size.width * 0.4,
        ),
        //poster1
        Positioned(
          left: size.width * 0.09,
          child: Transform.rotate(
            angle: -0.20,
            child: Container(
              width: size.width * 0.36,
              height: size.width * 0.50,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(imageList[0]),
                ),
                borderRadius: kCardRadius6,
              ),
            ),
          ),
        ),
        //poster2
        Positioned(
          right: size.width * 0.09,
          child: Transform.rotate(
            angle: 0.24,
            child: Container(
              width: size.width * 0.36,
              height: size.width * 0.50,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(imageList[1]),
                ),
                borderRadius: kCardRadius6,
              ),
            ),
          ),
        ),
        //poster3
        Container(
          width: size.width * 0.36,
          height: size.width * 0.56,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(imageList[2]),
            ),
            borderRadius: kCardRadius6,
          ),
        ),
      ],
    );
  }
}