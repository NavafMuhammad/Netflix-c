import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/bloc/downloads_bloc.dart';
import 'package:netflix/core/constants.dart';

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget({
    super.key,
    required this.image,
    this.angle = 0.0,
    this.width = 0.0,
    this.height = 0.0,
  });

  final String image;
  final double angle;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Transform.rotate(
      angle: angle,
      child: Container(
        width: size.width * width,
        height: size.width * height,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(image),
          ),
          borderRadius: kCardRadius6,
        ),
      ),
    );
  }
}
